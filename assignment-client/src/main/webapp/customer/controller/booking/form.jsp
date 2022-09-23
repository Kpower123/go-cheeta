<%-- 
    Document   : form
    Created on : Sep 17, 2022, 8:50:22 AM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String pickStreet = request.getParameter("pick_street");
    String dropStreet = request.getParameter("drop_street");
    int pickCity      = Integer.parseInt(request.getParameter("pick_city"));
    int dropCity      = Integer.parseInt(request.getParameter("drop_city"));
    int vehicleType   = Integer.parseInt(request.getParameter("vehilce_type"));
    

    response.sendRedirect("/assignment-client/customer/view/booking/selectDriver.jsp?pickStreet="+pickStreet+"&dropStreet="+dropStreet+"&pickCity="+pickCity+"&dropCity="+dropCity+"&vehicleType="+vehicleType);
    


%>
