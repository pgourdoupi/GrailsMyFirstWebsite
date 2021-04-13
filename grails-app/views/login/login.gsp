<%--
  Created by IntelliJ IDEA.
  User: panag
  Date: 20/3/2021
  Time: 9:25 μ.μ.
--%>
<html>
    <head>
        <asset:javascript src="popper.min.js"/>
        <asset:javascript src="bootstrap.bundle.min.js"/>
        <asset:javascript src="jquery-3.3.1.min.js"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:stylesheet src="bootstrap.min.css"/>
        <asset:stylesheet src="bootstrap-icons.css"/>
        <asset:stylesheet src="styles.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.5.0/css/flag-icon.min.css" integrity="sha512-Cv93isQdFwaKBV+Z4X8kaVBYWHST58Xb/jVOcV9aRsGSArZsgAnFIhMpDoMDcFNoUtday1hdjn0nGp3+KZyyFw==" crossorigin="anonymous">
        <title><g:message code="message.entry"/></title>
    </head>
 <body>
     <nav class="navbar navbar-expand-md navbar-light bg-light">
         <h1><g:message code="welcome.title"/></h1>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <div class="navbar-nav ml-auto">
                 <div class="nav-item dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><g:message code="navbar.languages" default="languages"/></a>
                     <ul class="dropdown-menu">
                         <g:link controller="setLocale" params="[lang:'gr', theURL: request.getRequestURI()]"><li class="dropdown-item"><span class="flag-icon flag-icon-gr"></span><g:message code="language.gr"/></li></g:link>
                         <g:link controller="setLocale" params="[lang:'gb', theURL: request.getRequestURI()]"><li class="dropdown-item"><span class="flag-icon flag-icon-gb"></span><g:message code="language.gb"/></li></g:link>
                         <g:link controller="setLocale" params="[lang:'de', theURL: request.getRequestURI()]"><li class="dropdown-item"><span class="flag-icon flag-icon-de"></span><g:message code="language.de"/></li></g:link>
                     </ul>
                 </div>
             </div>
         </div>
     </nav>

     <div class="container border bg-light w-25">
                <nav class="navbar navbar-light">
                    <g:form class="loginForm" controller="login" action="doLogin">
                        <h3><g:message code="message.login"/></h3>
                        <div class="form-group">
                            <label class="form-label" for="login"><g:message code="message.username"/></label>
                            <input type="text" class="form-control" id="login" placeholder="<g:message code="message.enter_username"/>" name="login"/>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="password"><g:message code="message.password"/></label>
                            <input type="password" class="form-control" id="password" placeholder="<g:message code="message.enter_password"/>" name="password"/>
                            <g:if test="${flash.msg}">
                                <div class="message" style="display: block">${flash.msg}</div>
                            </g:if>
                        </div>
                          <g:actionSubmit type="submit" class="btn btn-secondary" value="${g.message (code: 'message.entry')}" action="doLogin"/>
                    </g:form>
                </nav>
     </div>
 </body>
</html>