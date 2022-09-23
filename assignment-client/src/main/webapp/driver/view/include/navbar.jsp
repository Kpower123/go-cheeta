<%-- 
    Document   : navbar
    Created on : Sep 22, 2022, 11:25:04 PM
    Author     : thilan
--%>

<nav>
    <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
    </div>

    <a class="profile-details" href="/assignment-client/driver/controller/logout.jsp">
        <img src="/assignment-client/assets/images/profile.jpg" alt="profile">
        <!--<a href="url" style="color: inherit; text-decoration: none">Customer LogOut</a>-->
        <span class="admin_name"><%= name %></span>
        <!--<i class='bx bx-chevron-down' ></i>-->
    </a>
</nav>