<%-- 
    Document   : registerUser
    Created on : Aug 4, 2022, 12:41:23 PM
    Author     : kaniya
--%>

<%@page import="assignment.UserWebService"%>
<%@page import="assignment.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String firstName    = request.getParameter("first_name");
    String lastName     = request.getParameter("last_name");
    String mobile       = request.getParameter("mobile");
    String email        = request.getParameter("email");
    String password     = request.getParameter("password");
    
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService proxy = service.getUserWebServicePort();
       
    
    HttpSession ses = request.getSession();
    
    if (proxy.addUser(firstName, lastName, mobile, email, password)) {
        ses.setAttribute("success", "User registered Successfully");
    } else {
        ses.setAttribute("error", "User registered unsuccessful. Please try again");
    }
    
    response.sendRedirect("/assignment-client/userRegister.jsp");

%>
