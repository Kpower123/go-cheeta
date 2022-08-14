<%-- 
    Document   : editBranch
    Created on : Aug 13, 2022, 1:53:07 PM
    Author     : thilan
--%>

<%@page import="assignment.Branch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<% Branch branch = adminProxy.getBranchById(Integer.parseInt(request.getParameter("id"))); %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title> Responsiive Admin Dashboard | CodingLab </title>
        <!--<link rel="stylesheet" href="style.css">-->
        <link rel="stylesheet" href="/assignment-client/assets/css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">

        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>


        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                        <form action="/assignment-client/admin/controller/branch/updateBranch.jsp" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">E-mail</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter email" value="<% out.print(branch.getEmail()); %>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Mobile</label>
                                <input type="text" name="mobile" class="form-control" placeholder="Enter mobile" value="<% out.print(branch.getMobile()); %>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Fixed Line</label>
                                <input type="text" name="fixed_line" class="form-control" placeholder="Enter fixed line" value="<% out.print(branch.getFixedLine()); %>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Address Line 1</label>
                                <input type="text" name="addresss_line" class="form-control" placeholder="Enter address line" value="<% out.print(branch.getAddressLine()); %>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">City</label>
                                <input type="text" name="city" class="form-control" placeholder="Enter city" value="<% out.print(branch.getCity());  %>">
                            </div>

                            <div class="form-group">
                                <input type="hidden" name="id" value="<% out.print(branch.getBranchId());  %>">
                                <button type="submit" class="btn btn-primary w-md">Update</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="../../includes/html/footer.jsp" %>

    </body>
</html>
