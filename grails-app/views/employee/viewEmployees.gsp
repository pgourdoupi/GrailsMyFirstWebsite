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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.5.0/css/flag-icon.min.css" integrity="sha512-Cv93isQdFwaKBV+Z4X8kaVBYWHST58Xb/jVOcV9aRsGSArZsgAnFIhMpDoMDcFNoUtday1hdjn0nGp3+KZyyFw==" crossorigin="anonymous">
        <title><g:message code="message.employees_page"/></title>
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
                            <g:link controller="setLocale" params="[lang:'gr', theURL: request.getRequestURI()]"><li class="dropdown-item"><span class="flag-icon flag-icon-gr"></span><g:message code="language.gr"/></li></g:link>
                            <g:link controller="setLocale" params="[lang:'gb', theURL: request.getRequestURI()]"><li class="dropdown-item"><span class="flag-icon flag-icon-gb"></span><g:message code="language.gb"/></li></g:link>
                            <g:link controller="setLocale" params="[lang:'de', theURL: request.getRequestURI()]"><li class="dropdown-item"><span class="flag-icon flag-icon-de"></span><g:message code="language.de"/></li></g:link>
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
         <div class="container mb-3 mt-3">
            <h3><g:message code="message.employees"/></h3>
                 <table class="table">
                     <thead>
                         <tr>
                            <th scope="col"><g:message code="message.employee_id"/></th>
                            <th scope="col"><g:message code="message.first_name"/></th>
                            <th scope="col"><g:message code="message.last_name"/></th>
                            <th scope="col"><g:message code="message.date_of_birth"/></th>
                            <th scope="col"><g:message code="message.afm"/></th>
                            <th scope="col"><g:message code="message.department_name"/></th>
                            <th scope="col"><g:message code="message.choices"/></th>
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
                                    <g:actionSubmit type="submit" class="btn btn-primary" value="${g.message (code: 'message.update_employee')}" action="updateEmployeeForm"/>
                                </g:link>
                                <g:link controller="Employee" action="deleteEmployee" params="[employee_id: employee.employee_id]">
                                    <g:actionSubmit type="submit" class="btn btn-danger" onclick="return confirm('${g.message(code:'default.button.delete.confirm.message.body.delete_employee')}');"
                                                    value="${g.message (code: 'message.delete_employee')}"/>
                                </g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                 </table>
                        <g:link controller="employee" action="createEmployeeForm">
                            <g:actionSubmit type="submit" class="btn btn-primary"  value="${g.message (code: 'message.create_employee')}" action="createEmployeeForm"/>
                        </g:link>
         </div>
 </body>
</html>