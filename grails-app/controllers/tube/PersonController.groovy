package tube



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.SpringSecurityService;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonController {

	SpringSecurityService springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Person.list(params), model:[personInstanceCount: Person.count()]
    }

    def show(Person personInstance) {
		def auth = false
		if(springSecurityService.currentUser){
			def per = springSecurityService.currentUser.id
			if(personInstance.id == per){
				auth = true
			}
		}
		[auth: auth]
        respond personInstance, model:[auth:auth]
    }

    def create() {
        respond new Person(params)
    }

	
	def halloffame(){
		
		def vUser
		int vNum = 0
		def cUser
		def cNum = 0
		for(Person i : Person.list()){
			if(vNum < i.video.size()){
				vNum = i.video.size()
				vUser = i
			}
		}
		for(Person i : Person.list()){
			if(cNum < i.comment.size()){
				cNum = i.comment.size()
				cUser = i
			}
		}
		respond vUser,model:[vUser: vUser, vNum: vNum,cUser: cUser,cNum:cNum]
	}
    @Transactional
    def save(Person personInstance) {
        if (personInstance == null) {
            notFound()
            return
        }

        if (personInstance.hasErrors()) {
            respond personInstance.errors, view:'create'
            return
        }

        personInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'person.label', default: 'Person'), personInstance.id])
                redirect personInstance
            }
            '*' { respond personInstance, [status: CREATED] }
        }
    }

    def edit(Person personInstance) {
        respond personInstance
    }

    @Transactional
    def update(Person personInstance) {
        if (personInstance == null) {
            notFound()
            return
        }

        if (personInstance.hasErrors()) {
            respond personInstance.errors, view:'edit'
            return
        }

        personInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Person.label', default: 'Person'), personInstance.id])
                redirect personInstance
            }
            '*'{ respond personInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Person personInstance) {

        if (personInstance == null) {
            notFound()
            return
        }

        personInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Person.label', default: 'Person'), personInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
