<%-- 
    Document   : logout
    Created on : Sep 22, 2022, 10:31:42 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession ses = request.getSession();
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ADMINEMAIL")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        if (cookie.getName().equals("ADMINFULLNAME")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        if (cookie.getName().equals("ADMINID")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    
    ses.setAttribute("success", "Admin Logout Success");
    response.sendRedirect("/assignment-client/admin/view/login.jsp");

%>