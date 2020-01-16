<%-- 
    Document   : start
    Created on : 16-Jan-2020, 15:08:06
    Author     : 3calua07
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="org.solent.com504.project.impl.web.WebObjectFactory"%>
<%@page import="org.solent.com504.project.model.service.ServiceFacade"%>


<%
    // used to place error message at top of page 
    String errorMessage = "";
    String message = "";

    // used to set html header autoload time. This automatically refreshes the page
    // Set refresh, autoload time every 20 seconds
    response.setIntHeader("Refresh", 60);

    // accessing service 
    ServiceFacade serviceFacade = (ServiceFacade) WebObjectFactory.getServiceFacade();

    // accessing request parameters
    String actionStr = request.getParameter("action");

    // basic error checking before making a call
    if (actionStr == null || actionStr.isEmpty()) {
        // do nothing

    } else if ("XXX".equals(actionStr)) {
        // put your actions here
    } else {
        errorMessage = "ERROR: page called for unknown action";
    }

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Server Page </title>
    </head>
    <body>
        <!-- works with http://localhost:8080/basicfacadeweb/testHeartbeat.jsp -->
        <H1>Start work</H1>
        <!-- print error message if there is one -->
        <div style="color:red;"><%=errorMessage%></div>
        <div style="color:green;"><%=message%></div>

        <p>The time is: <%= new Date().toString()%> (note page is auto refreshed every 60 seconds)</p>
       
        
        <div>
                    <form action="../projectfacadeweb/testHeartbeat.jsp">
                       <button type="submit">I'am OK</button>
                   </form>
               
                   
                   <form action="../projectfacadeweb/index.html">
                       <button type="submit">I'am leaving Client Home</button>
                   </form>
         
                  
        </p>
        </div>

    </body>
</html>
