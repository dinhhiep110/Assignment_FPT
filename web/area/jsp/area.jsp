<%-- 
    Document   : area
    Created on : Nov 7, 2021, 11:34:42 AM
    Author     : Duy Hiep
--%>
<%@page import="Model.Area"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Area Page</title>
        <% Area a = (Area) request.getAttribute("area"); %>
        <link href="../area/css/area.css" rel="stylesheet">
        <script src="../area/js/area.js"></script>
    </head>
    <body>
        <h1>${requestScope.name}</h1>
        <div class="booking-container">
            <ul class="showcase">
                <li>
                  <div class="seat"></div>
                  <small>N/A</small>
                </li>

                <li>
                  <div class="seat selected"></div>
                  <small>Selected</small>
                </li>

                <li>
                  <div class="seat occupied"></div>
                  <small>Occupied</small>
                </li>
            </ul>
        </div>
        <div class="container">
            
            <% String hold = "";%>
            <% for (int i = 0; i < a.getRow(); i++) {%>
                <div class="row">
                <% for (int j = 0; j < a.getColumn(); j++) {%>
                <% hold = i + "-" + j;%>
                <div class="seat"></div>
                <% } %><br>
                </div>
            <% } %><br>
            
            
        </div>
        <p class="text">
          You have selected <span id="count">0</span> seats for a price of $<span id="total">0</span>
        </p>
        <script src="../area/js/area.js" type="text/javascript"></script>
    </body>
    
    
</html>
