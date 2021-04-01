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
     <div class="container mb-4 mt-4 col-4 border bg-light w-25">
            <nav class="navbar navbar-light">
                <g:form class="loginForm" controller="login" action="doLogin">
                    <h2>Σύνδεση</h2>
                    <div class="form-group">
                        <label class="form-group" for="login">Όνομα χρήστη:</label>
                        <input type="text" class="form-control" id="login" placeholder="Εισάγετε το όνομα σας"/>
                    </div>
                    <div class="form-group">
                        <label class="form-group" for="password">Κωδικός:</label>
                        <input type="password" class="form-control" id="password" placeholder="Εισάγετε τον κωδικό σας"/>
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
