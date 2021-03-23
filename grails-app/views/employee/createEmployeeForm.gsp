<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:26 μ.μ.
--%>
<html>
<head>
    <asset:stylesheet src="bootstrap.min.css"/>
    <title>Ενημέρωση Employee</title>
</head>

<body>
<nav class="navbar navbar-expand navbar-white fixed-top bg-white">
    <div class="container-fluid">
        <a class="navbar-brand" href="/departments">Etaireia</a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <g:link url ="/"><a class="nav-link active" aria-current="page" href="#">Home</a></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="graphic" url = "/login/logout">Logout</g:link>
                </li>
            </ul>
        </div>


        <style>
        body{
            background-size: cover;
            background-repeat: no-repeat;
            background-image: url("https://www.peristeria.gr/userfiles/image/genika/pexels-photo.jpg");
        }
        </style>
    </div>
</div>
</nav>

<div class="container" style="width: 30%; margin-left:15%;"><br><br><br>
    <h2>Προσθήκη employee</h2>
    <g:form name="createEmployeeForm" controller="employee" action="createEmployee">
        <div class="mb-3">
            <label class="form-label">Κωδικός department</label>
            <input name="department_id" class="form-control" required="true"><br/>
        </div>
        <div class="mb-3">
            <label class="form-label">Όνομα</label>
            <input name="first_name" class="form-control" required="true" maxlength="50"><br/>
        </div>

        <div class="mb-3">
            <label class="form-label">Επώνυμο</label>
            <input name="last_name" class="form-control" required="true" maxlength="50"><br/>
        </div>
        <div class="mb-3">
            <label class="form-label">ΑΦΜ</label>
            <input name="afm" class="form-control" required="true" maxlength="9"><br/>
        </div>
        <div class="mb-3">
            <label class="form-label">Ημερομηνία Γέννησης</label>
            <input name="dob" class="form-control" required="true" placeholder="DD-MM-YYYY"/>
        </div>

        <g:actionSubmit type="button" class="btn btn-primary" value="Προσθήκη" action="createEmployee"/>
    </g:form>
</div>
</body>
</html>
