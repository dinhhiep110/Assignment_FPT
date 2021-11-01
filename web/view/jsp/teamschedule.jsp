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
</head>

<body>
    <div id="schedule" class="section">
        <div class="section-center">
            <div class="container">
                <div class="row">
                    <div class="update-schedule" >   
                        <form id="schedule-form" action="schedule" method="Post">
                            <div class="select_team col-md-12">      
                                <div class="form-group">
                                    <span class="form-label" style="text-align: center">Schedule for each teams</span>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <select name="team_host" class="form-control">
                                        <c:forEach items="${requestScope.teams}" var="t"> 
                                            <option value="${t.id}" selected="selected">${t.name}</option>
                                        </c:forEach>
                                    </select>
                                    <span class="form-label">Team Host</span>
                                </div>
                            </div>
                            <div class="col-md-2" >      
                                    <div class="form-group">
                                        <span class="form-label versus" style="text-align: center">VS</span>
                                    </div>
                                </div>
                            
                             <div class="col-md-5">
                                <div class="form-group">
                                    <select name="team_opponent" class="form-control">
                                        <c:forEach items="${requestScope.teams}" var="t"> 
                                            <option value="${t.id}">${t.name}</option>
                                        </c:forEach>
                                    </select>
                                    <span class="form-label">Team Opponent</span>
                                </div>
                            </div>
                            <div class="col-md-4" >      
                                <div class="form-group">
                                    <input class="form-control" type="date" name="date">
                                    <span class="form-label" >Date</span>
                                </div>
                            </div>
                            
                            <div class="col-md-4" >      
                                <div class="form-group">
                                    <input class="form-control" type="time" name="time">
                                    <span class="form-label" >Time</span>
                                </div>
                            </div>
                            
                            <div class="col-md-4" >      
                                <div class="form-group">
                                    <input class="form-control" type="text" name="quantity_ticket">
                                    <span class="form-label" >Number of Ticket</span>
                                </div>
                            </div>
                            
                            <div class="col-md-4" style="float:none;margin:auto;">
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
    
       
    
</body>
    <c:if test="${requestScope.error != null}">
        <script>
            alert("${requestScope.error}");
            window.location.href = "schedule";
        </script>
    </c:if>

</html>
