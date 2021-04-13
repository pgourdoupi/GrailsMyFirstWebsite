package grailsmywebside

import grails.config.Config
import grails.core.support.GrailsConfigurationAware
import org.springframework.context.MessageSource
import org.springframework.context.i18n.LocaleContextHolder
import org.springframework.web.servlet.support.RequestContextUtils

class LocaleController {

    def index() {
        setLocaleForCountry() //this method tells where the locale is coming form
    }

    def setLocaleForCountry(){
        println("----------session-----------" + session['language'])

    String localee = RequestContextUtils.getLocale(request) //get locale from th request
    if (!session['language']){
        if (localee.lastIndexOf("_")){
            String[] firstLocale = localee?.split("_")
            localee = firstLocale[0]
        }
        if (localee.("gr")){
            session['lang'] = 'gr'
        }
        else if (localee.("en")){
            session['lang'] = 'en'
        }
        else{
            session['lang'] = 'de'
        }
    }
        println("----------session-----------" + session['language'])
    }

    MessageSource messageSource

    List<String> languages

    void setConfiguration(Config co) {
        languages = co.getProperty('guide.languages', List)
    }

    def localeDropdownListItems = { args ->
        String uri = args.uri

        for (String lang : languages) {
            String languageCode = "language.$lang"

            def locale = LocaleContextHolder.locale
            def msg = messageSource.getMessage(languageCode, [] as Object[], null, locale)
            out << "<li><a href='${uri}?lang=${lang}'>${msg}</a></li>"
        }
    }

    def setLanguage = {
        //session ["languages"] = params.languages
        String lang = params.lang
        lang = lang.toLowerCase()
        session['Language'] =lang
        //redirect(action:'index')
        //redirect(controller:"Login", action:"login")
        redirect(request.forwardURI)
        //redirect(url: request.getHeader("Referer"))
    }

    def changeLocale(){
        redirect(request.forwardURI)
    }
}

