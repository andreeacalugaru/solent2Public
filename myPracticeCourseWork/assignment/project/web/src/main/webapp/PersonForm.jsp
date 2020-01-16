<%-- 
    Document   : listOfPeople
    Created on : 16-Jan-2020, 13:47:30
    Author     : 3calua07
--%>
<%@page import="org.solent.com504.project.impl.web.WebObjectFactory"%>
<%@page import="org.solent.com504.project.model.service.ServiceFacade"%>
<%
    // used to place error message at top of page 
    String errorMessage = "";
    String message = "";

    // used to set html header autoload time. This automatically refreshes the page
    // Set refresh, autoload time every 20 seconds
    response.setIntHeader("Refresh", 20);

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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Person form </title>
    </head>
    <body>
         <!-- works with http://localhost:8080/basicfacadeweb/testHeartbeat.jsp -->
        <H1>JSP Server Page for heart beat</H1>
        <!-- print error message if there is one -->
        <div style="color:red;"><%=errorMessage%></div>
        <div style="color:green;"><%=message%></div>
        <div>
            <input type="text" id="id" placeholder="Person ID" /><br>
            <input type="text" id="firstName" placeholder="First Name"/><br>
            <input type="text" id="secondName" placeholder="Second Name"/><br>
            <input type="text" id="role" placeholder="Role"/><br>
            <input type="text" id="address" placeholder="Address"/><br>
            <input type="button" id="add" value="Add"/>
             <input type="button" id="delete" value="Delete"/>
            
            
        </div>
    </body>
</html>
