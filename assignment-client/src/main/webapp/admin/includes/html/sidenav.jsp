<%-- 
    Document   : sidenav
    Created on : Aug 13, 2022, 12:06:31 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String email    = "";
    String name     = "";
    int id          = 0;

    HttpSession sesions = request.getSession();
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ADMINEMAIL")) {
            email = cookie.getValue();
        }
        if (cookie.getName().equals("ADMINFULLNAME")) {
            name = cookie.getValue();
        }
        if (cookie.getName().equals("ADMINID")) {
            id = Integer.parseInt(cookie.getValue());
        }
    }
    
    
    
    if(email == "") {
        sesions.setAttribute("error", "Cookie expired");
        response.sendRedirect("/assignment-client/admin/view/login.jsp");
    }

%>
<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxl-c-plus-plus'></i>
        <span class="logo_name">GO-CHEETA</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="/assignment-client/admin/view/index.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/index.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-grid-alt'></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/branch/addBranch.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/branch/addBranch.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-git-branch' ></i>
                <span class="links_name">Branch</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/branch/addAdmin.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/branch/addAdmin.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-group' ></i>
                <span class="links_name">Branch Admin</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/driver/addDriver.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/driver/addDriver.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-user-plus' ></i>
                <span class="links_name">Driver</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/vehicle/addType.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/vehicle/addType.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-search' ></i>
                <span class="links_name">Vehicle Type</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/vehicle/add.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/vehicle/add.jsp")) { %>
               active
               <% } %>">
                <i class='bx bxs-car-crash' ></i>
                <span class="links_name">Vehicle</span>
            </a>
        </li>
    </ul>
</div>
