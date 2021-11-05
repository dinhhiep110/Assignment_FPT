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
                                            <option id="host" value="${t.id}" selected="selected">${t.name}</option>
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
                                            <option id="opponent" value="${t.id}">${t.name}</option>
                                        </c:forEach>
                                    </select>
                                    <span class="form-label">Team Opponent</span>
                                </div>
                            </div>
                            <div class="col-md-4" >      
                                <div class="form-group">
                                    <input class="form-control" id="date" type="date" name="date" required="10">
                                    <span class="form-label" >Date</span>
                                </div>
                            </div>
                            
                            <div class="col-md-4" >      
                                <div class="form-group">
                                    <input class="form-control" id="time" type="time" name="time" required="10">
                                    <span class="form-label" >Time</span>
                                </div>
                            </div>
                            
                            <div class="col-md-4" >      
                                <div class="form-group">
                                    <input class="form-control" id="ticket" type="text" name="quantity_ticket">
                                    <span class="form-label" >Number of Ticket</span>
                                </div>
                            </div>
                            
                            <div class="col-md-6" >
                                <div class="form-btn">
                                    <button class="submit-btn" >Insert</button>
                                </div>
                                
                            </div>
                            <div class="col-md-6" >
                                <div class="form-btn">
                                        <button class="btn" onclick="doList();">Check availability</button>
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
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                </tr>
                <%int count = 1; %>
                <c:forEach items="${requestScope.schedule}" var="s">
                <tr style="height: 170px;">
                    <td><%=count++%></td>
                    <td class="schedule-logo">
                        <c:if test="${s.schedule.id eq 1}">
                            <img src="../img/logo_sgh.png" style="height: 8em;">
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
                            <img src="../img/logo_hnb_thidau.png" style="height: 5em;">
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
                            <img src="../img/logo_hnb_thidau.png" style="height: 4.5em;">
                        </c:if>
                    </td>
                    <td>${s.date}</td>
                    <td>${s.time} PM</td>
                    <td>
                        <input type="button" onclick="doUpdate(${s.id});" value="Update" >
                    </td>
                    <td>
                        <input type="button" onclick="doDelete(${s.id});" value="Delete" >
                    </td>
                    
                </tr>
                </c:forEach>
                
            </tbody></table>
                    
                    </div> 
               </div>
        </div>
    </div>
    </c:if>
    
</body>
    
        <script>
            <c:if test="${requestScope.error != null}">
            alert("${requestScope.error}");
            window.location.href = "schedule";
             </c:if>
            

            
            function doUpdate(id) {
            window.location.href = "update?id=" + id;
            }

            function doDelete(id) {
                var c = confirm("Are you sure");
                if(c){
                    window.location.href = "delete?id=" + id;
                }
            }
            
            function doList() {
                window.location.href = "list";
            }
        </script>
    

</html>
