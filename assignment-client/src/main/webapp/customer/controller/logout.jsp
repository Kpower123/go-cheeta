<%-- 
    Document   : logout
    Created on : Sep 22, 2022, 12:06:27 AM
    Author     : thilan
--%>

<%
    
    HttpSession ses = request.getSession();
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("CUSTOMEREMAIL")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        if (cookie.getName().equals("CUSTOMERNAME")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        if (cookie.getName().equals("CUSTOMERID")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    
    ses.setAttribute("success", "Customer Logout Success");
    response.sendRedirect("/assignment-client/customer/login.jsp");    
    


%>