package demp

import grails.testing.web.taglib.TagLibUnitTest
import org.springframework.context.MessageSource
import spock.lang.Specification

class LocaleNavbarTaglibSpec extends Specification implements TagLibUnitTest<LocaleNavbarTagLib> {

    void "LocaleNavbarTagLib method localeDropdown renders"() {
        given:
        def uri = '/books'
        def languages = [[code: 'gr', msg: 'Greek'],
                         [code: 'gb', msg: 'English'],
                         [code: 'de', msg: 'German']]

        when:
        def expected = ''
        languages.each { Map m ->
            expected += "<li><a href='${uri}?lang=${m.code}'>${m.msg}</a></li>"
        }
        tagLib.languages = languages.collect { it.code }
        tagLib.messageSource = Stub(MessageSource) {
            getMessage('language.gr', [] as Object[], null, _) >> languages.find { it.code == 'gr'}.msg
            getMessage('language.gb', [] as Object[], null, _) >> languages.find { it.code == 'gb'}.msg
            getMessage('language.de', [] as Object[], null, _) >> languages.find { it.code == 'de'}.msg
        }
        def result = applyTemplate('<navBar:localeDropdownListItems uri="/books"/>')

        then:
        cleanUpString(result) == cleanUpString(expected)
    }

    String cleanUpString(String str) {
        str.replaceAll('\n','').replaceAll(' ', '')
    }
}
