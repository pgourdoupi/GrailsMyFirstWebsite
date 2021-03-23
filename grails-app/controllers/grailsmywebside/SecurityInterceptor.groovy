package grailsmywebside

class SecurityInterceptor {

    SecurityInterceptor(){
        matchAll().excludes(controller:"login")
    }

    boolean before() {
        if (session["user"]) {
            return true
        }
        else {
            redirect(controller: "login", action: "login")
            return false
        }
    }
}

