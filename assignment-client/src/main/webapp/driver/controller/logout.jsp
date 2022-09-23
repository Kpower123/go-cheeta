<%-- 
    Document   : logout
    Created on : Sep 22, 2022, 11:25:58 PM
    Author     : thilan
--%>

<%
    
    HttpSession ses = request.getSession();
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("DRIVEREMAIL")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        if (cookie.getName().equals("DRIVERNAME")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        if (cookie.getName().equals("DRIVERID")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    
    ses.setAttribute("success", "Driver Logout Success");
    response.sendRedirect("/assignment-client/driver/view/login.jsp");    
    


%>