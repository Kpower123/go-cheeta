<%-- 
    Document   : wslAdminConnection
    Created on : Aug 13, 2022, 1:10:17 PM
    Author     : thilan
--%>

<%@page import="assignment.AdminWebService"%>
<%@page import="assignment.AdminWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    AdminWebService_Service admminService = new AdminWebService_Service();
    AdminWebService adminProxy = admminService.getAdminWebServicePort();
%>
