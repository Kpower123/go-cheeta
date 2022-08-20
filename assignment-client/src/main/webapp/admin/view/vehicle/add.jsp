<%-- 
    Document   : add
    Created on : Aug 20, 2022, 1:53:54 PM
    Author     : thilan
--%>
<%@page import="assignment.Vehicle"%>
<%@page import="assignment.VehicleType"%>
<%@page import="assignment.Driver"%>
<%@page import="java.util.List"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<% List<VehicleType> vehicleTypes = adminProxy.getVehicleTypes(); %>
<% List<Driver> drivers = adminProxy.getDrivers(); %>
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
                        <form action="/assignment-client/admin/controller/vehicle/addVehicle.jsp" method="post">
                            
                            <div class="form-group">
                                <label for="vehicle-type">Select Driver</label>
                                <select class="form-control" name="driver_id">
                                    <option value="" selected disabled>Select driver</option>
                                    <% for(Driver driver: drivers){ %>
                                    <option value="<%= driver.getPersonID() %>"><%= driver.getFirstName() %> <%= driver.getLastName() %></option>
                                    <% } %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Select Vehicle Type</label>
                                <select class="form-control" name="vehicle_type_id">
                                    <option value="" selected disabled>Select vehicle type</option>
                                    <% for(VehicleType type: vehicleTypes){ %>
                                    <option value="<%= type.getVehicleTypeId() %>"><%= type.getName() %></option>
                                    <% } %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Register No</label>
                                <input type="text" name="register_id" class="form-control" placeholder="Enter Register No">
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Rate per Km</label>
                                <input type="text" name="rate_per_rate" class="form-control" placeholder="Enter Rate per Km">
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
                            <% List<Vehicle> vehicles = adminProxy.getVehicles(); %>
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Driver Name</th>
                                    <th scope="col">Vehicle Type</th>
                                    <th scope="col">Register No</th>
                                    <th scope="col">Rate Per Km (Rs)</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for(Vehicle vehicle: vehicles) { %>
                                <% Driver driver = adminProxy.getDriverById(vehicle.getDriverId()); %>
                                <% VehicleType type = adminProxy.getVehicleTypeById(vehicle.getVehicleTypeId()); %>
                                <tr>
                                    <th scope="row"><% out.print(vehicles.indexOf(vehicle)+1); %></th>
                                    <td><%= driver.getFirstName() + " " + driver.getLastName()%></td>
                                    <td><%= type.getName() %></td>
                                    <td><%= vehicle.getRegisterNo()%></td>
                                    <td><%= vehicle.getRatePerKm() %></td>
                                    
                                    <td>
                                        <a href="./editVehicle.jsp?id=<%= vehicle.getVehicleId() %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                        <a href="/assignment-client/admin/controller/vehicle/deleteVehicle.jsp?id=<%= vehicle.getVehicleId()%>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
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
