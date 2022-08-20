<%-- 
    Document   : addVehicle
    Created on : Aug 20, 2022, 2:10:29 PM
    Author     : thilan
--%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    int driverId        = Integer.parseInt(request.getParameter("driver_id"));
    int vehicleTypeId   = Integer.parseInt(request.getParameter("vehicle_type_id"));
    String registerNo   = request.getParameter("register_id");
    double ratePerKm    = Double.parseDouble(request.getParameter("rate_per_rate"));
    
    
    HttpSession ses = request.getSession();
    if(adminProxy.addVehicle(driverId, vehicleTypeId, registerNo, ratePerKm)) {
        ses.setAttribute("success", "Vehicle Type added successful");
    } else {
        ses.setAttribute("error", "Vehicle Type added failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/vehicle/add.jsp");

%>

