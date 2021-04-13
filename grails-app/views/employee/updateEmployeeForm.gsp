<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 22/3/2021
  Time: 11:49 π.μ.
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
        <title><g:message code="message.update_employee_data"/></title>
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

 <div class="container md-3 mt-3 border w-50">
                <h2><g:message code="message.update_employee_data"/></h2>
                <g:form name="createEmployeeForm" controller="Employee" action="updateEmployee">
                    <div class="mb-3">
                        <label class="form-label" for="employee_id"><g:message code="message.employee_id"/></label>
                        <input id="employee_id" name="employee_id" class="form-control"
                               value="${employeeInformation.employee_id}" readonly maxlength="15"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="department_id"><g:message code="message.department_id"/></label>
                        <select id="department_id" name="department_id" class="form-control" aria-label="Default select example">
                            <option selected name="department_id" value="${employeeInformation.departmentIdFromCurrentEmployee.department_id}">${employeeInformation.department_name}</option>
                            <g:each var="departments" in="${employeeInformation.departments}">
                                <option name="department_id" value="${departments.department_id}">${departments.department_name}</option>
                            </g:each>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="first_name"><g:message code="message.first_name"/></label>
                        <input id="first_name" name="first_name" class="form-control"
                               value="${employeeInformation.first_name}" maxlength="15"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="last_name"><g:message code="message.last_name"/></label>
                        <input id="last_name" name="last_name" class="form-control"
                               value="${employeeInformation.last_name}" maxlength="15"><br/>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="afm"><g:message code="message.afm"/></label>
                        <input id="afm" name="afm" class="form-control"
                               value="${employeeInformation.afm}" maxlength="9"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="dob"><g:message code="message.date_of_birth"/></label>
                        <input id="dob" name="dob" class="form-control"
                               value="${employeeInformation.dob}" maxlength="15"><br/>
                    </div>

                    <g:actionSubmit type="submit" class="btn btn-primary" value="${g.message (code: 'message.update_employee')}" action="updateEmployee"/>
                </g:form>
            </div>

    </body>
</html>