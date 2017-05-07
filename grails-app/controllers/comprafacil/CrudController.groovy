package comprafacil

import grails.plugin.springsecurity.SpringSecurityService
import org.h2.mvstore.db.TransactionStore

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

    def editaModelDoEdit( def model ){
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

    def save(){
        def entityInstance = getEntityInstance()
        def model = [:]

        if(entityInstance.validate() && entityInstance.getErrorCount() == 0){
            entityInstance.save(failOnError: true)
        }else{
            flash.message = message(code: 'default.cantSave.message')
            println("error")
        }

        model.put('entityInstance', entity.newInstance())

        render view: "form", model: model
    }
}
