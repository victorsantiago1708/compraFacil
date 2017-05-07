package comprafacil

import grails.plugin.springsecurity.SpringSecurityService

class CrudController {
    SpringSecurityService springSecurityService

    def index(){
        list()
    }

    def getEntityInstance(){
        if(params.id){
            return entity.get( params.id )
        }else{
            return entity.newInstance()
        }
    }

    def list(){
        def model = beforeList()
        if(entity){
            def result = entity.createCriteria().list(query)
            def entityList = result
            def entityListCount = entityList?.size()

            model.put("entityList", entityList)
            model.put("entityListCount", entityListCount)
            model = editaModelDoList(model)
            render(view: 'index', model: model)
        }


    }

    def editaModelPadrao( def model ){
        Usuario user = Usuario.read(springSecurityService.currentUser.id)
        model.put("user", user)
        model.put("tipoUsuario", user?.authorities?.authority)

        return model
    }

    def editaModelDoNovo( def model ){
        model = editaModelPadrao(model)
        return model
    }

    def editaModelDoList( def model ){
        model = editaModelPadrao(model)
        return model
    }

    def beforeList (){

    }

    def novo(){
        def model = [:]
        def entityInstance = getEntityInstance()
        model.put('entityInstance', entityInstance)
        model = editaModelDoNovo(model)
        render view: 'form', model: model
    }
}
