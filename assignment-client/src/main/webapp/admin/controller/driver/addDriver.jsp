<%-- 
    Document   : addDriver
    Created on : Aug 13, 2022, 5:09:00 PM
    Author     : thilan
--%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
String f_name = request.getParameter("f_name");
String l_name = request.getParameter("l_name");
String mobile = request.getParameter("mobile");
String email  = request.getParameter("email");
String d_license = request.getParameter("d_license");
String nic    = request.getParameter("nic");
    
    HttpSession ses = request.getSession();
    if(adminProxy.addDriver(f_name, l_name,mobile,email,d_license, nic)) {
        ses.setAttribute("success", "Driver added successful");
    } else {
        ses.setAttribute("error", "Driver added failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/driver/addDriver.jsp");


%>