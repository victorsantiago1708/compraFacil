<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="font-awesome-4.7.0/css/font-awesome.css"/>
    <asset:stylesheet src="materialize/css/materialize.css"/>
    <g:layoutHead/>
</head>
<body>
    <g:layoutBody/>
    <div class="load" style="display: none">
        <div class="preloader-wrapper big active">
            <div class="spinner-layer spinner-blue-only">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div><div class="gap-patch">
                <div class="circle"></div>
            </div><div class="circle-clipper right">
                <div class="circle"></div>
            </div>
            </div>
        </div>
    </div>
    <div id="spinner" class="spinner" >

        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
    <asset:javascript src="application.js"/>
    <asset:javascript src="materialize/js/materialize.js"/>
    <script>
        $(document).ready(function() {
            Materialize.updateTextFields();
        });
    </script>
</body>
</html>
