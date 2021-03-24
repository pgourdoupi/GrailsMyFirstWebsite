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
        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
            <div class="container-fluid">
                <a class="navbar-brand" href="/departments">Εταιρεία</a>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav">
                        <li class="nav-item" style="padding-left: 2700%">
                            <g:link class="graphic" url = "/login/logout">Logout</g:link>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>

            <br><br><br>
             <h3>Παρακάτω φαίνονται οι υπάλληλοι:</h3>
             <h3 style="margin-left: 5%; margin-top: 5%; padding:0%" ></h3>
             <table class="table">
                 <thead>
                 <tr>
                    <th scope="col">Κωδικός υπαλλήλου</th>
                    <th scope="col">Όνομα</th>
                    <th scope="col">Επώνυμο</th>
                    <th scope="col">Ημερομηνία γέννησης</th>
                    <th scope="col">ΑΦΜ</th>
                    <th scope="col">Κωδικός τμήματος</th>
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
                                <g:actionSubmit type="submit" class="btn btn-primary" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" value="Διαγραφή" action="viewEmployees"/>
                            </g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
             </table>
                    <g:link controller="employee" action="createEmployeeForm">
                        <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία" action="createEmployeeForm"/>
                    </g:link>


</body>
</html>