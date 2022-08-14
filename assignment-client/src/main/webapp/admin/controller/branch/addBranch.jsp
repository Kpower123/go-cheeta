<%-- 
    Document   : addBranch
    Created on : Aug 13, 2022, 12:39:43 PM
    Author     : thilan
--%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
    String email            = request.getParameter("email");
    String mobile           = request.getParameter("mobile");
    String fixedLine        = request.getParameter("fixed_line");
    String addresssLine     = request.getParameter("addresss_line");
    String city             = request.getParameter("city");
    
    HttpSession ses = request.getSession();
    
    if(adminProxy.addBranch(email, mobile, fixedLine, addresssLine, city)) {
        ses.setAttribute("success", "Branch added successful");
    } else {
        ses.setAttribute("error", "Branch added failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/branch/addBranch.jsp");



%>
