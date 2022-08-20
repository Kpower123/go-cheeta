<%-- 
    Document   : editVehicleType
    Created on : Aug 20, 2022, 1:43:38 PM
    Author     : thilan
--%>

<%@page import="assignment.VehicleType"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<% VehicleType vehicleType = adminProxy.getVehicleTypeById(Integer.parseInt(request.getParameter("id"))); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Edit Vehicle Type</title>
        
        <%@include file="../../includes/html/header.jsp" %>
    </head>
    <body>

        <%@include file="../../includes/html/sidenav.jsp" %>
        <section class="home-section">
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Dashboard</span>
                </div>

                <div class="profile-details">
                    <img src="images/nike.jpg" alt="">
                    <span class="admin_name">KANIYA</span>
                    <i class='bx bx-chevron-down' ></i>
                </div>
            </nav>

            <div class="home-content">

                <div class="card m-3 mb-2">
                    <div class="card-body">
                        <%@include file="../../includes/html/message.jsp" %>
                        <form action="/assignment-client/admin/controller/vehicle/updateVehicleType.jsp" method="post">
                            
                            <div class="form-group">
                                <label for="vehicle-type">Vehicle Type</label>
                                <input type="text" name="type" class="form-control" placeholder="Enter Vehicle Type" value="<%= vehicleType.getName() %>">
                            </div>
                            
                            <div class="form-group">
                                <input type="hidden" value="<%= vehicleType.getVehicleTypeId() %>" name="id">
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