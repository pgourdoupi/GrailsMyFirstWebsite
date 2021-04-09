<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:28 μ.μ.
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
        <title>Ενημέρωση Τμήματος</title>
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

<div class="container md-3 mt-3 border w-50">
        <h2><g:message code="message.update_department_data"/></h2>
            <g:form name="createDepartmentForm" controller="department" action="updateDepartment">
                    <div class="mb-3">
                        <label class="form-label" for="department_id"><g:message code="message.department_id"/></label>
                        <input id="department_id" name="department_id" class="form-control" required="true"
                            value="${departmentInformation.department_id}" readonly><br/>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="department_name"><g:message code="message.new_department_name"/></label>
                        <input id="department_name" name="department_name" class="form-control" required="true"
                               value="${departmentInformation.department_name}"><br/>
                    </div>
                    <g:actionSubmit type="submit" class="btn btn-primary" value="${g.message (code: 'message.update_department')}" action="updateDepartment"/>
            </g:form>
     </div>

</body>
</html>
