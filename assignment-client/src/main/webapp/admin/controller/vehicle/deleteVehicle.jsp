<%-- 
    Document   : deleteVehicle
    Created on : Aug 20, 2022, 3:23:59 PM
    Author     : thilan
--%>

<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int vehicleId = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    if(adminProxy.deleteVehicle(vehicleId)) {
        ses.setAttribute("success", "Delete vehicle successful");
    } else {
        ses.setAttribute("error", "Delete vehicle failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/vehicle/add.jsp");

%>