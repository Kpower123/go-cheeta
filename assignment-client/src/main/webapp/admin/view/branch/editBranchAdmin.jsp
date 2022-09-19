<%-- 
    Document   : editBranchAdmin
    Created on : Aug 20, 2022, 4:52:15 PM
    Author     : kaniya
--%>

<%@page import="assignment.Admin"%>
<%@page import="java.util.List"%>
<%@page import="assignment.Branch"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% List<Branch> branches = adminProxy.getBranches(); %>
<% Admin admin = adminProxy.getBranchAdminById(Integer.parseInt(request.getParameter("id"))); %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Add Branch Admin</title>
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
                        <form action="/assignment-client/admin/controller/branch/updateBranchAdmin.jsp" method="post">
                            
                            <div class="form-group">
                                <label for="vehicle-type">Select Branch</label>
                                <select class="form-control" name="branch_id">
                                    <option value="" selected disabled>Select branch</option>
                                    <%for(Branch branch: branches) { %>
                                    <option value="<%= branch.getBranchId() %>"<% if(branch.getBranchId() == admin.getBranchId()) {
                                                                                    out.print("selected");
                                        }
                                                                            %>><%= branch.getCity() %></option>
                                    <% } %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">First Name</label>
                                <input type="text" name="first_name" class="form-control" placeholder="Enter First Name" value="<%= admin.getFirstName() %>">
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Last Name</label>
                                <input type="text" name="last_name" class="form-control" placeholder="Enter Last Name" value="<%= admin.getLastName() %>">
                            </div>
                                
                            <div class="form-group">
                                <label for="exampleInputEmail1">E-mail</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter email" value="<%= admin.getEmail() %>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Mobile</label>
                                <input type="text" name="mobile" class="form-control" placeholder="Enter mobile" value="<%= admin.getMobile() %>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Fixed Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Enter Admin Password">
                            </div>

                            <div class="form-group">
                                <input name="id" type="hidden" value="<%= admin.getPersonID() %>">
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
