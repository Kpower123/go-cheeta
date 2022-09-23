<%-- 
    Document   : form
    Created on : Sep 16, 2022, 9:28:17 PM
    Author     : thilan
--%>

<%@page import="assignment.VehicleType"%>
<%@page import="assignment.Branch"%>
<%@page import="java.util.List"%>
<%@page import="assignment.AdminWebService"%>
<%@page import="assignment.AdminWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% AdminWebService_Service admminService = new AdminWebService_Service(); %>
<% AdminWebService adminProxy = admminService.getAdminWebServicePort(); %>
<% List<Branch> branches = adminProxy.getBranches(); %>
<% List<VehicleType> vehicleTypes = adminProxy.getVehicleTypes(); %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Add Vehicle Type</title>
        
        <%@include file="../../../admin/includes/html/header.jsp" %>
    </head>
    <body>

        <%@include file="../../view/include/sideNav.jsp" %>
        <section class="home-section">
            <%@include file="../../view/include/navBar.jsp" %>

            <div class="home-content">

                <div class="card m-3 mb-2">
                    <div class="card-body">
                        <%@include file="../../../admin/includes/html/message.jsp" %>
                        <form action="/assignment-client/customer/controller/booking/form.jsp" method="post">
                            
                            <div class="form-group">
                                <label for="vehicle-type">Pick Street</label>
                                <input type="text" name="pick_street" class="form-control" placeholder="Enter Pick Street">
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Select Pick City</label>
                                <select class="form-control" name="pick_city">
                                    <option value="" selected disabled>Select City</option>
                                    <% for(Branch branch: branches){ %>
                                        <option value="<%= branch.getBranchId() %>"><%= branch.getCity() %></option>
                                    <% } %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Drop Street</label>
                                <input type="text" name="drop_street" class="form-control" placeholder="Enter Drop Street">
                            </div>
                            
                            <div class="form-group">
                                <label for="vehicle-type">Select Drop City</label>
                                <select class="form-control" name="drop_city">
                                    <option value="" selected disabled>Select City</option>
                                    <% for(Branch branch: branches){ %>
                                        <option value="<%= branch.getBranchId() %>"><%= branch.getCity() %></option>
                                    <% } %>
                                </select>
                            </div>
                                
                            <div class="form-group">
                                <label for="vehicle-type">Select Vehicle Type</label>
                                <select class="form-control" name="vehilce_type">
                                    <option value="" selected disabled>Select City</option>
                                    <% for(VehicleType type: vehicleTypes){ %>
                                        <option value="<%= type.getVehicleTypeId() %>"><%= type.getName() %></option>
                                    <% } %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary w-md">Save</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="../../../admin/includes/html/footer.jsp" %>

    </body>
</html>