package tube



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VideoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def upload() {
		
	}
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Video.list(params), model:[videoInstanceCount: Video.count()]
    }

	def uploadFile(){ //ha a /web-app/videoFiles mappa nem létezik, akkor nem akar mûködni
		def fileData = params.file
		def webrootDir = servletContext.getRealPath("/")
		File file=new File(webrootDir, "videoFiles/" + fileData.getProperties().originalFilename)  
		  if(file.exists())
			 fileData.transferTo(file)
		  else{
			 file.createNewFile()
			 fileData.transferTo(file)
		  }
		  render "Uploaded Successfully"
	 }
	
	def play(){
		
	}
}
