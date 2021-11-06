<%-- 
    Document   : insertTicket
    Created on : Nov 5, 2021, 4:14:35 PM
    Author     : Duy Hiep
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Ticket Page</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,600" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="../view/css/bootstrap.min.css" />
	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="../view/css/teamschedule.css" />
</head>

<body>
    <div id="schedule" class="section">
        <div class="section-center">
            <div class="container">
                <div class="row">
                    <div class="update-schedule" >   
                        <form id="schedule-form" action="controller" method="Post">
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <select name="area_id" class="form-control">
                                        <c:forEach items="${requestScope.area}" var="a"> 
                                            <option id="host" value="${a.id}">${a.name}</option>
                                        </c:forEach>
                                    </select>
                                    <span class="form-label">Area</span>
                                </div>
                            </div>
                            
                            <div class="col-md-6" >      
                                <div class="form-group">
                                    <input class="form-control" id="priceTicket" type="text" name="price" value="1000000">
                                    <span class="form-label" >Price Of Area Ticket</span>
                                </div>
                            </div>
                            
                            <div class="col-md-4" style="float:none;margin:auto;">
                                <div class="form-btn">
                                        <button class="btn" onclick="">Save change</button>
                                    </div>
                            </div>
                        </form>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>
