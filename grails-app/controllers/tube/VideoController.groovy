package tube



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VideoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Video.list(params), model:[videoInstanceCount: Video.count()]
    }

	def uploadFile(){
		def fileData =params.file
		File file=new File(params.file.name)
		  if(file.exists())
			 fileData.transferTo(file)
		  else{
			 file.createNewFile()
			 fileData.transferTo(file)
		  }
		  render "Uploaded Successfully"
	 }
}
