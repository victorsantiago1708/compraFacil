<!doctype html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
</head>

<body>
<form method="POST" action="${resource(file: '/login/authenticate')}" class="form-signin">
    <h2 class="form-signin-heading text-center">Login</h2>

    <input type="text" class="form-control" name="username" placeholder="Username"/>
    <input type="password" class="form-control" name="password" placeholder="Password"/>

    <label class="checkbox text-center">
        <input type="checkbox" value="remember-me" id="rememberMe" name="remember-me"> Remember me
    </label>

    <button class="btn btn-lg btn-default btn-block" type="submit">Login</button>
</form>
</body>
</html>