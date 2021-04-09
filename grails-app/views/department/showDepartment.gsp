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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><g:message code="navbar.languages" default="Languages"/> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <navBar:localeDropdownListItems uri="${request.forwardURI}"/>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                            ${session ['user']}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <g:link controller="Login" action="logout" class="dropdown-item"><g:message code="message.logout"/></g:link>
                        </div>
                    </li>
                </ul>
            </div>
    </nav>

    <div class="container mb-md-2 mt-md-2">
       <h3><g:message code="message.show_departments"/></h3>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col"><g:message code="message.department_id"/></th>
                        <th scope="col"><g:message code="message.department_name"/></th>
                        <th scope="col"><g:message code="message.choices"/></th>
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
                                    <g:actionSubmit type="submit" class="btn btn-primary" value="${g.message (code: 'message.update_department')}" action="updateDepartmentForm"/>
                                </g:link>

                                <g:link controller="department" action="deleteDepartment"
                                        params="[department_id: department.department_id]">
                                        <g:actionSubmit type="submit" class="btn btn-danger"
                                                        onclick="return confirm('${g.message(code:'default.button.delete.confirm.message.delete_department')}');"
                                                       value="${g.message (code: 'message.delete_department')}"/>
                                </g:link>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
             </table>
                <g:link controller="department" action="createDepartmentForm" params="department_name">
                    <g:actionSubmit type="submit" class="btn btn-primary" value="${g.message (code: 'message.create_department')}" action="createDepartmentForm"/>
                </g:link>
             <br><br><br>
              <g:link controller="employee" action="viewEmployees">
                  <g:actionSubmit type="submit" class="btn btn-primary" value="${g.message (code: 'message.body.o')}" action="viewEmployees"/>
              </g:link>
    </div>
  </body>
</html>

