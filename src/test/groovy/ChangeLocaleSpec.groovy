import geb.spock.GebSpec
import grails.testing.mixin.integration.Integration

@Integration
class ChangeLocaleSpec extends GebSpec {

    def "change locale"() {
        when:
        go '/?lang=gr'

        then:
        $('h1').text() == 'Καλώς Όρίσατε'

        when:
        go '/?lang=en'

        then:
        $('h1').text() == 'Welcome'
    }
}
