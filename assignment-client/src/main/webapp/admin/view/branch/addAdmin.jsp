<%-- 
    Document   : addAdmin
    Created on : Aug 20, 2022, 3:39:25 PM
    Author     : thilan
--%>

<%@page import="assignment.Admin"%>
<%@page import="java.util.List"%>
<%@page import="assignment.Branch"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% List<Branch> branches = adminProxy.getBranches(); %>
<% List<Admin> admins = adminProxy.getBranchAdmin(); %>
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
                        <form action="/assignment-client/admin/controller/branch/addBranchAdmin.jsp" method="post">
                            
                            <div class="form-group">
                                <label for="vehicle-type">Select Branch</label>
                                <select class="form-control" name="branch_id">
                                    <option value="" selected disabled>Select branch</option>
                                    <%for(Branch branch: branches) { %>
                                    <option value="<%= branch.getBranchId() %>"><%= branch.getCity() %></option>
                                    <% } %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">First Name</label>
                                <input type="text" name="first_name" class="form-control" placeholder="Enter First Name">
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Last Name</label>
                                <input type="text" name="last_name" class="form-control" placeholder="Enter Last Name">
                            </div>
                                
                            <div class="form-group">
                                <label for="exampleInputEmail1">E-mail</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter email">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Mobile</label>
                                <input type="text" name="mobile" class="form-control" placeholder="Enter mobile">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Fixed Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Enter Admin Password">
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary w-md">Save</button>
                            </div>

                        </form>
                    </div>
                </div>


                <div class="card m-3 mb-2">
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    
                                    <th scope="col">First Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">E-mail</th>
                                    <th scope="col">Mobile</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for(Admin admin: admins) { %>
                                
                                <tr>
                                    <th scope="row"><% out.print(admins.indexOf(admin)+1); %></th>
                                    
                                    <td><% out.print(admin.getFirstName()); %></td>
                                    <td><% out.print(admin.getLastName()); %></td>
                                    <td><% out.print(admin.getEmail()); %></td>
                                    <td><% out.print(admin.getMobile()); %></td>
                                    
                                    <td>
                                        <a href="./editBranchAdmin.jsp?id=<% out.print(admin.getBranchId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                        <a href="/assignment-client/admin/controller/branch/deleteBranchAdmin.jsp?id=<% out.print(admin.getBranchId()); %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
                                    </td>
                                </tr>
                                
                                <% } %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="../../includes/html/footer.jsp" %>

    </body>
</html>