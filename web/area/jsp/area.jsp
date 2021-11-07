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
    </head>
    <body>
        <h1>${requestScope.name}</h1>
        <form action="area" method="Post">
            Select amount of ticket: <select name="amount ticket">
                <option value="1">1</option>
                <option value="2">2</option> 
            </select><br>
            <% for (int i = 0; i < a.getRow(); i++) {%>
                <% for (int j = 0; j < a.getColumn(); j++) {%>
                <input type="checkbox" value=<%=j%>> 
                <% } %><br>
            <% } %><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
