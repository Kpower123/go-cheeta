<%-- 
    Document   : menu
    Created on : Sep 17, 2022, 10:18:04 PM
    Author     : thilan
--%>
<%
    
    String email    = "";
    String name     = "";
    int id          = 0;

    HttpSession sesions = request.getSession();
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("DRIVEREMAIL")) {
            email = cookie.getValue();
        }
        if (cookie.getName().equals("DRIVERNAME")) {
            name = cookie.getValue();
        }
        if (cookie.getName().equals("DRIVERID")) {
            id = Integer.parseInt(cookie.getValue());
        }
    }
    
    
    
    if(email == "") {
        sesions.setAttribute("error", "Cookie expired");
        response.sendRedirect("/assignment-client/admin/view/login.jsp");
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
<!--        <li>
            <a href="#" class="
               <% if(request.getRequestURI().equals("/assignment-client/driver/view/index.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-grid-alt' ></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>-->
        
        <li>
            <a href="/assignment-client/driver/view/booking/all.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/driver/view/booking/all.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-box' ></i>
                <span class="links_name">All booking</span>
            </a>
        </li>
    </ul>
</div>
