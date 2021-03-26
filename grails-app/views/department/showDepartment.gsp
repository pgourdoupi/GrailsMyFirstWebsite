<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:29 μ.μ.
--%>

<html>
    <head>
        <asset:stylesheet src="bootstrap.min.css"/>
        <title>Τμήματα</title>
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

        <h3>Παρακάτω φαίνονται τα τμήματα:</h3>
        <h3 style="margin-left: 10%; margin-top: 2%; padding:0%" ></h3>
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
                        <th scope="row">${department.department_id}</th>
                        <th scope="row">${department.department_name}</th>
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

  </body>

</html>

