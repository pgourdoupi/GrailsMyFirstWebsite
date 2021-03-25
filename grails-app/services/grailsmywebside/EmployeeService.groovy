package grailsmywebside

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
import java.sql.Date

@Transactional
class EmployeeService {

    def dataSource

    def getAllEmployees() {
        def sql = new Sql(dataSource)
        try {
            return sql.rows("""SELECT *,                                 
                                   to_char(dob, 'DD-MM-YYYY') as dob    
                                  FROM employees,department
                                  WHERE department.department_id = employees.department_id""")



        }
        catch (Exception e) {
            e.printStackTrace()
        }

    }

    def createEmployee(params) {
        def temp = params.dob.split("-")
        def new_date = temp[2] + "-" + temp[1] + "-" + temp[0]
        def dob = Date.valueOf(new_date)
        def sql = new Sql(dataSource)
        try{
            return sql.execute("""INSERT 
                                  INTO employees(first_name,last_name,afm,dob) 
                                  VALUES (${params.department_id}, ${params.first_name}, ${params.last_name}, ${params.afm}, ${params.dob})""")
        }
        catch (Exception e) {
            e.printStackTrace()
        }

    }

    def updateEmployee(params) {
        def temp = params.dob.split("-")
        def new_date = temp[2]+ "-" + temp[1]+ "-" + temp[0]
        def dob = Date.valueOf(new_date)
        def sql = new Sql(dataSource)
        try {
            return sql.execute("""UPDATE employees
                                  SET first_name=$params.first_name,last_name=$params.last_name, department_name=$params.department_name,
                                      afm=$params.afm, dob=$params.dob, department_id=$params.department_id
                                  WHERE  employee_id=$params.employee_id""")
        }
        catch (Exception e) {
            e.printStackTrace()

        }
    }
    def deleteEmployee(params) {
        def sql = new Sql(dataSource)
        try {
            return sql.execute("""DELETE 
                                  FROM employees 
                                  WHERE employee_id=${params.employee_id}""")
        }
        catch (Exception e) {
            e.printStackTrace()
        }
    }
}

