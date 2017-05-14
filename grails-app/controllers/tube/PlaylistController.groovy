package tube



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.SpringSecurityService;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlaylistController {
	
	SpringSecurityService springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Playlist.list(params), model:[playlistInstanceCount: Playlist.count()]
    }

    def show(Playlist playlistInstance) {
		def auth = false
		if(springSecurityService.currentUser){
			def per = springSecurityService.currentUser.id
			if(playlistInstance.person.id == per){
				auth = true
			}
		}
		[auth: auth]
		respond playlistInstance, model:[auth:auth]
    }
	
	def keszit(){
		def per = springSecurityService.currentUser
		def pl = new Playlist(title: params.title,length: 0,video: params.video)
		params.video.each {
			pl.length += Video.get(it).lenght
		}
		pl.person = per
		pl.save flush: true
		redirect(uri:"/playlist/show/" + pl.id)
	}
	
	
    def create() {
		def per = springSecurityService.currentUser
        respond new Playlist(person : per, video: params.video, title: params.title)
		
    }

    @Transactional
    def save(Playlist playlistInstance) {
        if (playlistInstance == null) {
            notFound()
            return
        }

        if (playlistInstance.hasErrors()) {
            respond playlistInstance.errors, view:'create'
			println params
            return
        }
		
        playlistInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'playlist.label', default: 'Playlist'), playlistInstance.id])
                redirect playlistInstance
            }
            '*' { respond playlistInstance, [status: CREATED] }
        }
    }

    def edit(Playlist playlistInstance) {
        respond playlistInstance
    }

    @Transactional
    def update(Playlist playlistInstance) {
        if (playlistInstance == null) {
            notFound()
            return
        }

        if (playlistInstance.hasErrors()) {
            respond playlistInstance.errors, view:'edit'
            return
        }

        playlistInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Playlist.label', default: 'Playlist'), playlistInstance.id])
                redirect playlistInstance
            }
            '*'{ respond playlistInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Playlist playlistInstance) {

        if (playlistInstance == null) {
            notFound()
            return
        }

        playlistInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Playlist.label', default: 'Playlist'), playlistInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'playlist.label', default: 'Playlist'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
