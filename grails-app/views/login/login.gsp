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
       <div class="container" style="width: 300px">
            <g:form class="loginForm" controller="login" action="doLogin">
                <h2>Login</h2>
                <div class="form-group">
                    <label class="form-label">Username</label>
                    <input type="text" placeholder="Enter username" required type="text" name="login">
                </div>
                <div class="form-group">
                    <label class="form-label">Password</label>
                    <input type="password" placeholder="Enter password" required type="password" name="password">
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck2">
                    <label class="form-check-label" for="dropdownCheck2">
                        Remember me
                    </label>
                    <a class="dropdown-item" href="#/">Forgot password?</a>
                </div>
                <g:actionSubmit type="submit" class="btn btn-primary" value="Είσοδος" action="doLogin"/>
            </g:form>
      <style>
            body {
                background-size: cover;
                background-repeat: no-repeat;
                background-image: url("https://www.peristeria.gr/userfiles/image/genika/pexels-photo.jpg");
            }
      </style>

 </body>
</html>
