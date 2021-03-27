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
        <nav class="navbar navbar-expand navbar-white bg-white">
            <a class="navbar-brand" href="#">Εταιρεία</a>
            <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-5 my-2 my-md-0">
                <div class="collapse navbar-collapse">
                    <div class ="sb-nav-link-icon"> <i class="bi bi-person" style="font-size: 1rem; color: #a6adb8"></i></div>
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown">
                                ${session ['user']}
                            </a>
                            <div class="dropdown-item" aria-labelledby="navbarDropdownMenuLink">
                                <g:link controller="Login" action="logout">Logout</g:link>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
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