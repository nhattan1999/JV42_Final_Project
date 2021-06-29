<%-- 
    Document   : login
    Created on : Jun 20, 2019, 8:17:26 PM
    Author     : AnhLe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>Login Page</title>

        <!-- Bootstrap CSS -->
        <link href="<c:url value="/resources-management/css/bootstrap.min.css"/>" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="<c:url value="/resources-management/css/bootstrap-theme.css"/>" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="<c:url value="/resources-management/css/elegant-icons-style.css"/>" rel="stylesheet" />
        <link href="<c:url value="/resources-management/css/font-awesome.css"/>" rel="stylesheet" />
        <!-- Custom styles -->
        <link href="<c:url value="/resources-management/css/style.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources-management/css/style-responsive.css"/>" rel="stylesheet" />

    </head>
    <body class="login-img3-body">

        <div class="container">
            <c:if test="${message != null && message != ''}">
                <p style="color: red">${message}</p>
            </c:if>
            <form class="login-form" action="<c:url value="j_spring_security_check"/>" method="post">
                <div class="login-wrap">
                    <p class="login-img"><i class="icon_lock_alt"></i></p>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="icon_profile"></i></span>
                        <input class="form-control" placeholder="Username" name="username" type="email" autofocus>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                        <input type="password" class="form-control" placeholder="Password" name="password">
                    </div>
                    <label class="checkbox">
                        <input type="checkbox" value="remember-me"> Remember me
                        <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
                    </label>
                    <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
                    <button class="btn btn-info btn-lg btn-block" type="submit">Sign up</button>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>

        </div>


    </body>

</html>
