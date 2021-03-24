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
<nav class="navbar navbar-expand navbar-white fixed-top bg-white">
    <div class="container-fluid">
        <a class="navbar-brand" href="/departments">Etaireia</a>

        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav">
                <li class="nav-item" style="padding-left: 2700%">
                    <g:link class="graphic" url = "/login/logout">Logout</g:link>
                </li>
            </ul>

        </div>
    </div>
</nav>

<style>
body {
    background-size: cover;
    background-repeat: no-repeat;
    background-image: url("https://www.peristeria.gr/userfiles/image/genika/pexels-photo.jpg");
}
</style>

<div class="container" style="width: 35%; margin-left:15%"><br><br>
    <h2>Ενημέρωση στοιχείων Employee</h2>
    <g:form name="createEmployeeForm" controller="Employee" action="updateEmployee">
        <div class="mb-3">
            <label class="form-label">Κωδικός employee</label>
            <input name="employee_id" class="form-control" required="true"
                   value="${employeeInformation.employee_id}" maxlength="15"><br/>
        </div>
        <div class="mb-3">
            <label class="form-label">Κωδικός Department</label>
            <input name="department_id" class="form-control" required="true"
                   value="${employeeInformation.department_id}" maxlength="15"><br/>
        </div>
        <div class="mb-3">
            <label class="form-label">Όνομα</label>
            <input name="first_name" class="form-control" required="true"
                   value="${employeeInformation.first_name}" maxlength="15"><br/>
        </div>

        <div class="mb-3">
            <label class="form-label">Επώνυμο</label>
            <input name="last_name" class="form-control" required="true"
                   value="${employeeInformation.last_name}" maxlength="15"><br/>
        </div>

        <div class="mb-3">
            <label class="form-label">ΑΦΜ</label>
            <input name="afm" class="form-control" required="true"
                   value="${employeeInformation.afm}" maxlength="9"><br/>
        </div>
        <div class="mb-3">
            <label class="form-label">Ημερομηνία Γέννησης</label>
            <input name="dob" class="form-control" required="true"
                   value="${employeeInformation.dob}" maxlength="15"><br/>
        </div>


        <g:submitButton type="submit" class="btn btn-primary" name="Ενημέρωση">action="updateEmployee"</g:submitButton>
    </g:form>
</div>
</body>
</html>