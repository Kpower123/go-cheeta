<%-- 
    Document   : sideNav
    Created on : Sep 17, 2022, 9:49:51 PM
    Author     : thilan
--%>
<%
    
    String email    = "";
    String name     = "";
    int id          = 0;

    HttpSession sesions = request.getSession();
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("CUSTOMEREMAIL")) {
            email = cookie.getValue();
        }
        if (cookie.getName().equals("CUSTOMERNAME")) {
            name = cookie.getValue();
        }
        if (cookie.getName().equals("CUSTOMERID")) {
            id = Integer.parseInt(cookie.getValue());
        }
    }
    
    if(email == "") {
        sesions.setAttribute("error", "Cookie expired");
        response.sendRedirect("/assignment-client/customer/login.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxl-c-plus-plus'></i>
        <span class="logo_name">GO-CHEETA</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="/assignment-client/customer/view/booking/form.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/customer/view/booking/form.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-grid-alt' ></i>
                <span class="links_name">New Booking</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/customer/view/booking/all.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/customer/view/booking/all.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-bookmark-alt-plus' ></i>
                <span class="links_name">All booking</span>
            </a>
        </li>               
        
        
        
        
<!--        <li>
            <a href="#">
                <i class='bx bx-list-ul' ></i>
                <span class="links_name">Order list</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-pie-chart-alt-2' ></i>
                <span class="links_name">Analytics</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-coin-stack' ></i>
                <span class="links_name">Stock</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-book-alt' ></i>
                <span class="links_name">Total order</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-user' ></i>
                <span class="links_name">Team</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-message' ></i>
                <span class="links_name">Messages</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-heart' ></i>
                <span class="links_name">Favrorites</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-cog' ></i>
                <span class="links_name">Setting</span>
            </a>
        </li>
        <li class="log_out">
            <a href="#">
                <i class='bx bx-log-out'></i>
                <span class="links_name">Log out</span>
            </a>
        </li>-->
    </ul>
</div>
