package grailsmywebside

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class LoginService {

    def dataSource

    def login(params) {
        def sql = new Sql(dataSource)
        try {
            def credentials = sql.firstRow("""SELECT *
                                             FROM users
                                             WHERE login=${params.login} AND password=${params.password}""")
            return credentials
        }

        catch (Exception e) {
            e.printStackTrace()
            return []
        }

    }
}
