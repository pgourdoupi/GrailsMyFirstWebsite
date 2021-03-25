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
         <nav class="navbar navbar-expand-sm bg-white navbar-white">
             <!-- Brand -->
             <ul class="navbar-nav">
                 <a class="navbar-brand" href="">Εταιρεία</a>
                 <div class="collapse navbar-collapse" id="navbarCollapse"></div>
             </li>
             </ul>
             <!-- Links -->
             <ul class="navbar-nav">
                 <li class="nav-item" style="padding-left: 2700%">
                     <g:link class="graphic" url = "/login/logout">Logout</g:link>
                 </li>
             </ul>
         </nav>

        <div class="container" style="margin-left: 10%; margin-top: 2%; padding:0%; width: 30%"><br><br>
            <h2>Δημιουργία νέου τμήματος</h2>
            <g:form name="createDepartmentForm" controller="department" action="createDepartment">
                <div class="mb-3">
                    <label class="form-label" for="department_name">Όνομα</label>
                    <input id="department_name" name="department_name" class="form-control" required="true" maxlength="10"><br/>
                </div>
            </g:form>
            <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία" action="createDepartment"/>
        </div>

 </body>
</html>
