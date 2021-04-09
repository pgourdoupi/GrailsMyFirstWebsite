package demp

import geb.spock.GebSpec
import grails.testing.mixin.integration.Integration

@Integration
class ChangeLocaleSpec extends GebSpec {

    def "change locale"() {
        when:
        go '/?lang=gb'

        then:
        $('h1').text() == 'Welcome!'

        when:
        go '/?lang=de'

        then:
        $('h1').text() == 'Willkommen!'
    }
}
