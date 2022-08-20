<%-- 
    Document   : addBranchAdmin
    Created on : Aug 20, 2022, 3:50:53 PM
    Author     : thilan
--%>

<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int branchId            = Integer.parseInt(request.getParameter("branch_id"));
    String firstName        = request.getParameter("first_name");
    String lastName         = request.getParameter("last_name");
    String email            = request.getParameter("email");
    String mobile           = request.getParameter("mobile");
    String password         = request.getParameter("password");
    
    HttpSession ses = request.getSession();
    
    if(adminProxy.addBranchAdmin(branchId, firstName, lastName, email, mobile, password)) {
        ses.setAttribute("success", "Branch Admin added successful");
    } else {
        ses.setAttribute("error", "Branch Admin added failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/branch/addAdmin.jsp");



%>
