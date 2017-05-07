package comprafacil

class ProdutoController extends CrudController{
    def entity = Produto
    def query = {
        if(params.nome){
            ilike('nome',params.nome+ "%")
        }
        if(params.descricao){
            ilike('descricao',params.descricao+ "%")
        }
        if(params.fabricante){
            eq('fabricante',Fabricante.get(params.fabricante))
        }
    }

    def beforeList () {
        def model=[:]
        List<Fabricante> fabricantes = Fabricante.findAll()
        model.put("fabricantes",fabricantes)

        return model
    }

    def editaModelDoNovo( def model ){
        List<Fabricante> fabricantes = Fabricante.findAll()
        model.put("fabricantes",fabricantes)
        model = editaModelPadrao(model)
        return model
    }

}
