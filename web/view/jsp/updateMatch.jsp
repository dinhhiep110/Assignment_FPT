<%-- 
    Document   : updateMatch
    Created on : Nov 4, 2021, 8:46:20 PM
    Author     : Duy Hiep
--%>

<%-- 
    Document   : userprofile
    Created on : Oct 23, 2021, 9:07:33 AM
    Author     : Duy Hiep
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Match</title>
        <link href="../view/css/userprofile.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
      <div class="main-content">
        <!-- Header -->
        <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px;background-image: url(../img/bg-main1.jpg); background-size: cover; background-position: center top;">
          <!-- Mask -->
          <span class="mask bg-gradient-default opacity-8"></span>
          <!-- Header container -->
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-7 col-md-10">
                  <h1 class="display-2 text-white">Game ${requestScope.match.id}</h1>
              </div>
            </div>
          </div>
        </div>
        <!-- Page content -->
        <div class="container-fluid mt--7">
          <div class="row">
            <div class="col-xl-8 order-xl-1">
              <div class="card bg-secondary shadow">
                <div class="card-header bg-white border-0">
                  <div class="row align-items-center">
                    <div class="col-8">
                      <h3 class="mb-0">Update Match</h3>
                    </div>
                  </div>
                </div>
                <div class="card-body">
                    <form action="update" method="Post">
                    <h6 class="heading-small text-muted mb-4">Match information</h6>
                    <div class="pl-lg-4">
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group focused">
                            <label class="form-control-label" for="host">Team Host</label>
                            <select name="host_id" class="form-control form-control-alternative">
                                <c:forEach items="${requestScope.teams}" var="t">
                                    <option value="${t.id}" <c:if test="${requestScope.match.schedule.id eq t.id}">selected="selected"</c:if>
                                            >${t.name}</option>
                                </c:forEach>
                            </select>
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <div class="form-group focused">
                            <label class="form-control-label" for="host">Team Opponent</label>
                            <select name="opponent_id" class="form-control form-control-alternative">
                                <c:forEach items="${requestScope.teams}" var="t">
                                    <option value="${t.id}" <c:if test="${requestScope.match.team_opponent_id eq t.id}">selected="selected"</c:if>
                                            >${t.name}</option>
                                </c:forEach>
                            </select>
                          </div>
                        </div>
                      </div>
                     <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="datematch">Date </label>
                        <input type="date" id="datematch" name="date" class="form-control form-control-alternative" value="${requestScope.match.date}">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="timematch">Time </label>
                        <input type="time" id="timematch" name="time" class="form-control form-control-alternative" value="${requestScope.match.time}">
                      </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                          <label class="form-control-label" for="quantity">Number Tickets Of Match</label>
                          <input type="text" id="quantity" name="quantityTicket" class="form-control form-control-alternative" value="${requestScope.match.numberTicket}">
                        </div>
                     </div>
                  </div>
                    </div> 
                    <hr class="my-4">
                    <input type="submit" class="btn btn-sm btn-primary align-items-center" value="Save change">
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </body>
</html>

