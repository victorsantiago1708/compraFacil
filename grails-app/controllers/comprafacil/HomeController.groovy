package comprafacil
import org.springframework.security.access.annotation.Secured

@Secured('ROLE_ADMIN')
class HomeController {

    def index() {
        render(view:"index")
    }
}
