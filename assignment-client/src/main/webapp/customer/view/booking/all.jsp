<%-- 
    Document   : alla
    Created on : Sep 17, 2022, 7:25:51 PM
    Author     : thilan
--%>
<%@page import="assignment.Vehicle"%>
<%@page import="assignment.Distance"%>
<%@page import="assignment.Driver"%>
<%@page import="assignment.Branch"%>
<%@page import="assignment.AdminWebService"%>
<%@page import="assignment.AdminWebService_Service"%>
<%@page import="assignment.Booking"%>
<%@page import="java.util.List"%>
<%@page import="assignment.CustomerWebService"%>
<%@page import="assignment.CustomerWebService_Service"%>
<% AdminWebService_Service admminService = new AdminWebService_Service(); %>
<% AdminWebService adminProxy = admminService.getAdminWebServicePort(); %>
<% CustomerWebService_Service customerService = new CustomerWebService_Service(); %>
<% CustomerWebService customerProxy = customerService.getCustomerWebServicePort(); %>
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
            <%@include file="../../view/include/navBar.jsp" %>

            <div class="home-content">

                <div class="card m-3 mb-2">
                    <div class="card-body">
                        <%@include file="../../../admin/includes/html/message.jsp" %>
                        
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">Pick Street</th>
                                    <th scope="col">Pick City</th>
                                    <th scope="col">Drop Street</th>
                                    <th scope="col">Drop City</th>
                                    <th scope="col">Driver Name</th>
                                    <th scope="col">Distance</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% List<Booking> bookings = customerProxy.getBookingsByUserId(id); %>
                                <% for(Booking booking: bookings) { %>
                                <% Branch pickBranch  = adminProxy.getBranchById(booking.getPickCity()); %>
                                <% Branch dropBranch = adminProxy.getBranchById(booking.getDropCity()); %>
                                <% Driver driver = adminProxy.getDriverById(booking.getDriverId()); %>
                                <% Vehicle vehicle = adminProxy.getVehicleById(booking.getVehicleId()); %>
                                <% Distance distance = customerProxy.getDiatanceByDropAndPickCity(booking.getPickCity(), booking.getDropCity()); %>
                                <tr>
                                    <td><%= booking.getPickStreet() %></td>
                                    <td><%= pickBranch.getCity() %></td>
                                    <td><%= booking.getDropstreet()%></td>
                                    <td><%= dropBranch.getCity() %></td>
                                    <td><%= driver.getFirstName() + " " + driver.getLastName() %></td>
                                    <td><%= distance.getDistance() %></td>
                                    <td><%= distance.getDistance() * vehicle.getRatePerKm() %></td>
                                    <td>
                                        <% if(booking.getStatus()== 0) { %>
                                            <span class="badge badge-warning">Pending</span>
                                        <% } else if(booking.getStatus() == 1) { %>
                                            <span class="badge badge-warning">Ongoing</span>
                                        <% } else if(booking.getStatus() == 2){ %>
                                            <span class="badge badge-danger">Rejected</span>
                                        <% } else if(booking.getStatus() == 3) { %>
                                            <span class="badge badge-success">Completed</span>
                                        <% } %>
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

