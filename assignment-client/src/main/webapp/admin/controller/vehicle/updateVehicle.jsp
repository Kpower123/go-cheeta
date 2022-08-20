<%-- 
    Document   : updateVehicle
    Created on : Aug 20, 2022, 3:35:23 PM
    Author     : thilan
--%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    int vehicleId       = Integer.parseInt(request.getParameter("id"));
    int driverId        = Integer.parseInt(request.getParameter("driver_id"));
    int vehicleTypeId   = Integer.parseInt(request.getParameter("vehicle_type_id"));
    String registerNo   = request.getParameter("register_id");
    double ratePerKm    = Double.parseDouble(request.getParameter("rate_per_rate"));
    
    
    HttpSession ses = request.getSession();
    if(adminProxy.updateVehicle(vehicleId, driverId, vehicleTypeId, registerNo, ratePerKm)) {
        ses.setAttribute("success", "Vehicle Type updated successful");
    } else {
        ses.setAttribute("error", "Vehicle Type update failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/vehicle/add.jsp");

%>
