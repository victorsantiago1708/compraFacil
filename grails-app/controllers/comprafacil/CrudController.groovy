package comprafacil

import grails.plugin.springsecurity.SpringSecurityService

class CrudController {
    SpringSecurityService springSecurityService

    def index(){
        def model = [:]
        Usuario user = Usuario.read(springSecurityService.currentUser.id)
        model.put("user", user)
        model.put("tipoUsuario", user?.authorities?.authority)
        list(model)
    }

    def list(model){
        if(entity){
            def result = entity.createCriteria().list(query)
            def entityList = result
            def entityListCount = entityList?.size()

            model.put("entityList", entityList)
            model.put("entityListCount", entityListCount)

            render(view: 'index', model: model)
        }


    }
}
