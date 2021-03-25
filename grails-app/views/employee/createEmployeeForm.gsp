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


            <div class="container" style="width: 30%; margin-left:15%;"><br><br><br>
                <h2>Προσθήκη υπαλλήλου</h2>
                <g:form name="createEmployeeForm" controller="employee" action="createEmployee">
                    <div class="mb-3">
                        <label class="form-label" for="department_id">Κωδικός τμήματος</label>
                        <input id="department_id" name="department_id" class="form-control" required="true"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="first_name">Όνομα</label>
                        <input id="first_name" name="first_name" class="form-control" required="true" maxlength="50"><br/>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="last_name">Επώνυμο</label>
                        <input id="last_name" name="last_name" class="form-control" required="true" maxlength="50"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="afm">ΑΦΜ</label>
                        <input id="afm" name="afm" class="form-control" required="true" maxlength="9"><br/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="dob">Ημερομηνία Γέννησης</label>
                        <input id="dob" name="dob" class="form-control" required="true" placeholder="DD-MM-YYYY"/>
                    </div>

                    <g:actionSubmit type="button" class="btn btn-primary" value="Προσθήκη" action="createEmployee"/>
                </g:form>
            </div>

</body>
</html>
