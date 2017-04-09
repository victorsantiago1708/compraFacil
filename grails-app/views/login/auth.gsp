<html>
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><g:message code='springSecurity.login.title'/></title>

</head>

<body>
<div class="container">
    <div class="row" id="login" style="position: relative; left: 22%;">


        <g:if test='${flash.message}'>
            <blockquote>${flash.message}</blockquote>
        </g:if>

        <div class="col s12">
            <div class="row">
                <div class="col s4">
                    <h3><g:message code='login.login.label'/></h3>
                </div>
            </div>
            <form id="loginForm" class="cssform" autocomplete="off">

                <div class="row">
                    <div class="input-field col s5">
                        <i class="material-icons prefix">account_circle</i>
                        <label for="username" data-error="wrong" data-success="right"><g:message code='springSecurity.login.username.label'/>:</label>
                        <input type="text" class="validate" id="username" name="${usernameParameter ?: 'username'}" />
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s5">
                        <i class="material-icons prefix">lock_outline</i>
                        <label for="password" data-error="Incorreto" data-success="Certo"><g:message code='springSecurity.login.password.label'/>:</label>
                        <input type="password" class="validate" name="${passwordParameter ?: 'password'}" id="password"/>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s5">
                        <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                        <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s5">
                        <button class="btn waves-effect waves-light" type="submit" name="logar" id="logar"><g:message code="login.logar.label"/>
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>
