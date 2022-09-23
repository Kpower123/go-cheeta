<%-- 
    Document   : registerCustomer
    Created on : Sep 3, 2022, 2:12:55 PM
    Author     : thilan
--%>

<%@page import="assignment.CustomerWebService"%>
<%@page import="assignment.CustomerWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name     = request.getParameter("name");
    String email    = request.getParameter("email");
    String password = request.getParameter("password");
    
    CustomerWebService_Service customerService = new CustomerWebService_Service();
    CustomerWebService customerProxy = customerService.getCustomerWebServicePort();
    
    
    HttpSession ses = request.getSession();
    if(customerProxy.addCustomer(name, email, password)) {
        ses.setAttribute("success", "Customer added successful");
    } else {
        ses.setAttribute("error", "Customer added failed");
    }
    
    response.sendRedirect("/assignment-client/customer/login.jsp");
%>