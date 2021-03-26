package grailsmywebside

class DepartmentController {

    def departmentService

    // gia na dimioyrgisoyme ena department
    def createDepartment() {
        departmentService.createDepartment(params)
        //def allDepartments = departmentService.getAllDepartments()
        //[allDepartments: allDepartments]
        redirect(action:"showDepartment")
    }

    def createDepartmentForm() {
        def departmentInfo = [department_id: params.department_id, department_name: params.department_name]
        [departmentInformation: departmentInfo]
    }

    //gia na doyme ola ta departments
    def showDepartment() {
        def allDepartments = departmentService.getAllDepartments()
        [allDepartments: allDepartments]
    }

     //gia na kanoyme update se department
    def updateDepartment(){
        departmentService.updateDepartment(params)
        redirect(action: "showDepartment")
    }

    //forma toy update
    def updateDepartmentForm() {
        def departmentInformation = [department_id: params.department_id, department_name: params.department_name]
        [departmentInformation: departmentInformation]
    }

    //gia na diagrapsoyme ena department
    def deleteDepartment() {
        departmentService.deleteDepartment(params)
        redirect(action:'showDepartment')
    }

}