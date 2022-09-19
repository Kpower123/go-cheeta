<%-- 
    Document   : addBranch
    Created on : Aug 13, 2022, 12:13:59 PM
    Author     : kaniya
--%>
<%@page import="java.util.List"%>
<%@page import="assignment.Branch"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <form action="/assignment-client/admin/controller/branch/addBranch.jsp" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">E-mail</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter email">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Mobile</label>
                                <input type="text" name="mobile" class="form-control" placeholder="Enter mobile">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Fixed Line</label>
                                <input type="text" name="fixed_line" class="form-control" placeholder="Enter fixed line">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Address Line 1</label>
                                <input type="text" name="addresss_line" class="form-control" placeholder="Enter address line">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">City</label>
                                <input type="text" name="city" class="form-control" placeholder="Enter city">
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
                            <% List<Branch> branches = adminProxy.getBranches(); %>
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">E-mail</th>
                                    <th scope="col">Mobile</th>
                                    <th scope="col">Fixed Line</th>
                                    <th scope="col">Address Line</th>
                                    <th scope="col">City</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for(Branch branch: branches) { %>
                                
                                <tr>
                                    <th scope="row"><% out.print(branches.indexOf(branch)+1); %></th>
                                    <td><% out.print(branch.getEmail()); %></td>
                                    <td><% out.print(branch.getMobile()); %></td>
                                    <td><% out.print(branch.getFixedLine()); %></td>
                                    <td><% out.print(branch.getAddressLine()); %></td>
                                    <td><% out.print(branch.getCity()); %></td>
                                    <td>
                                        <a href="./editBranch.jsp?id=<% out.print(branch.getBranchId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                        <a href="/assignment-client/admin/controller/branch/deleteBranch.jsp?id=<% out.print(branch.getBranchId()); %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
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