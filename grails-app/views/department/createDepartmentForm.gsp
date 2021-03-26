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
            <g:form name="createDepartmentForm" controller="Department" action="createDepartment">
                <select id="department_id" name="department_id" class="form-select" aria-label="Default select example">
                    <option name="department_id" value="${departmentInfo.department_id}"></option>
                    <g:each var="allDepartments" in="${departmentInfo.departments}">
                        <option name="department_id" value="${allDepartments.department_id}">${allDepartments.department_name}</option>
                    </g:each>
                </select>
            </g:form>
            <g:actionSubmit type="submit" class="btn btn-primary" value="Δημιουργία" action="createDepartment"/>
        </div>
 </body>
</html>
