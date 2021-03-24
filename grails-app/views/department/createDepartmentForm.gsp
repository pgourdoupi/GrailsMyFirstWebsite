<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:28 μ.μ.
--%>
<html>
<head>
    <asset:stylesheet src="bootstrap.min.css"/>
    <title>Δημιουργία Department</title>
</head>

 <body>
            <nav class="navbar navbar-expand navbar-white fixed-top bg-white">
                <div class="container-fluid">
                    <a class="navbar-brand" href="/departments">Etaireia</a>
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
        body{
            background-size: cover;
            background-repeat: no-repeat;
            background-image: url("https://www.peristeria.gr/userfiles/image/genika/pexels-photo.jpg");
        }
    </style>

    <div class="container" style="margin-left: 10%; margin-top: 2%; padding:0%; width: 30%"><br><br>
        <h2>Δημιουργία νέου Department</h2>
        <g:form name="createDepartmentForm" controller="department" action="createDepartment">
            <div class="mb-3">
                <label class="form-label">Όνομα</label>
                <input name="department_name" class="form-control" required="true" maxlength="10"><br/>
            </div>
            <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία" action="createDepartment"/>
        </g:form>
    </div>

</body>
</html>
