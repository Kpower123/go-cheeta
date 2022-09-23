<%-- 
    Document   : login
    Created on : Sep 17, 2022, 10:20:13 PM
    Author     : thilan
--%>

<%@page import="assignment.Driver"%>
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
        Driver driver =  driverProxy.getDriverByEmail(email);
        Cookie driverName   = new Cookie("DRIVERNAME", driver.getFirstName() + " " + driver.getLastName());
        Cookie driverEmail  = new Cookie("DRIVEREMAIL", driver.getEmail());
        Cookie driverId     = new Cookie("DRIVERID", String.valueOf(driver.getPersonID()));
        
        driverName.setMaxAge(60 * 60 *24);
        driverEmail.setMaxAge(60 *60 *24);
        driverId.setMaxAge(60 * 60 *24);
        
        driverName.setPath("/");
        driverEmail.setPath("/");
        driverId.setPath("/");
        
        response.addCookie(driverName);
        response.addCookie(driverEmail);
        response.addCookie(driverId);
       
        
        ses.setAttribute("success", "Driver login successful");
        response.sendRedirect("/assignment-client/driver/view/booking/all.jsp");
    } else {
        ses.setAttribute("error", "Driver login failed");
        response.sendRedirect("/assignment-client/driver/view/login.jsp");
    }

    

%>