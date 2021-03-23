<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:26 μ.μ.
--%>

<html>
<head>
    <asset:stylesheet src="bootstrap.min.css"/>
    <title>Employees</title>
</head>

<body>
<nav class="navbar navbar-expand navbar-white fixed-top bg-white">
    <div class="container-fluid">
        <a class="navbar-brand" href="/departments">Etaireia</a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <g:link url ="/"><a class="nav-link active" aria-current="page" href="#">Home</a></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="graphic" url = "/login/logout">Logout</g:link>
                </li>
            </ul>
        </div>


        <style>
        body{
            background-size: cover;
            background-repeat: no-repeat;
            background-image: url("https://www.peristeria.gr/userfiles/image/genika/pexels-photo.jpg");
        }
        </style>
    </div>
</div>
</nav>

${allEmployees}<br><br>
<h3>Παρακάτω φαίνονται οι Employees:</h3>
<h3 style="margin-left: 5%; margin-top: 5%; padding:0%" ></h3>
<table class="table table-bordered table-dark">
    <thead>
    <tr>
        <th scope="col">Κωδικός Employee</th>
        <th scope="col">Όνομα</th>
        <th scope="col">Επώνυμο</th>
        <th scope="col">Ημερομηνία γέννησης</th>
        <th scope="col">ΑΦΜ</th>
        <th scope="col">Κωδικός Department</th>
        <th scope="col">Επιλογές</th>
    </tr>
    </thead>
    <tbody>
    <g:each var="employees" in="${allEmployees}">
        <tr>
            <th scope="row">${employees.employee_id}</th>
            <th scope="row">${employees.first_name}</th>
            <th scope="row">${employees.last_name}</th>
            <th scope="row">${employees.dob}</th>
            <th scope="row">${employees.afm}</th>
            <th scope="row">${employees.department_id}</th>

            <td>
                <g:link controller="Employee" action="updateEmployeeForm"
                        params="[employee_id: employees.employee_id, first_name: employees.first_name, last_name: employees.last_name,
                                 dob: employees.dob, afm: employees.afm, department_id: employees.department_id]">
                    <g:actionSubmit type="submit" class="btn btn-primary" value="Ενημέρωση" action="updateEmployeeForm"/>
                </g:link>
                <g:link controller="Employee" action="deleteEmployee" params="[employee_id: employees.employee_id]">
                    <g:actionSubmit type="submit" class="btn btn-primary" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" value="Διαγραφή Employee" action="viewEmployees"/>
                </g:link>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>
        <g:link controller="employee" action="createEmployeeForm">
            <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία Employee" action="createEmployeeForm"/>
        </g:link>

</body>
</html>