package comprafacil

import grails.plugin.springsecurity.SpringSecurityService

class CrudController{
    SpringSecurityService springSecurityService
    CrudService crudService

    def index(){
        list()
    }

    def getEntityInstance(){
        if(params.id){
            return entity.get( params.id )
        }else{
            def entityInstance = entity.newInstance(params)
            return entityInstance
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

    def editaModelDoEdit( def model ){
        model = editaModelPadrao(model)
        return model
    }

    def editaModelDoSave( def model ){
        model = editaModelPadrao(model)
        return model
    }

    def beforeList (){

    }

    def novo(){
        def model = [:]
        def entityInstance = entity.newInstance()
        model.put('entityInstance', entityInstance)
        model = editaModelDoNovo(model)
        render view: 'form', model: model
    }

    def edit(){
        def model = [:]
        def entityInstance = entity.get(params.id)
        model.put('entityInstance', entityInstance)
        model = editaModelDoEdit(model)
        render view: "form", model: model
    }

    def delete(){
        def entityInstance = getEntityInstance()
        try {
            entityInstance.delete(flush: true)
            println("teste")
            flash.message = message(code:'default.deleteSuccess.message')
        }catch (Exception e){
            flash.message = message(code:'default.cantDelete.message')
        }
        redirect(controller: entity, action: "list")
    }

    def save(){
        def entityInstance = getEntityInstance()
        def model = [:]

        try {
            if(entityInstance.validate()){
                if(entityInstance.save(failOnError: true, flush:true)){
                    flash.message = message(code: 'default.saveSuccess.message')
                }
            }else{
                flash.message = message(code: 'default.cantSave.message')
                println("error")
            }
        }catch (Exception e){
            flash.message = message(code: 'default.cantSave.message')
        }

        redirect(controller: entity, action: "novo")
    }
}
