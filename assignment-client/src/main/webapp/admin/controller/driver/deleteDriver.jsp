<%-- 
    Document   : deleteDriver
    Created on : Aug 19, 2022, 6:15:38 PM
    Author     : kaniya
--%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int driverId = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    if(adminProxy.deleteDriver(driverId)) {
        ses.setAttribute("success", "Driver deleted successful");
    } else {
        ses.setAttribute("error", "Driver delete failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/driver/addDriver.jsp");
%>
