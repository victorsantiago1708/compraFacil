<div class="row" style="border-bottom: 1px solid #ccc;">
    <div class="col s12">
        <h1>
            <g:message code="default.busca.label"/> <span >|</span> <g:message code="produto.label"/>
        </h1>
    </div>
</div>
<g:form name="myForm" url="[action:'list',controller:'produto']" class="col s12">
    <div class="row">
        <div class="input-field col s3">
            <input id="nome" name="nome" type="text" >
            <label for="nome"><g:message code="produto.nome.label"/> </label>
        </div>
        <div class="input-field col s3">
            <input id="descricao" name="descricao" type="text" >
            <label for="descricao"><g:message code="produto.descricao.label"/> </label>
        </div>
        <div class="input-field col s3 m3">
            <select name="fabricante" id="fabricante" class="icons">
                <option value="" disabled selected><g:message code="default.selecione.label"/></option>
                <g:each in="${fabricantes}" var="fabricante">
                    <option value="${fabricante?.id}" data-icon="images/sample-1.jpg" class="circle">${fabricante?.nome}</option>
                </g:each>
            </select>
            <label><g:message code="produto.fabricante.label"/> </label>
        </div>
        <div class="col s3">
            <label class="labelSpace"> &nbsp; </label>
            <button class="btn waves-effect waves-light" type="submit" name="action">Pesquisar
                <i class="material-icons right">search</i>
            </button>
        </div>
    </div>
</g:form>