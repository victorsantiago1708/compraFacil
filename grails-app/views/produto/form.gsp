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
        <div class="row nopad" style="border-bottom: 1px solid #ccc;">
            <div class="col s9">
                <h1>
                    <g:message code="default.novo.label"/> <span >|</span> <g:message code="produto.label"/>
                </h1>
            </div>
            <div class="col s3 right-align">
                <a style="margin-top:25%;" class="waves-effect waves-light btn blue lighten-1" href="${createLink(controller: 'produto', action: 'index')}"><g:message code="default.voltar.label"/></a>
            </div>
        </div>
    </div>
</body>
</html>
