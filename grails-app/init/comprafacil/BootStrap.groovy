package comprafacil

class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveByAuthority('ROLE_ADMIN')
        def user = Usuario.findOrSaveByUsernameAndPassword('admin', 'admin')

        if(!user.authorities.contains(adminRole)){
            UsuarioRole.create(user, adminRole)
        }
    }
    def destroy = {
    }
}
