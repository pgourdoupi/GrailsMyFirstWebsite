<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 22/3/2021
  Time: 11:49 π.μ.
--%>
<html>
    <head>
        <asset:javascript src="popper.min.js"/>
        <asset:javascript src="bootstrap.bundle.min.js"/>
        <asset:javascript src="jquery-3.3.1.min.js"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:stylesheet src="bootstrap.min.css"/>
        <asset:stylesheet src="bootstrap-icons.css"/>
        <asset:stylesheet src="styles.css"/>
        <title>Ενημέρωση Υπαλλήλου</title>
    </head>
<body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Εταιρεία</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                        ${session ['user']}
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <g:link controller="Login" action="logout" class="dropdown-item">Έξοδος</g:link>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

 <div class="container md-3 mt-3 border w-50">
                <h2>Ενημέρωση στοιχείων υπαλλήλου</h2>
                <g:form name="createEmployeeForm" controller="Employee" action="updateEmployee">
                    <div class="mb-3">
                        <label class="form-label" for="employee_id">Κωδικός υπαλλήλου</label>
                        <input id="employee_id" name="employee_id" class="form-control" required="true"
                               value="${employeeInformation.employee_id}" readonly maxlength="15"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="department_id">Όνομα τμήματος</label>
                        <select id="department_id" name="department_id" class="form-select" aria-label="Default select example">
                            <option name="department_id" value="${employeeInformation.departmentIdFromCurrentEmployee.department_id}" select="selected">${employeeInformation.department_name}</option>
                            <g:each var="departments" in="${employeeInformation.departments}">
                                <option name="department_id" value="${departments.department_id}">${departments.department_name}</option>
                            </g:each>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="first_name">Όνομα</label>
                        <input id="first_name" name="first_name" class="form-control" required="true"
                               value="${employeeInformation.first_name}" maxlength="15"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="last_name">Επώνυμο</label>
                        <input id="last_name" name="last_name" class="form-control" required="true"
                               value="${employeeInformation.last_name}" maxlength="15"><br/>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="afm">ΑΦΜ</label>
                        <input id="afm" name="afm" class="form-control" required="true"
                               value="${employeeInformation.afm}" maxlength="9"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="dob">Ημερομηνία Γέννησης</label>
                        <input id="dob" name="dob" class="form-control" required="true"
                               value="${employeeInformation.dob}" maxlength="15"><br/>
                    </div>

                    <g:submitButton type="submit" class="btn btn-primary" name="Ενημέρωση" action="updateEmployee"/>
                </g:form>
            </div>

    </body>
</html>