<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:25 μ.μ.
--%>
<html>
    <head>
        <asset:stylesheet src="bootstrap.min.css"/>
        <title>Είσοδος</title>
    </head>

<br><br><br>
 <body>
     <div class="container border bg-light w-25">
            <nav class="navbar navbar-light">
                <g:form class="loginForm" controller="login" action="doLogin">
                    <h3>Σύνδεση</h3>
                    <div class="form-group">
                        <label class="form-label" for="login">Όνομα χρήστη:</label>
                        <input type="text" class="form-control" id="login" placeholder="Εισάγετε το όνομα σας" name="login"/>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="password">Κωδικός:</label>
                        <input type="password" class="form-control" id="password" placeholder="Εισάγετε τον κωδικό σας" name="password"/>
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
