package grailsmywebside

class SetLocaleController {

    def index() {
        def locale = session["locale"]
        def url =request.url
        //def locale = new Locale()
        session.locale = params.locale
        redirect(request.forwardURI)
    }
}