package grailsmywebside

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //"/viewBooks" (redirect: '/books/list')
        "/"(controller: "Login", action: "login")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
