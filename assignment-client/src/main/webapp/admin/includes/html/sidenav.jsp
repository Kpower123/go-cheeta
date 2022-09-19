<%-- 
    Document   : sidenav
    Created on : Aug 13, 2022, 12:06:31 PM
    Author     : kaniya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <i class='bx bx-box' ></i>
                <span class="links_name">Branch</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/branch/addAdmin.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/branch/addAdmin.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-box' ></i>
                <span class="links_name">Branch Admin</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/driver/addDriver.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/driver/addDriver.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-box' ></i>
                <span class="links_name">Driver</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/vehicle/addType.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/vehicle/addType.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-box' ></i>
                <span class="links_name">Vehicle Type</span>
            </a>
        </li>
        
        <li>
            <a href="/assignment-client/admin/view/vehicle/add.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/vehicle/add.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-box' ></i>
                <span class="links_name">Vehicle</span>
            </a>
        </li>
        
<!--        <li>
            <a href="/assignment-client/admin/view/distance/all.jsp" class="
               <% if(request.getRequestURI().equals("/assignment-client/admin/view/distance/all.jsp")) { %>
               active
               <% } %>">
                <i class='bx bx-box' ></i>
                <span class="links_name">Distance</span>
            </a>
        </li>-->
        
        
        
        
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
