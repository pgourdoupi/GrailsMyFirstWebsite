<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:28 μ.μ.
--%>
<html>
<head>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
    <div class="container-fluid">
        <a class="navbar-brand" href="/departments">Εταιρεία</a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav">
                <li class="nav-item" style="padding-left: 2700%">
                    <g:link class="graphic" url = "/login/logout">Logout</g:link>
                </li>
            </ul>

        </div>
    </div>
</nav>



     <div class="container" style="width: 30%; margin-top: 15%; margin-left:15%">
        <h2>Ενημέρωση στοιχείων τμήματος</h2>
            <g:form name="createDepartmentForm" controller="Department" action="updateDepartment">
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
