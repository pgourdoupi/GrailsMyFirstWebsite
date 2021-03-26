<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:28 μ.μ.
--%>
<html>
<head>
    <asset:stylesheet src="bootstrap.min.css"/>
    <title>Δημιουργία Τμήματος</title>
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

 <div class="container" style="margin-left: 10%; margin-top: 2%; padding:0%; width: 30%"><br><br>
            <h2>Δημιουργία νέου τμήματος</h2>
     <g:form name="createDepartmentForm" controller="department" action="createDepartment">
         <div class="mb-3">
             <label class="form-label" for="department_name">Όνομα</label>
             <input id="department_name" name="department_name" class="form-control" required="true" maxlength="10"><br/>
         </div>
            <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία" action="createDepartment"/>
        </div>
     </g:form>
 </body>
</html>
