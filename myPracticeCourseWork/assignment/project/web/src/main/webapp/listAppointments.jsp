<%-- 
    Document   : listAppointments
    Created on : 16-Jan-2020, 15:46:46
    Author     : 3calua07
--%>
<%@page import="org.solent.com504.project.impl.web.WebObjectFactory"%>
<%@page import="org.solent.com504.project.model.service.ServiceFacade"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%
    // used to place error message at top of page 
    String errorMessage = "";
    // used to set html header autoload time. This automatically refreshes the page
    // Set refresh, autoload time every 20 seconds
    response.setIntHeader("Refresh", 20);
     String actionStr = request.getParameter("action");
     
    ServiceFacade serviceFacade = (ServiceFacade) WebObjectFactory.getServiceFacade();
    List<Appointment> findAll =new ArryList();
  
  
    // if the client throws an error, we will show on page
    try {
        findAll= serviceFacade.getAppointment();
    } catch (Exception ex) {
        errorMessage = ex.getMessage();
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
