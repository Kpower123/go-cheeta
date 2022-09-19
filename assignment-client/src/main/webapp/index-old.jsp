<%-- 
    Document   : index
    Created on : Aug 4, 2022, 5:41:17 PM
    Author     : kaniya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login</title>
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
                <form action="/assignment-client/controller/loginUser.jsp" method="post">
                    <div class="row">
                        <input class="d-xl-flex justify-content-xl-center" type="text" name="mobile" placeholder="Enter mobile Number" autofocus required>
                    </div>

                    <div class="row mt-2">
                        <input class="d-xl-flex justify-content-xl-center" type="text" name="password" placeholder="Enter Password" required>
                    </div>

                    <div class="row mt-2">
                        <button class="btn btn-success d-xl-flex justify-content-xl-center align-items-xl-center" type="submit">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>