<%-- 
    Document   : deleteVehicleType
    Created on : Aug 20, 2022, 1:20:46 PM
    Author     : thilan
--%>

<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int typeId = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    if(adminProxy.deleteVehicleType(typeId)) {
        ses.setAttribute("success", "Delete vehicle type successful");
    } else {
        ses.setAttribute("error", "Delete vehicle type failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/vehicle/addType.jsp");

%>
