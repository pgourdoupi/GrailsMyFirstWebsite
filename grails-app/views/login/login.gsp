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
 <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
       <div class="container" style="width: 200px">
            <g:form class="loginForm" controller="login" action="doLogin">
                <h2>Login</h2>
                <div class="form-group">
                    <label class="form-label" for="login">Username</label>
                    <input type="text" id="login" placeholder="Enter username" required type="text" name="login">
                </div>
                <div class="form-group">
                    <label class="form-label" for="password">Password</label>
                    <input type="password" id="password" placeholder="Enter password" required type="password" name="password">
                </div>
                <div class="form-group">
                    <a class="dropdown-item" href="">Forgot password?</a>
                </div>
                <g:actionSubmit type="submit" class="btn btn-primary" value="Είσοδος" action="doLogin"/>
            </g:form>

 </nav>
 </body>
</html>
