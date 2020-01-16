<%-- 
    Document   : AddAppointment
    Created on : 16-Jan-2020, 15:32:39
    Author     : 3calua07
--%>

<%@page import="org.solent.com504.project.impl.web.WebObjectFactory"%>
<%@page import="org.solent.com504.project.model.service.ServiceFacade"%>
<%@page import="java.util.List"%>


<%
    // used to place error message at top of page 
    String errorMessage = "";
    String message = "";
    // accessing service 
     ServiceFacade  serviceFacade = ( ServiceFacade) WebObjectFactory.getServiceFacade();
    List<String> supportedAnimalTypes = serviceFacade.getPersonDAO();
    // accessing request parameters
    String actionStr = request.getParameter("action");
    String personAStr = request.getParameter("Person A");
    String personBStr = request.getParameter("person B");
    // basic error checking before making a call
    if (actionStr == null) {
        // redirect back to home page
        response.sendRedirect("./farm2.jsp");
    } else if ("AddAppointment".equals(actionStr)) {
        if (personAStr == null || personAStr.isEmpty() || personBStr == null || personBStr.isEmpty()) {
            errorMessage = "ERROR: animalType and animalName must both be set when adding animal.";
        } else {
            if (serviceFacade.getPersonDAO(personAStr) != null) {
                errorMessage = "ERROR: you cannot have dupicate  names (" + personAStr + ")";
            } else {
                serviceFacade.addPersonDAO(personBStr, personAStr);
                response.sendRedirect("./AddAppointment.jsp");
            }
        }
    } else if ("AddAppointment".equals(actionStr)) {
        if (personBStr == null || personAStr.isEmpty()) {
            errorMessage = "ERROR: ";
        }
    } else {
        errorMessage = "ERROR: page called for unknown action";
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Appointment Page</title>
    </head>
    <body>
        <h1>Create Appointment Form</h1>
        <input type="text" id="descripton" placeholder="Description" /><br>
        <input type="text" id="personA" placeholder="Person A" /><br>
        <input type="text" id="personB" placeholder="Person B" /><br>
        <input type="text" id="id" placeholder="ID" /><br>
        <input type="text" id="hour" placeholder="Please enter the time" /><br>
        <input type="text" id="Month" placeholder="Please enter the month" /><br>
        <input type="text" id="Year" placeholder="Please enter the year" /><br>
        <input type="text" id="descripton" placeholder="Please enter the minutes" /><br>  
    </body>
    <div>
         <p> click on <a href="../projectfacadeweb/listAppointments.jsp">list all Appointments</a></p>
    </div>
</html>
