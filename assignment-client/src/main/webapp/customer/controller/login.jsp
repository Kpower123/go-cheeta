<%-- 
    Document   : login
    Created on : Sep 16, 2022, 9:09:01 PM
    Author     : thilan
--%>
<%@page import="assignment.Customer"%>
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
        Customer customer = customerProxy.getCustomerByEmail(email);
        Cookie userEmail        = new Cookie("CUSTOMEREMAIL", email);
        Cookie customerName     = new Cookie("CUSTOMERNAME", customer.getName());
        Cookie customerId       = new Cookie("CUSTOMERID", String.valueOf(customer.getCustomerId()));
        
        userEmail.setPath("/");
        customerName.setPath("/");
        customerId.setPath("/");
        userEmail.setMaxAge(60 * 60 * 24);
        customerName.setMaxAge(60 * 60 *24);
        customerId.setMaxAge(60 * 60 *24);
        response.addCookie(userEmail);
        response.addCookie(customerName);
        response.addCookie(customerId);
        
        ses.setAttribute("success", "Customer login successful");
        response.sendRedirect("/assignment-client/customer/view/booking/form.jsp");
    } else {
        ses.setAttribute("error", "Customer login failed");
        response.sendRedirect("/assignment-client/customer/login.jsp");
    }
    

%>