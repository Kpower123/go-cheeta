<%-- 
    Document   : login
    Created on : Sep 16, 2022, 9:09:01 PM
    Author     : kaniya
--%>
<%@page import="assignment.CustomerWebService"%>
<%@page import="assignment.CustomerWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    CustomerWebService_Service customerService = new CustomerWebService_Service();
    CustomerWebService customerProxy = customerService.getCustomerWebServicePort();
    
    
    HttpSession ses = request.getSession();
    if(customerProxy.authCustomer(email, password)) {
        ses.setAttribute("success", "Customer login successful");
        response.sendRedirect("/assignment-client/customer/view/booking/form.jsp");
    } else {
        ses.setAttribute("error", "Customer login failed");
        response.sendRedirect("/assignment-client/customer/login.jsp");
    }
    
    
    
    

%>