<%-- 
    Document   : editVehicle
    Created on : Aug 20, 2022, 3:30:51 PM
    Author     : thilan
--%>

<%@page import="java.util.List"%>
<%@page import="assignment.VehicleType"%>
<%@page import="assignment.Driver"%>
<%@page import="assignment.Vehicle"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<% List<VehicleType> vehicleTypes = adminProxy.getVehicleTypes(); %>
<% List<Driver> drivers = adminProxy.getDrivers(); %>
<% Vehicle vehicle = adminProxy.getVehicleById(Integer.parseInt(request.getParameter("id"))); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Update Vehicle Type</title>
        
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
                        <form action="/assignment-client/admin/controller/vehicle/updateVehicle.jsp" method="post">
                            
                            <div class="form-group">
                                <label for="vehicle-type">Select Driver</label>
                                <select class="form-control" name="driver_id">
                                    <option value="" selected disabled>Select driver</option>
                                    <% for(Driver driver: drivers){ %>
                                    <option value="<%= driver.getPersonID() %>"
                                                                                <% if(vehicle.getDriverId() == driver.getPersonID()) {
                                                                                        out.print("selected");
                                                                                    }
                                                                                %>><%= driver.getFirstName() %> <%= driver.getLastName() %></option>
                                    <% } %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Select Vehicle Type</label>
                                <select class="form-control" name="vehicle_type_id">
                                    <option value="" selected disabled>Select vehicle type</option>
                                    <% for(VehicleType type: vehicleTypes){ %>
                                    <option value="<%= type.getVehicleTypeId() %>" <% if(vehicle.getVehicleTypeId() == type.getVehicleTypeId()) {
                                                                                        out.print("selected");
                                                                                    }
                                                                                %>><%= type.getName() %></option>
                                    <% } %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Register No</label>
                                <input type="text" name="register_id" class="form-control" placeholder="Enter Register No" value="<%= vehicle.getRegisterNo() %>">
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Rate per Km</label>
                                <input type="text" name="rate_per_rate" class="form-control" placeholder="Enter Rate per Km" value="<%= vehicle.getRatePerKm() %>">
                            </div>
                            
                            <div class="form-group">
                                <input value="<%= vehicle.getVehicleId() %>" type="hidden" name="id">
                                <button type="submit" class="btn btn-primary w-md">Save</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="../../includes/html/footer.jsp" %>

    </body>
</html>