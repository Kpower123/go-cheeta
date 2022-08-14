<%-- 
    Document   : updateBranch
    Created on : Aug 13, 2022, 2:08:52 PM
    Author     : thilan
--%>
<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    int branchId            = Integer.parseInt(request.getParameter("id"));
    String email            = request.getParameter("email");
    String mobile           = request.getParameter("mobile");
    String fixedLine        = request.getParameter("fixed_line");
    String addresssLine     = request.getParameter("addresss_line");
    String city             = request.getParameter("city");
       
    
    HttpSession ses = request.getSession();
    
    if(adminProxy.updateBranch(branchId, email, mobile, fixedLine, addresssLine, city)) {
        ses.setAttribute("success", "Branch updated successful");
    } else {
        ses.setAttribute("error", "Branch update failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/branch/addBranch.jsp");

%>
