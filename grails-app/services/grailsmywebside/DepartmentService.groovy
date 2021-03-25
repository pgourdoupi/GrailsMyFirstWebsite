package grailsmywebside

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class DepartmentService {

   def dataSource
    def getAllDepartments() {
        def sql = new Sql(dataSource)
        try {
            return sql.rows("""SELECT * 
                               FROM department""")

        }
        catch (Exception e) {
            e.printStackTrace()
        }
    }

    def createDepartment(params) {
        def sql = new Sql(dataSource)
        try {
            return sql.execute("""INSERT
                                  INTO department (department_name)
                                  VALUES (${params.department_name})""")
        }
        catch (Exception e) {
            e.printStackTrace()
        }
    }

    def updateDepartment(params) {
        def department_id = params.department_id.toInteger()
        def sql = new Sql(dataSource)
        try {
            return sql.execute("""UPDATE department
                                  SET department_name=$params.department_name
                                  WHERE department_id=$department_id""")
        }
        catch (Exception e) {
            e.printStackTrace()

        }
    }

    def deleteDepartment(params) {
        def department_id = params.department_id.toInteger()
        def sql = new Sql(dataSource)
        try {
            return sql.execute("""DELETE FROM department 
                                  WHERE department_id=${department_id}""")

        }
        catch (Exception e) {
            e.printStackTrace()
        }
    }
}
