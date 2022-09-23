<%-- 
    Document   : message
    Created on : Aug 13, 2022, 1:21:44 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%  HttpSession ses = request.getSession();

    if (ses.getAttribute("success") != null) { %>

<div class="alert alert-success" role="alert">
    <% out.print(ses.getAttribute("success")); %>
</div>
<% ses.removeAttribute("success"); %>
<% }%>

<% if (ses.getAttribute("error") != null) { %>                        
<div class="alert alert-danger" role="alert">
    <% out.print(ses.getAttribute("error")); %>
</div>
<% ses.removeAttribute("error"); %>
<% }%>
