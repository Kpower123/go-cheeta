<%-- 
    Document   : updateBranchAdmin
    Created on : Aug 20, 2022, 4:57:58 PM
    Author     : thilan
--%>

<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int adminId             = Integer.parseInt(request.getParameter("id"));
    int branchId            = Integer.parseInt(request.getParameter("branch_id"));
    String firstName        = request.getParameter("first_name");
    String lastName         = request.getParameter("last_name");
    String email            = request.getParameter("email");
    String mobile           = request.getParameter("mobile");
    String password         = request.getParameter("password");
    
    HttpSession ses = request.getSession();
    
    if(adminProxy.updateBranchAdmin(adminId, branchId, firstName, lastName, email, mobile, password)) {
        ses.setAttribute("success", "Branch Admin updated successful");
    } else {
        ses.setAttribute("error", "Branch Admin updated failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/branch/addAdmin.jsp");



%>