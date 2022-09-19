<%-- 
    Document   : selectDriver
    Created on : Sep 17, 2022, 8:54:21 AM
    Author     : thilan
--%>
<%@page import="assignment.Distance"%>
<%@page import="assignment.Driver"%>
<%@page import="assignment.AdminWebService"%>
<%@page import="assignment.AdminWebService_Service"%>
<%@page import="java.util.List"%>
<%@page import="assignment.Vehicle"%>
<%@page import="assignment.CustomerWebService"%>
<%@page import="assignment.CustomerWebService_Service"%>
<% CustomerWebService_Service customerService = new CustomerWebService_Service(); %>
<% CustomerWebService customerProxy = customerService.getCustomerWebServicePort(); %>
<% AdminWebService_Service admminService = new AdminWebService_Service(); %>
<% AdminWebService adminProxy = admminService.getAdminWebServicePort(); %>
<% List<Vehicle> vehicles = customerProxy.getVehicleByVehicleType(10); %>
<% int pickCity = Integer.parseInt(request.getParameter("pickCity")); %>
<% int dropCity = Integer.parseInt(request.getParameter("dropCity")); %>
<% int vehicleType = Integer.parseInt(request.getParameter("vehicleType")); %>
<% String pickStreet = request.getParameter("pickStreet"); %>
<% String dropStreet = request.getParameter("dropStreet"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Add Vehicle Type</title>
        
        <%@include file="../../../admin/includes/html/header.jsp" %>
    </head>
    <body>

        <%@include file="../../view/include/sideNav.jsp" %>
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
                        <%@include file="../../../admin/includes/html/message.jsp" %>
                        
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">Driver Name</th>
                                    <th scope="col">Driver Mobile</th>
                                    <th scope="col">Distance</th>
                                    <th scope="col">Estimated Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for(Vehicle vehicle: vehicles){ %>
                                <% Driver driver  = adminProxy.getDriverById(vehicle.getDriverId()); %>
                                <% Distance distance = customerProxy.getDiatanceByDropAndPickCity(Integer.parseInt(request.getParameter("pickCity")), Integer.parseInt(request.getParameter("dropCity"))); %>
                                <tr>
                                    <td><%= driver.getFirstName() + " " + driver.getLastName() %></td>
                                    <td><%= driver.getMobile() %></td>
                                    <td><%= distance.getDistance() %></td>
                                    <td><%= vehicle.getRatePerKm() * distance.getDistance() %></td>
                                    <td>
                                        <a href="/assignment-client/customer/controller/booking/acceptDriver.jsp?pickCity=<%= pickCity %>&dropCity=<%= dropCity %>&vehicleType=<%= vehicleType %>&pickStreet=<%= pickStreet %>&dropStreet=<%= dropStreet %>&driverId=<%= driver.getPersonID() %>&vehicle_id=<%= vehicle.getVehicleId() %>" class="btn btn-success">Accept</a>
                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="../../../admin/includes/html/footer.jsp" %>

    </body>
</html>