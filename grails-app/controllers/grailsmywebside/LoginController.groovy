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
            return true
        }
        else{
            flash.message = "Τα στοιχεία σας δεν είναι σωστά. Παρακαλώ προσπαθήστε ξανά!"
            redirect (action: "login")
            return false
        }

    }
    def logout() {
        session.invalidate()
        redirect(action: 'Login')
    }
}