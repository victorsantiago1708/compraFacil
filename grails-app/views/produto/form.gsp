<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="layout" content="main"/>
</head>

<body>
    <g:render template="/layouts/menuTopo"/>
    <div class="container" id="conteudo">
        <g:form controller="produto" action="save">
            <div class="row nopad" style="border-bottom: 1px solid #ccc;">
                <div class="col s6">
                    <h1>
                        <g:message code="default.novo.label"/> <span >|</span> <g:message code="produto.label"/>
                    </h1>
                </div>
                <div class="col s6 center" style="margin-top: 51px">
                    <a style="" class="waves-effect waves-light btn blue lighten-1" href="${createLink(controller: 'produto', action: 'index')}"><g:message code="default.voltar.label"/></a>
                    <button style="" class="btn waves-effect waves-light blue accent-3" type="submit" name="submit">
                        <g:message code="default.save.label"/>
                        <i class="material-icons right">check</i>
                    </button>
                </div>
            </div>
            <div class="row nopad">
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
            </div>
        </g:form>
    </div>
</body>
</html>
