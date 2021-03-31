<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:25 μ.μ.
--%>
<html>
    <head>
        <asset:stylesheet src="bootstrap.min.css"/>
        <title>Login</title>
    </head>

<br><br><br>
 <body>
     <div class="container">
            <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                <g:form class="loginForm" controller="login" action="doLogin">
                    <h2>Login</h2>
                    <div class="form-group">
                        <label class="form-label" for="login">Όνομα χρήστη</label>
                        <input type="text" id="login" placeholder="Εισάγετε το όνομα σας" required type="text" name="login">
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="password">Κωδικός</label>
                        <input type="password" id="password" placeholder="Εισάγετε τον κωδικό σας" required type="password" name="password">
                    </div>
                    <g:actionSubmit type="submit" class="btn btn-primary" value="Είσοδος" action="doLogin"/>
                </g:form>

            </nav>
     </div>
 </body>
</html>
