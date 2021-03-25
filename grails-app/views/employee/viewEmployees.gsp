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
                     <th scope="col">Όνομα τμήματος</th>
                    <th scope="col">Επιλογές</th>
                </tr>
                </thead>
                <tbody>
                <g:each var="employee" in="${allEmployees}">
                    <tr>
                        <th scope="row">${employee.employee_id}</th>
                        <th scope="row">${employee.first_name}</th>
                        <th scope="row">${employee.last_name}</th>
                        <th scope="row">${employee.dob}</th>
                        <th scope="row">${employee.afm}</th>
                        <th scope="row">${employee.department_name}</th>
                        <td>
                            <g:link controller="Employee" action="updateEmployeeForm"
                                    params="[employee_id: employee.employee_id, first_name: employee.first_name, last_name: employee.last_name,
                                             dob: employee.dob, afm: employee.afm, department_name: employee.department_name]">
                                <g:actionSubmit type="submit" class="btn btn-primary" value="Ενημέρωση" action="updateEmployeeForm"/>
                            </g:link>
                            <g:link controller="Employee" action="deleteEmployee" params="[employee_id: employee.employee_id]">
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