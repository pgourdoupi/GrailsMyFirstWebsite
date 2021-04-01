<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:29 μ.μ.
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
        <title>Τμήματα</title>
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
                            <g:link controller="Login" action="logout" class="dropdown-item">Logout</g:link>
                        </div>
                    </li>
                </ul>
            </div>
    </nav>

    <div class="container mb-md-2 mt-md-2">
       <h3>Παρακάτω φαίνονται τα τμήματα:</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Κωδικός τμήματος</th>
                        <th scope="col">Όνομα τμήματος</th>
                        <th scope="col">Επιλογές</th>
                    </tr>
                </thead>

                <tbody>
                    <g:each var="department" in="${allDepartments}">
                        <tr>
                            <td colspan="row">${department.department_id}</td>
                            <td colspan="row">${department.department_name}</td>
                            <td>
                                <g:link controller="department" action="updateDepartmentForm"
                                            params="[department_name: department.department_name, department_id: department.department_id]">
                                    <g:actionSubmit type="submit" class="btn btn-primary" value="Ενημέρωση" action="updateDepartmentForm"/>
                                </g:link>

                                <g:link controller="department" action="deleteDepartment"
                                        params="[department_id: department.department_id]">
                                        <g:actionSubmit type="submit" class="btn btn-primary" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" value="Διαγραφή"/>
                                </g:link>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
             </table>
                <g:link controller="department" action="createDepartmentForm" params="department_name">
                    <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία τμήματος" action="createDepartmentForm"/>
                </g:link>
             <br><br><br>
              <g:link controller="employee" action="viewEmployees">
                  <g:actionSubmit type="submit" class="btn btn-primary" value="Employees" action="viewEmployees"/>
              </g:link>
    </div>
  </body>
</html>

