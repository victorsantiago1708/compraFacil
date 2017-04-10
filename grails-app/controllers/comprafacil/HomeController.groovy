package comprafacil

import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured

@Secured('ROLE_ADMIN')
class HomeController {
    SpringSecurityService springSecurityService

    def index() {
        def model = [:]
        Usuario user = Usuario.read(springSecurityService.currentUser.id)
        model.put("user", user)
        render(view:"index", model: model)
    }
}
