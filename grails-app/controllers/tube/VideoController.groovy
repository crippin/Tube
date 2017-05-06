package tube



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional
import tube.Video

@Transactional(readOnly = true)
class VideoController {
	SpringSecurityService springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def upload() {
		
	}
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Video.list(params), model:[videoInstanceCount: Video.count()]
    }

	def uploadFile(){ //ha a /web-app/videoFiles mappa nem l�tezik, akkor nem akar m�k�dni
				def fileData = params.file
		def fileTitle = params.title
		def fileCategory = params.category
		def fileDescription = params.description
		def fileDuration = params.duration
		def fileUploader = springSecurityService.currentUser
		//def fileUploader = persons.params.uploader
		def webrootDir = servletContext.getRealPath("/")
		Video video = new Video(fileTitle.toString(), fileUploader , fileData.getProperties().originalFilename.toString(), fileCategory.toString(), fileDescription.toString(), fileDuration).save flush: true
		def name = Video.find("from Video order by id desc").id
		//File file=new File(webrootDir, "videoFiles/" + fileData.getProperties().originalFilename)
		File file=new File(webrootDir, "videoFiles/" + name + ".mp4")
		if(file.exists())
			fileData.transferTo(file)

		else{
			file.createNewFile()
			fileData.transferTo(file)
		}
		render name
	}
	
	def comment(Video videoInstance){
		def per = springSecurityService.currentUser
		println per.id
		def message = new Message(message: params.message,person: per, video: videoInstance).save failOnError: true
		def commentList = currentVideoComments(videoInstance)
		redirect(uri:"/video/show/" + videoInstance.id)
	}
	
	def play(){
		
	}
	
	def show(Video videoInstance) {
		videoInstance.click += 1
		videoInstance.save(flush: true)
		def commentList = currentVideoComments(videoInstance)
		def sameCategoryList = sameCategory(videoInstance)
		[ commentList: commentList, sameCategoryList: sameCategoryList]
		respond videoInstance, [model: [videoInstance: videoInstance,commentList: commentList, sameCategoryList: sameCategoryList]]
	}
	
	private currentVideoComments(Video videoInstance) {
		def query = Message.whereAny {
			video { id == videoInstance.id }
		}.order 'dateCreated', 'asc'
		def comments = query.list()
		
		comments
	}
	
	private sameCategory(Video videoInstance){
		def sameCategoryList = Video.executeQuery("from Video where category = ?",[videoInstance.category])
		sameCategoryList.remove(videoInstance)
		sameCategoryList.sort{new Random()}
		sameCategoryList
	}
}
