<%-- 
    Document   : addType
    Created on : Aug 20, 2022, 12:52:01 PM
    Author     : thilan
--%>

<%@page import="assignment.VehicleType"%>
<%@page import="assignment.Driver"%>
<%@page import="java.util.List"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Add Vehicle Type</title>
        
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
                        <form action="/assignment-client/admin/controller/vehicle/addVehicleType.jsp" method="post">
                            
                            <div class="form-group">
                                <label for="vehicle-type">Vehicle Type</label>
                                <input type="text" name="type" class="form-control" placeholder="Enter Vehicle Type">
                            </div>
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary w-md">Save</button>
                            </div>

                        </form>
                    </div>
                </div>


                <div class="card m-3 mb-2">
                    <div class="card-body">
                        <table class="table table-hover">
                            <% List<VehicleType> vehicles = adminProxy.getVehicleTypes(); %>
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for(VehicleType vehicle: vehicles) { %>
                                <tr>
                                    <th scope="row"><% out.print(vehicles.indexOf(vehicle)+1); %></th>
                                    <td><%= vehicle.getName() %></td>
                                    
                                    <td>
                                        <a href="./editVehicleType.jsp?id=<%= vehicle.getVehicleTypeId() %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                        <a href="/assignment-client/admin/controller/vehicle/deleteVehicleType.jsp?id=<%= vehicle.getVehicleTypeId() %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
                                    </td>
                                </tr>
                                
                                <% } %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="../../includes/html/footer.jsp" %>

    </body>
</html>
