package grailsmywebside

class LoginController {

    def loginService
    def login() {
    }

    def doLogin(){
        def userFound = loginService.login(params)
         if(userFound){
            session ["user"] = params.login
            redirect (controller: "department", action:"showDepartment")
        }
        else{
             flash.msg = g.message (code:"message.wrong_credentials")
             redirect (action: "login")
            return false
        }

    }
    def logout() {
        session.invalidate()
        redirect(action: 'Login')
    }
}