<%-- 
    Document   : teamlist
    Created on : Nov 4, 2021, 2:43:12 PM
    Author     : Duy Hiep
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Team List Page</title>
        
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
                        <form id="schedule-form" action="list" method="Post">
                            <div class="col-md-5" style="float:none;margin:auto;">
                                <div class="form-group">
                                    <span class="form-label">Select Team</span>
                                    <select name="id" class="form-control">
                                        <c:forEach items="${requestScope.teams}" var="t"> 
                                            <option value="${t.id}" selected="selected">${t.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                
                                <div class="form-btn">
                                    <button class="submit-btn" >Search</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>    
        
        <c:if test="${requestScope.schedule != null}">
         <div id="display-schedule" class="section">
        <div class="section-center">
            <div class="container">
                <div class="row">
    
            <table class="schedule-tbl" width="100%">
                <tbody><tr>
                    <th>Trận</th>
                    <th>Game</th>
                    <th>Ngày</th>
                    <th>Thời gian</th>
                </tr>
                <%int count = 1; %>
                <c:forEach items="${requestScope.schedule}" var="s">
                <tr style="height: 170px;">
                    <td><%=count++%></td>
                    <td class="schedule-logo">
                        <c:if test="${s.schedule.id eq 1}">
                            <img src="../img/logo_sgh.png" style="height: 7em;">
                        </c:if>    
                        <c:if test="${s.schedule.id eq 2}">
                            <img src="../img/logo_tlw.png" style="height: 7em;">
                        </c:if>  
                        <c:if test="${s.schedule.id eq 3}">
                            <img src="../img/logo_dnd.png" style="height: 7em;">
                        </c:if>  
                        <c:if test="${s.schedule.id eq 4}">
                            <img src="../img/logo_hcm_thidau.png" style="height: 7em;">
                        </c:if>  
                        <c:if test="${s.schedule.id eq 5}">
                            <img src="../img/logo_ctc.png" style="height: 7em;">
                        </c:if>  
                        <c:if test="${s.schedule.id eq 6}">
                            <img src="../img/logo_hnb.png" style="height: 7em;">
                        </c:if> 
                            
                        <img src="https://tkbvn-tokyo.s3.amazonaws.com/static-page/img/vba-vs.png">
                        
                         <c:if test="${s.team_opponent_id eq 1}">
                            <img src="../img/logo_sgh.png" style="height: 8em;">
                        </c:if>    
                        <c:if test="${s.team_opponent_id eq 2}">
                            <img src="../img/logo_tlw.png" style="height: 7em;">
                        </c:if>  
                        <c:if test="${s.team_opponent_id eq 3}">
                            <img src="../img/logo_dnd.png" style="height: 7em;">
                        </c:if>  
                        <c:if test="${s.team_opponent_id eq 4}">
                            <img src="../img/logo_hcm_thidau.png" style="height: 7em;">
                        </c:if>  
                        <c:if test="${s.team_opponent_id eq 5}">
                            <img src="../img/logo_ctc.png" style="height: 7em;">
                        </c:if>  
                        <c:if test="${s.team_opponent_id eq 6}">
                            <img src="../img/logo_hnb.png" style="height: 7em;">
                        </c:if>
                    </td>
                    <td>${s.date}</td>
                    <td>${s.time} PM</td>
                    
                </tr>
                </c:forEach>
                
            </tbody></table>
                    
                    </div> 
               </div>
        </div>
    </div>
        </c:if>
    </body>
</html>
