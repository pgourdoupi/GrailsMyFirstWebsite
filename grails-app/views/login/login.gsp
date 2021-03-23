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

<body>
<div class="container">
    <div class="box">
        <div class = "row">
            <div class = "card">
                <g:form class ="loginForm" controller="Login" action="doLogin">
                    <h1>Login</h1>
                    <g:if test="${err?:errc ==true}">
                        <p style="color: red"> Λάθος συνδυασμός username/password</p>
                    </g:if>
                    <g:else>
                        <p class="text-muted"> Εισάγετε username και password!</p>
                    </g:else>
                    <label  class="form-label">Username</label>
                    <input type="text" placeholder="username"required type="text" name="login" >
                    <label  class="form-label">Password</label>
                    <input type="password" placeholder="password" required type="password" name="password">
                    <a class="forgot text-muted" href="#">Forgot password?</a>
                    <g:actionSubmit type="button" class="btn btn-primary" value="Είσοδος" action="doLogin"/>
                </g:form>
            </div>
        </div>
    </div>
</div>
<style>
body {
    font-family: "Copperplate Gothic Bold";
    background-size: cover;
    background-repeat: no-repeat;
    background-image: url("https://www.peristeria.gr/userfiles/image/genika/pexels-photo.jpg");
}

.box{
    margin-top: 10%;
    margin-right: 25%;
    margin-left: 30%;
    position: absolute;
    text-align: -webkit-center;
}

.box input[type="text"],
.box input[type="password"]{
    text-align: center;
    display: table;
    border-radius: 20px;
    border: 2px solid saddlebrown;
    margin: 5px auto;

}

.box h1{
    color: saddlebrown;
    text-transform: lowercase;
    position: center;
}


.box input[type="submit"]{
    background-color: #686868;
    padding:10px 25px;
    margin: 15px auto;
    background-position: center;
    text-align: center;
    border: 2px solid saddlebrown;
    cunsor: pointer;
    border-radius: 15px;
}

</style>

</body>

</html>
