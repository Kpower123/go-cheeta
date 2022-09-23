<%-- 
    Document   : acceptDriver
    Created on : Sep 17, 2022, 9:44:07 AM
    Author     : thilan
--%>
<%@page import="assignment.CustomerWebService"%>
<%@page import="assignment.CustomerWebService_Service"%>
<% CustomerWebService_Service customerService = new CustomerWebService_Service(); %>
<% CustomerWebService customerProxy = customerService.getCustomerWebServicePort(); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String pickStreet = request.getParameter("pickStreet");
    String dropStreet = request.getParameter("dropStreet");
    int pickCity      = Integer.parseInt(request.getParameter("pickCity"));
    int dropCity      = Integer.parseInt(request.getParameter("dropCity"));
    int vehicleType   = Integer.parseInt(request.getParameter("vehicleType"));
    int driverId      = Integer.parseInt(request.getParameter("driverId"));
    int vehicleId     = Integer.parseInt(request.getParameter("vehicle_id"));
    int customerId    = Integer.parseInt(request.getParameter("user_id"));
    
    HttpSession ses = request.getSession();
    if(customerProxy.acceptBooking(customerId, vehicleId, driverId, pickCity, dropCity, vehicleType, pickStreet, dropStreet)) {
        ses.setAttribute("success", "Booking added successful");
    } else {
        ses.setAttribute("error", "Booking added failed");
    }
    
    response.sendRedirect("/assignment-client/customer/view/booking/all.jsp");

%>
