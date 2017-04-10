<!doctype html>
<html lang="pt">
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <title>CompraFácil</title>
</head>

<body>
    <h1>Bem-vindo!</h1><h3> ${user?.username}</h3>
    <g:form controller="logout">
        <g:submitButton name="logout" value="Logout" />
    </g:form>
</body>
</html>