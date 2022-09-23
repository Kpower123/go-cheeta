<%-- 
    Document   : editVehicleType
    Created on : Aug 20, 2022, 1:43:38 PM
    Author     : thilan
--%>

<%@page import="assignment.VehicleType"%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<% VehicleType vehicleType = adminProxy.getVehicleTypeById(Integer.parseInt(request.getParameter("id"))); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Edit Vehicle Type</title>
        
        <%@include file="../../includes/html/header.jsp" %>
    </head>
    <body>

        <%@include file="../../includes/html/sidenav.jsp" %>
        <section class="home-section">
            <%@include file="../../includes/html/navBar.jsp" %>

            <div class="home-content">

                <div class="card m-3 mb-2">
                    <div class="card-body">
                        <%@include file="../../includes/html/message.jsp" %>
                        <form action="/assignment-client/admin/controller/vehicle/updateVehicleType.jsp" method="post">
                            
                            <div class="form-group">
                                <label for="vehicle-type">Vehicle Type</label>
                                <input type="text" name="type" class="form-control" placeholder="Enter Vehicle Type" value="<%= vehicleType.getName() %>">
                            </div>
                            
                            <div class="form-group">
                                <input type="hidden" value="<%= vehicleType.getVehicleTypeId() %>" name="id">
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