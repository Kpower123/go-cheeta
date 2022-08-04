<%-- 
    Document   : register
    Created on : Aug 4, 2022, 5:42:36 PM
    Author     : kaniya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Register</title>
    <link rel="stylesheet" href="./assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/styles.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-4 offset-4">
                
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
                
                <form action="/assignment-client/controller/registerUser.jsp" method="post">
                    <div class="row">
                        <div class="col"><input type="text" name="first_name" placeholder="Enter Last Name"></div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="text" name="last_name" placeholder="Enter Last Name"></div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="text" name="mobile" placeholder="Enter Mobile Number"></div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="text" name="email" placeholder="Enter Email"></div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="password" name="password" placeholder="Enter Password"></div>
                    </div>
                    <div class="row">
                        <div class="col"><button class="btn btn-success" type="submit">Register</button></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
