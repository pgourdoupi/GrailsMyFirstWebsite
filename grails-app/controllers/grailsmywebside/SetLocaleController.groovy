package grailsmywebside

class SetLocaleController {

    def index() {
        redirect(uri:params.theURL)
    }
}