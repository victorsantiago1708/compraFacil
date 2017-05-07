package comprafacil

import grails.plugin.springsecurity.SpringSecurityService

class CrudController {
    SpringSecurityService springSecurityService

    def index(){

        list()
    }

    def list(){
        def model = beforeList()
        if(entity){
            def result = entity.createCriteria().list(query)
            def entityList = result
            def entityListCount = entityList?.size()

            model.put("entityList", entityList)
            model.put("entityListCount", entityListCount)
            println (model)
            render(view: 'index', model: model)
        }


    }

    def editaModelDoNovo( def model ){

    }

    def editaModelDoList( def model ){

    }

    def beforeList (){

    }

    def novo(){
        render template: 'form'
    }
}
