<%-- 
    Document   : teamschedule
    Created on : Oct 26, 2021, 3:39:19 PM
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

	<title>Team Schedule Page</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,600" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="../view/css/bootstrap.min.css" />
	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="../view/css/teamschedule.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>
    <div id="schedule" class="section">
        <div class="section-center">
            <div class="container">
                <div class="row">
                    <div class="update-schedule">
                        <c:forEach items="${requestScope.teams}" var="t">
                            <nav id="${t.id}" class="navbar navbar-light col-md-2" onclick="StayHover(${t.id})">
                                <div class="form-group">
                                    <span class="form-label" style="text-align: center">${t.name}</span>
                                </div>
                            </nav>
                        </c:forEach>
                        <form id="schedule-form" action="schedule" method="Post">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Enter Address, zip, city or airport">
                                    <span class="form-label">Destination</span>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <select class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                    </select>
                                    <span class="select-arrow"></span>
                                    <span class="form-label">Guests</span>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <select class="form-control">
                                            <option>0</option>
                                            <option>1</option>
                                            <option>2</option>
                                    </select>
                                    <span class="select-arrow"></span>
                                    <span class="form-label">Children</span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <input class="form-control" type="date" required>
                                    <span class="form-label">Check In</span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <input class="form-control" type="date" required>
                                    <span class="form-label">Check out</span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-btn">
                                    <button class="submit-btn">Check availability</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>
    function StayHover(id){
        document.getElementById(id).style.background = "#e3f2fd";
    }
    
    
   
</script>
</body>


</html>
