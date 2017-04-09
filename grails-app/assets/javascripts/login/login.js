/**
 * Created by Administrador on 09/04/2017.
 */
var logar;

window.onload = function(){
    $(document).delegate("#logar","click", logar);
};

logar = function(){
    if( $("#username").val() != "" && $("#password").val() != "" ){
        var url = '/login/authenticate';
        $.ajax({
            url: url,
            data: {username: $("#username").val(), password: $("#password").val(), 'remember-me': $("#remember_me").val()},
            type: "POST",
            success: function(){

            },
            error: function(){

            }
        })
    }
};