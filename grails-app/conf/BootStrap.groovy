import tube.*;

class BootStrap {
	def authenticateService
	
    def init = { servletContext ->
		
			def userRole = new Authority(authority: 'USER_ROLE').save(flush: true)
			def mi = new User(username: 'mi', realname: 'Miklós István', 
				password: 'pw',
				enabled: true).save(flush: true)
			UserAuthority.create(mi, userRole, true)
			assert User.count() == 1
			assert Authority.count() == 1
			assert UserAuthority.count() == 1
		   
    }
    def destroy = {
    }
}
