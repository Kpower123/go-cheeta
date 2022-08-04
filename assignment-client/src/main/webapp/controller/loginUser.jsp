<%-- 
    Document   : loginUser
    Created on : Aug 4, 2022, 6:11:11 PM
    Author     : kaniya
--%>

<%@page import="assignment.UserWebService"%>
<%@page import="assignment.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String mobile       = request.getParameter("mobile");    
    String password     = request.getParameter("password");
    
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService proxy = service.getUserWebServicePort();
       
    
    HttpSession ses = request.getSession();
    
    if (proxy.authUser(mobile, password)) {
        ses.setAttribute("success", "User login Successfully");
    } else {
        ses.setAttribute("error", "User login unsuccessful. Please try again");
    }
    
    response.sendRedirect("/assignment-client/index.jsp");

%>