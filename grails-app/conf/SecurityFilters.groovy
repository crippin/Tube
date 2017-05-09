import grails.plugin.springsecurity.SpringSecurityService;
import tube.Person
class SecurityFilters {
	SpringSecurityService springSecurityService
	def filters = {
		populateCurrentUser(controller: '*', action: '*') {
			before = {
				 request.user = springSecurityService.currentUser
			}
		}
	}
}

