<%-- 
    Document   : deleteBranchAdmin
    Created on : Aug 20, 2022, 4:47:03 PM
    Author     : thilan
--%>

<%@include file="../../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    int branchIdAdmin = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    
    if(adminProxy.deleteBranchAdmin(branchIdAdmin)) {
        ses.setAttribute("success", "Branch Admin deleted successful");
    } else {
        ses.setAttribute("error", "Branch Admin delete failed");
        
    }
    
    response.sendRedirect("/assignment-client/admin/view/branch/addAdmin.jsp");

%>
