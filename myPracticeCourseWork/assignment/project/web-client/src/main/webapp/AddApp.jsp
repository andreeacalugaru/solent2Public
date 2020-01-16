<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="org.solent.com504.project.impl.webclient.WebClientObjectFactory"%>
<%@page import="org.solent.com504.project.model.service.ServiceFacade"%>


<%
    // used to place error message at top of page 
    String errorMessage = "";
    String message = "";

    // used to set html header autoload time. This automatically refreshes the page
    // Set refresh, autoload time every 20 seconds
    response.setIntHeader("Refresh", 20);

    // accessing service 
    ServiceFacade serviceFacade = (ServiceFacade) WebClientObjectFactory.getServiceFacade();

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
        <title>JSP Client Page for heart beat</title>
    </head>
    <body>
        <!-- works with http://localhost:8080/basicfacadeweb/testHeartbeat.jsp -->
        <H1>Client JSP Page for heart beat</H1>
        <!-- print error message if there is one -->
        <div style="color:red;"><%=errorMessage%></div>
        <div style="color:green;"><%=message%></div>

        <p>The time is: <%= new Date().toString()%> (note page is auto refreshed every 20 seconds)</p>

        <p>Getting heartbeat message: <%= serviceFacade.getHeartbeat()%> (note message is auto refreshed every 20 seconds)</p>
                    
        <h1>Create Appointment Form</h1>
        <input type="text" id="descripton" placeholder="Description" /><br>
        <input type="text" id="personA" placeholder="Person A" /><br>
        <input type="text" id="personB" placeholder="Person B" /><br>
        <input type="text" id="id" placeholder="ID" /><br>
        <input type="text" id="hour" placeholder="Please enter the time" /><br>
        <input type="text" id="Month" placeholder="Please enter the month" /><br>
        <input type="text" id="Year" placeholder="Please enter the year" /><br>
        <input type="text" id="descripton" placeholder="Please enter the minutes" /><br> 
        <input type="button" id="send" value="Add"/>
        <input type="button" id="delete" value="Delete"/>
    
       
    </body>
</html>
