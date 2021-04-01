<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:26 μ.μ.
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
        <title>Υπάλληλοι</title>
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
         <div class="container mb-3 mt-3">
            <h3>Παρακάτω φαίνονται οι υπάλληλοι:</h3>
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
                            <td colspan="row">${employee.employee_id}</td>
                            <td colspan="row">${employee.first_name}</td>
                            <td colspan="row">${employee.last_name}</td>
                            <td colspan="row">${employee.dob}</td>
                            <td colspan="row">${employee.afm}</td>
                            <td colspan="row">${employee.department_name}</td>
                            <td>
                                <g:link controller="Employee" action="updateEmployeeForm"
                                        params="[employee_id: employee.employee_id, first_name: employee.first_name, department_name: employee.department_name,
                                                  last_name: employee.last_name, dob: employee.dob, afm: employee.afm]">
                                    <g:actionSubmit type="submit" class="btn btn-primary" value="Ενημέρωση" action="updateEmployeeForm"/>
                                </g:link>
                                <g:link controller="Employee" action="deleteEmployee" params="[employee_id: employee.employee_id]">
                                    <g:actionSubmit type="submit" class="btn btn-primary" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', message: 'Είστε σίγουρος οτι θέλετε να διαγράψετε αυτόν τον υπάλληλο;')}');" value="Διαγραφή" action="deleteEmployee"/>
                                </g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                 </table>
                        <g:link controller="employee" action="createEmployeeForm">
                            <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία" action="createEmployeeForm"/>
                        </g:link>
         </div>
 </body>
</html>