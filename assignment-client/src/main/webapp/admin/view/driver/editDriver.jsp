<%-- 
    Document   : deleteDriver
    Created on : Aug 19, 2022, 6:43:17 PM
    Author     : kaniya
--%>

<%@page import="assignment.Driver"%>
<%@page import="java.util.List"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Driver driver = adminProxy.getDriverById(Integer.parseInt(request.getParameter("id"))); %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Add Driver </title>
        
        <%@include file="../../includes/html/header.jsp" %>
    </head>
    <body>

        <%@include file="../../includes/html/sidenav.jsp" %>
        <section class="home-section">
            <%@include file="../../includes/html/navBar.jsp" %>

            <div class="home-content">

                <div class="card m-3 mb-2">
                    <div class="card-body">
                        <%@include file="../../includes/html/message.jsp" %>
                        <form action="/assignment-client/admin/controller/driver/updateDriver.jsp" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">First Name</label>
                                <input type="text" name="f_name" class="form-control" placeholder="Enter First Name" value="<%= driver.getFirstName() %>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Last Name</label>
                                <input type="text" name="l_name" class="form-control" placeholder="Enter Last Name" value="<%= driver.getLastName()%>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Mobile</label>
                                <input type="text" name="mobile" class="form-control" placeholder="Enter Mobile" value="<%= driver.getMobile()%>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter Email" value="<%= driver.getEmail()%>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Driving License Id</label>
                                <input type="text" name="d_license" class="form-control" placeholder="Enter Driving License Id" value="<%= driver.getDrivingLicens()%>">
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">NIC</label>
                                <input type="text" name="nic" class="form-control" placeholder="Enter NIC" value="<%= driver.getNic()%>">
                            </div>
                            
                            <div class="form-group">
                                <input type="hidden" name="id" value="<%= driver.getPersonID() %>">
                                <button type="submit" class="btn btn-primary w-md">Update</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="../../includes/html/footer.jsp" %>

    </body>
</html>
