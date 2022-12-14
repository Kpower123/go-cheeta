<%-- 
    Document   : register
    Created on : Sep 3, 2022, 2:09:50 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/assignment-client/assets/css/login.css">
        <link rel="stylesheet" href="/assignment-client/assets/bootstrap/css/bootstrap.min.css">
        <title>Admin Login</title>
    </head>
    <body>
        <div class="container">
            <div class="screen">
                <div class="screen__content">
                    <form class="login" action="/assignment-client/customer/controller/registerCustomer.jsp" method="post">

                        <%  HttpSession ses = request.getSession();
                            if (ses.getAttribute("success") != null) { %>
                        <div class="alert alert-success" role="alert">
                            <% out.print(ses.getAttribute("success")); %>
                        </div>
                        <% ses.removeAttribute("success"); %>
                        <% }%>

                        <% if (ses.getAttribute("error") != null) { %>
                        <div class="alert alert-danger" role="alert">
                            <% out.print(ses.getAttribute("error")); %>
                        </div>
                        <% ses.removeAttribute("error"); %>
                        <% }%>

                        <div class="login__field">
                            <input type="text" class="login__input" name="name" placeholder="Customer Name" autofocus required>
                        </div>
                        
                        <div class="login__field">
                            <input type="text" class="login__input" name="email" placeholder="Customer E-mail" required>
                        </div>
                        
                        <div class="login__field">
                            <input type="password" class="login__input" name="password" placeholder="Cusromer Password" required>
                        </div>
                        <button class="button login__submit">
                            <span class="button__text">Register Now</span>
                            <i class="button__icon fas fa-chevron-right"></i>
                        </button>				
                    </form>
                    <div class="social-login">
                        <div class="social-icons">
                            <a href="#" class="social-login__icon fab fa-instagram"></a>
                            <a href="#" class="social-login__icon fab fa-facebook"></a>
                            <a href="#" class="social-login__icon fab fa-twitter"></a>
                        </div>
                    </div>
                </div>
                <div class="screen__background">
                    <span class="screen__background__shape screen__background__shape4"></span>
                    <span class="screen__background__shape screen__background__shape3"></span>		
                    <span class="screen__background__shape screen__background__shape2"></span>
                    <span class="screen__background__shape screen__background__shape1"></span>
                </div>		
            </div>
        </div>
    </body>
</html>
