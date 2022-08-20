<%-- 
    Document   : addVehicle
    Created on : Aug 20, 2022, 12:54:37 PM
    Author     : thilan
--%>

<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String type = request.getParameter("type");
    
    HttpSession ses = request.getSession();
    if(adminProxy.addVehicleType(type)) {
        ses.setAttribute("success", "Vehicle Type added successful");
    } else {
        ses.setAttribute("error", "Vehicle Type added failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/vehicle/addType.jsp");

%>
