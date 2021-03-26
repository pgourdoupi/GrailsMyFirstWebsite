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
