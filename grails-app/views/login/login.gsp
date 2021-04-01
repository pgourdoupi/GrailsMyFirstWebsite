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
     <div class="container mb-4 mt-4 col-4 border bg-light">
            <nav class="navbar navbar-light">
                <g:form class="loginForm" controller="login" action="doLogin">
                    <h2>Σύνδεση</h2>
                    <div class="form-group m-2">
                        <label class="form-label" for="login">Όνομα χρήστη:</label>
                        <input type="text" id="login" placeholder="Εισάγετε το όνομα σας" required name="login">
                    </div>
                    <div class="form-group m-3">
                        <label class="form-label" for="password">Κωδικός:</label>
                        <input type="password" id="password" placeholder="Εισάγετε τον κωδικό σας" required name="password">
                        <g:if test="${flash.message}">
                            <div class="message" style="display: block">${flash.message}</div>
                        </g:if>
                    </div>
                      <g:actionSubmit type="submit" class="btn btn-secondary" value="Είσοδος" action="doLogin"/>
                </g:form>
            </nav>
     </div>
 </body>
</html>
