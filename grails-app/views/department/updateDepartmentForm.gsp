<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:28 μ.μ.
--%>
<html>
<head>
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



<div class="container" style="width: 30%; margin-top: 15%; margin-left:15%">
        <h2>Ενημέρωση στοιχείων τμήματος</h2>
            <g:form name="createDepartmentForm" controller="department" action="updateDepartment">
                    <div class="mb-3">
                        <label class="form-label" for="department_id">Κωδικός τμήματος</label>
                        <input id="department_id" name="department_id" class="form-control" required="true"
                            value="${departmentInformation.department_id}" readonly><br/>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="department_name">Νέο Όνομα τμήματος</label>
                        <input id="department_name" name="department_name" class="form-control" required="true"
                               value="${departmentInformation.department_name}"><br/>
                    </div>
                    <g:submitButton type="submit" class="btn btn-primary" name="Ενημέρωση" action="updateDepartment"/>
            </g:form>
     </div>

</body>
</html>
