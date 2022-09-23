<%-- 
    Document   : index
    Created on : Aug 13, 2022, 11:57:19 AM
    Author     : thilan
--%>
<%@page import="assignment.Vehicle"%>
<%@page import="assignment.CustomerWebService"%>
<%@page import="assignment.CustomerWebService_Service"%>
<%@page import="assignment.Distance"%>
<%@page import="java.util.List"%>
<%@page import="assignment.Booking"%>
<%@page import="assignment.Booking"%>
<%@include file="../../admin/includes/wslAdminConnection.jsp" %>
<% CustomerWebService_Service customerService = new CustomerWebService_Service(); %>
<% CustomerWebService customerProxy = customerService.getCustomerWebServicePort(); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title> Responsiive Admin Dashboard | CodingLab </title>
        <!--<link rel="stylesheet" href="style.css">-->
        <link rel="stylesheet" href="/assignment-client/assets/css/style.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <%@include file="../includes/html/sidenav.jsp" %>
        <section class="home-section">            
            <%@include file="../includes/html/navBar.jsp" %>
            <div class="home-content">
                <div class="overview-boxes">
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Total Driver</div>
                            <div class="number"><%= adminProxy.getAllDriverCount() %></div>
                            <div class="indicator">
<!--                                <i class='bx bx-up-arrow-alt'></i>
                                <span class="text">Up from yesterday</span>-->
                            </div>
                        </div>
                        <i class='bx bx-user cart'></i>
                    </div>
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Total Vehicle</div>
                            <div class="number"><%= adminProxy.getAllVehicleCount() %></div>
                            <div class="indicator">
<!--                                <i class='bx bx-up-arrow-alt'></i>
                                <span class="text">Up from yesterday</span>-->
                            </div>
                        </div>
                        <i class='bx bx-cart-booking cart two' ></i>
                    </div>
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Total Customer</div>
                            <div class="number"><%= adminProxy.getAllCustomerCount() %></div>
                            <div class="indicator">
<!--                                <i class='bx bx-up-arrow-alt'></i>
                                <span class="text">Up from yesterday</span>-->
                            </div>
                        </div>
                        <i class='bx bx-user cart three' ></i>
                    </div>
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Total Booking</div>
                            <div class="number"><%= adminProxy.getAllBookingCount() %></div>
                            <div class="indicator">
<!--                                <i class='bx bx-down-arrow-alt down'></i>
                                <span class="text">Down From Today</span>-->
                            </div>
                        </div>
                        <i class='bx bxs-cart-booking cart four' ></i>
                    </div>
                </div>

                <div class="sales-boxes">
                    <div class="recent-sales box">
                        <div class="title">Recent Bookings</div>
                        <% List<Booking> bookings = adminProxy.getLastBookings(); %>
                        <div class="sales-details">
                            <table class="table">
                                <thead>
                                    <th>Vehicle</th>
                                    <th>Pick</th>
                                    <th>Drop</th>
                                    <th>Distance</th>
                                    <th>Price (Rs.)</th>
                                </thead>
                                <tbody>
                                    <% for(Booking booking: bookings){ %>
                                    <% Distance distance = customerProxy.getDiatanceByDropAndPickCity(booking.getPickCity(), booking.getDropCity()); %>
                                    <% Vehicle vehicle = adminProxy.getVehicleById(booking.getVehicleId()); %>
                                        <tr>
                                            <td><%= vehicle.getRegisterNo() %></td>
                                            <td><%= adminProxy.getBranchById(booking.getPickCity()).getCity() %></td>
                                            <td><%= adminProxy.getBranchById(booking.getDropCity()).getCity() %></td>
                                            <td><%= distance.getDistance() %></td>
                                            <td><%= vehicle.getRatePerKm() * distance.getDistance() %></td>
                                        </tr>
                                    <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
<!--                    <div class="top-sales box">
                        <div class="title">Top Seling Product</div>
                        <ul class="top-sales-details">
                            <li>
                                <a href="#">
                                    <img src="images/sunglasses.jpg" alt="">
                                    <span class="product">Vuitton Sunglasses</span>
                                </a>
                                <span class="price">$1107</span>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="images/jeans.jpg" alt="">
                                    <span class="product">Hourglass Jeans </span>
                                </a>
                                <span class="price">$1567</span>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="images/nike.jpg" alt="">
                                    <span class="product">Nike Sport Shoe</span>
                                </a>
                                <span class="price">$1234</span>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="images/scarves.jpg" alt="">
                                    <span class="product">Hermes Silk Scarves.</span>
                                </a>
                                <span class="price">$2312</span>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="images/blueBag.jpg" alt="">
                                    <span class="product">Succi Ladies Bag</span>
                                </a>
                                <span class="price">$1456</span>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="images/bag.jpg" alt="">
                                    <span class="product">Gucci Womens's Bags</span>
                                </a>
                                <span class="price">$2345</span>
                            <li>
                                <a href="#">
                                    <img src="images/addidas.jpg" alt="">
                                    <span class="product">Addidas Running Shoe</span>
                                </a>
                                <span class="price">$2345</span>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="images/shirt.jpg" alt="">
                                    <span class="product">Bilack Wear's Shirt</span>
                                </a>
                                <span class="price">$1245</span>
                            </li>
                        </ul>
                    </div>-->
                </div>
            </div>
        </section>

        <%@include file="../includes/html/footer.jsp" %>

    </body>
</html>
