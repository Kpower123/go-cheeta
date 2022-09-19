<%-- 
    Document   : complete
    Created on : Sep 18, 2022, 12:49:34 AM
    Author     : thilan
--%>

<%@page import="assignment.DriverWebService"%>
<%@page import="assignment.DriverWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int bookingId = Integer.parseInt(request.getParameter("booking_id"));

    DriverWebService_Service driverService = new DriverWebService_Service();
    DriverWebService driverProxy = driverService.getDriverWebServicePort();
    
    HttpSession ses = request.getSession();
    if(driverProxy.completeBooking(bookingId)) {
        ses.setAttribute("success", "Booking completed successful");
    } else {
        ses.setAttribute("error", "Booking completed failed");
    }
    
    response.sendRedirect("/assignment-client/driver/view/booking/all.jsp");
%>
