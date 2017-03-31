import tube.*;

class BootStrap {
	def authenticateService
	
    def init = { servletContext ->
		
			def userRole = new Authority(authority: 'USER_ROLE').save(flush: true)
			def mi = new Person(username: 'mi', realname: 'Miklós István', 
				password: 'pw',
				enabled: true).save(flush: true)
			PersonAuthority.create(mi, userRole, true)
			assert Person.count() == 1
			assert Authority.count() == 1
			assert PersonAuthority.count() == 1

    }
    def destroy = {
    }
}
