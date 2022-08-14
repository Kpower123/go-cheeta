<%-- 
    Document   : deleteBranch
    Created on : Aug 13, 2022, 2:26:53 PM
    Author     : thilan
--%>

<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

    int branchId = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    
    if(adminProxy.deleteBranch(branchId)) {
        ses.setAttribute("success", "Branch deleted successful");
    } else {
        ses.setAttribute("error", "Branch delete failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/branch/addBranch.jsp");

%>

