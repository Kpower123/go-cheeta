<%-- 
    Document   : navBar
    Created on : Sep 22, 2022, 11:28:37 PM
    Author     : thilan
--%>

<nav>
    <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
    </div>
    <!--                <div class="search-box">
                        <input type="text" placeholder="Search...">
                        <i class='bx bx-search' ></i>
                    </div>-->
    <a class="profile-details" href="/assignment-client/admin/controller/logout.jsp">
        <img src="/assignment-client/assets/images/profile.jpg" alt="profile">
        <span class="admin_name"><%= name%></span>
        <!--<i class='bx bx-chevron-down' ></i>-->
    </a>
</nav>
