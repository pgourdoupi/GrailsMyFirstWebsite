<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:29 μ.μ.
--%>

<html>
    <head>
        <asset:stylesheet src="bootstrap.min.css"/>
    </head>


<body>
    <nav class="navbar navbar-expand navbar-white fixed-top bg-white">
        <div class="container-fluid">
            <a class="navbar-brand" href="\departments">Etaireia</a>
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

${allDepartments}<br><br>
    <h3>Παρακάτω φαίνονται τα departments:</h3>
    <h3 style="margin-left: 10%; margin-top: 2%; padding:0%" ></h3>
    <table class="table table-bordered table-dark">
        <thead>
            <tr>
                <th scope="col">Κωδικός Department</th>
                <th scope="col">Όνομα Department</th>
                <th scope="col">Επιλογές</th>
            </tr>
        </thead>
        <tbody>
            <g:each var="department" in="${allDepartments}">
                <tr>
                    <th scope="row">${department.department_id}</th>
                    <th scope="row">${department.department_name}</th>
                    <td>
                        <g:link controller="department" action="createDepartmentForm"
                                params="[department_name: department.department_name]">
                            <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία Department" action="createDepartmentForm"/>
                        </g:link>
                        <g:link controller="department" action="updateDepartmentForm"
                                    params="[department_name: department.department_name, department_id: department.department_id]">
                            <g:actionSubmit type="submit" class="btn btn-primary" value="Ενημέρωση" action="updateDepartmentForm"/>
                        </g:link>

                        <g:link controller="department" action="deleteDepartment"
                                params="[department_id: department.department_id]">
                                <g:actionSubmit type="submit" class="btn btn-primary" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" value="Διαγραφή department"/>
                        </g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

<br><br><br>
      <g:link controller="employee" action="viewEmployees">
          <g:actionSubmit type="submit" class="btn btn-primary" value="Employees" action="viewEmployees"/>
      </g:link>

</body>

</html>

