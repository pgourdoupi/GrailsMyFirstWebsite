package grailsmywebside

class EmployeeController {

    def EmployeeService
    def departmentService


    // gia na ftiaxoyme ena employee
    def createEmployee() {
        EmployeeService.createEmployee(params)
        redirect(action:"viewEmployees")
    }

    def createEmployeeForm() {
    }

    //gia na kanoyme read ola ta departments
    def viewEmployees() {
        def allEmployees = employeeService.getAllEmployees()
        [allEmployees: allEmployees]
    }

    def updateEmployee(){
        employeeService.updateEmployee(params)
        departmentService.updateDepartment(params.department_id)
        redirect(action: "viewEmployees")
    }

    //gia na kanoyme update se department
    def updateEmployeeForm() {
        def employeeInformation = [employee_id:params.employee_id, department_id:params.department_id, first_name: params.first_name,
                                   last_name: params.last_name, afm: params.afm, dob: params.dob]
        [employeeInformation: employeeInformation]
    }

   /* def updateEmployeeById(){
        employeeService.updateEmployee(params)
        redirect (action: "viewEmployees")
    }*/

    //gia na diagrapsoyme ena department
    def deleteEmployee() {
        EmployeeService.deleteEmployee(params)
        redirect(action:'viewEmployees')
    }
}