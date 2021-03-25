<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 22/3/2021
  Time: 11:49 π.μ.
--%>
<html>
<head>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<body>
            <nav class="navbar navbar-expand-sm bg-white navbar-white">
                <!-- Brand -->
                <ul class="navbar-nav">
                    <a class="navbar-brand" href="">Εταιρεία</a>
                    <div class="collapse navbar-collapse" id="navbarCollapse"></div>
                </li>
                </ul>
                <!-- Links -->
                <ul class="navbar-nav">
                    <li class="nav-item" style="padding-left: 2700%">
                        <g:link class="graphic" url = "/login/logout">Logout</g:link>
                    </li>
                </ul>
            </nav>

            <div class="container" style="width: 35%; margin-left:15%"><br><br>
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
                            <option name="department_id" value="${employeeInformation.department_id}"></option>
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