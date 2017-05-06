package comprafacil

import grails.plugin.springsecurity.SpringSecurityService

class CrudController {
    SpringSecurityService springSecurityService

    def index(){
        def model = [:]
        Usuario user = Usuario.read(springSecurityService.currentUser.id)
        model.put("user", user)
        model.put("tipoUsuario", user?.authorities?.authority)
        list()
    }

    def list(){
        if(entity){
            println(Produto.findAll())
//            def result = entity.createCriteria().list() {query}
//            println(result)
        }
    }
}
