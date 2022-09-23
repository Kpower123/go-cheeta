<%-- 
    Document   : login
    Created on : 22 Sept 2022, 10:41:22
    Author     : thilanmaduranga
--%>
<%@page import="assignment.Admin"%>
<%@include file="../includes/wslAdminConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    HttpSession ses = request.getSession();
    if(adminProxy.authAdmin(email, password)) {
        Admin admin  = adminProxy.getAdminByEmail(email);
        Cookie adminEmail = new Cookie("ADMINEMAIL", admin.getEmail());
        Cookie adminName  = new Cookie("ADMINFULLNAME", admin.getFirstName() + " " + admin.getLastName());
        Cookie adminId    = new Cookie("ADMINID", String.valueOf(admin.getPersonID()));
        
        adminEmail.setMaxAge(60 * 60 * 24);
        adminName.setMaxAge(60 * 60 * 24);
        adminId.setMaxAge(60 * 60 * 24);
        
        adminEmail.setPath("/");
        adminName.setPath("/");
        adminId.setPath("/");
        
        response.addCookie(adminEmail);
        response.addCookie(adminName);
        response.addCookie(adminId);
        
        ses.setAttribute("success", "Admin login successful");
        response.sendRedirect("/assignment-client/admin/view/index.jsp");
    } else {
        ses.setAttribute("error", "Admin login failed");
        response.sendRedirect("/assignment-client/admin/view/login.jsp");
    }

%>
