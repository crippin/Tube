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
		def comedyList = getCategoryList("Comedy")
		def autoList = getCategoryList("Autos & Vehicles")
		def educationList = getCategoryList("Education")
		def filmList = getCategoryList("Film & Animation")
		def gameList = getCategoryList("Gaming")
		def howToList = getCategoryList("Howto & Style")
		def newsList = getCategoryList("News & Politics")
		def nonprofitsList = getCategoryList("Nonprofits & Activism")
		def petList = getCategoryList("Pets & Animals")
		def blogList = getCategoryList("People & Blogs")
		def scienceList = getCategoryList("Science & Technology")
		def sportsList = getCategoryList("Sports")
		def travelList = getCategoryList("Travel & Events")
		
		[comedyList: comedyList, autoList: autoList, educationList: educationList,filmList: filmList,
			gameList:gameList,howToList: howToList,newsList: newsList,nonprofitsList:nonprofitsList,
			petList: petList,blogList: blogList,scienceList: scienceList,sportsList: sportsList,
			travelList: travelList]
		
        respond Video.list(params).reverse(), model:[videoInstanceCount: Video.count(),comedyList: comedyList, autoList: autoList, educationList: educationList,filmList: filmList,
			gameList:gameList,howToList: howToList,newsList: newsList,nonprofitsList:nonprofitsList,
			petList: petList,blogList: blogList,scienceList: scienceList,sportsList: sportsList,
			travelList: travelList]
    }

	def uploadFile(){ //ha a /web-app/videoFiles mappa nem létezik, akkor nem akar mûködni
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
	
	def show(Video videoInstance) {
		videoInstance.click += 1
		videoInstance.save(flush: true)
		def commentList = currentVideoComments(videoInstance)
		def sameCategoryList = sameCategory(videoInstance)
		[ commentList: commentList, sameCategoryList: sameCategoryList]
		respond videoInstance, [model: [videoInstance: videoInstance,commentList: commentList, sameCategoryList: sameCategoryList]]
	}
	
	
	def toplist(){
		String day = new Date().format("dd");
		String month = new Date().format("MM");
		def videoListTopDay = Video.executeQuery("from Video where TO_CHAR(UPLOAD_DATE, 'DD') like ? ORDER BY click DESC",[day], [max: 6])
		def videoListTopMonth = Video.executeQuery("from Video where TO_CHAR(UPLOAD_DATE, 'MM') like ? ORDER BY click DESC",[month], [max: 6])
		[videoListTopDay: videoListTopDay,
		videoListTopMonth: videoListTopMonth] 
		
		respond videoListTopMonth, model:[videoInstanceCount: videoListTopMonth.size() + videoListTopDay.size(),
			videoListTopDay: videoListTopDay,
			videoListTopMonth: videoListTopMonth]
	}
	
	def category(){
		def category = params.id
		String day = new Date().format("dd");
		String month = new Date().format("MM");
		def videoListAllTimeTop = Video.executeQuery("from Video where category = ? ORDER BY click DESC",[category], [max: 3])
		def videoListRecent = Video.executeQuery("from Video where category = ? ORDER BY UPLOAD_DATE DESC",[category])
		[videoListAllTimeTop: videoListAllTimeTop,
		videoListRecent: videoListRecent]
		
		respond videoListAllTimeTop, model:[videoInstanceCount: videoListAllTimeTop.size() + videoListRecent.size(),
			videoListAllTimeTop: videoListAllTimeTop,
			videoListRecent: videoListRecent]
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
	
	private getCategoryList(String category){
		def getCategoryList = Video.executeQuery("from Video where category = ?",[category])
		getCategoryList.sort{new Random()}
		
		getCategoryList
	}
}
