<%-- 
    Document   : login
    Created on : Sep 17, 2022, 10:20:13 PM
    Author     : thilan
--%>

<%@page import="java.net.InetAddress"%>
<%@page import="assignment.DriverWebService_Service"%>
<%@page import="assignment.DriverWebService"%>
<%

    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    DriverWebService_Service driverService = new DriverWebService_Service();
    DriverWebService driverProxy = driverService.getDriverWebServicePort();
    
    
    HttpSession ses = request.getSession();
    if(driverProxy.authDriver(email, password)) {
        ses.setAttribute("success", "Driver login successful");
    } else {
        ses.setAttribute("error", "Driver login failed");
    }

    response.sendRedirect("/assignment-client/driver/view/booking/all.jsp");

%>