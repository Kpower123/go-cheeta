<%-- 
    Document   : updateVehicle
    Created on : Aug 20, 2022, 1:51:23 PM
    Author     : thilan
--%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    int typeId = Integer.parseInt(request.getParameter("id"));
    String type = request.getParameter("type");
    
    HttpSession ses = request.getSession();
    if(adminProxy.updateVehicleType(typeId, type)) {
        ses.setAttribute("success", "Vehicle Type updated successful");
    } else {
        ses.setAttribute("error", "Vehicle Type update failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/vehicle/addType.jsp");

%>