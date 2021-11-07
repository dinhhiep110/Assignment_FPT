<%-- 
    Document   : sghbooking
    Created on : Nov 6, 2021, 5:45:38 PM
    Author     : Duy Hiep
--%>

<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html ng-app="ticketBookingApp" lang="en-VN" ng-controller="ticketBookingController">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <link rel="stylesheet" type="text/css" href="https://static.tkbcdn.com/dist/tkbvn/css/spa/common-libs.css?v=4259">
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.min.css" />
    <title>Booking</title>
    <link rel="stylesheet" href="https://static.tkbcdn.com/dist/tkbvn/css/shared/layoutv2-libs.css?v=4259" />
    <link rel="stylesheet" href="https://static.tkbcdn.com/dist/tkbvn/css/shared/layoutv2.css?v=4259" />
    <link rel="stylesheet" type="text/css" href="https://static.tkbcdn.com/dist/tkbvn/css/spa/ticket-booking.css?v=4259">

</head>

<body class=" event-71094">
   

    <div id="content" class="snap-content box-shadow">
        <div class="relative">
            <div id="welcome-banner" style="display: none">

            </div>
            <!-- cover -->
            <header class="relative cover-image" style="background-image: url(https://static.tkbcdn.com/site/global/content-v2/img/booking/header-bg-02.jpg);">
                <div class="w-100 h-100" tkb-navbar navbar navbar-default>
                    <!-- Navigation -->
                    <div class="container h-100">
                        <div class="row h-100 margin-bottom-0 ">
                            <div class="col-xs-12 h-100 cover-content">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <h1 class="font-bold margin-top-0" >Game ${requestScope.match.id}</h1>
                                        <h3>${requestScope.team.name} vs  
                                          <c:if test="${requestScope.match.team_opponent_id  eq 1}">
                                              SAIGON HEAT
                                        </c:if>    
                                        <c:if test="${requestScope.match.team_opponent_id  eq 2}">
                                            THANGLONG WARRIORS
                                        </c:if>  
                                        <c:if test="${requestScope.match.team_opponent_id  eq 3}">
                                            DANANG DRAGON
                                        </c:if>  
                                        <c:if test="${requestScope.match.team_opponent_id  eq 4}">
                                            HCM CITY WINGS
                                        </c:if>  
                                        <c:if test="${requestScope.match.team_opponent_id  eq 5}">
                                            CANTHO CATFISH
                                        </c:if>  
                                        <c:if test="${requestScope.match.team_opponent_id eq 6}">
                                            HANOI BUFFALOES
                                        </c:if> </h3>
                                        <p><fmt:formatDate type = "date" value = "${requestScope.match.date}" />
                                        <fmt:formatDate type = "time" value = "${requestScope.match.time}" /></p>
                                        ${requestScope.team.location}
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <section class="booking-body smooth-trans">
                <div id="steps-progress" class="pointer w-100 bg-white color-6 ">
                    <div class="container h-100">
                        <div class="h-100 no-gutter">
                            <div class="col-xs-12 h-100">
                                <c:if test="${requestScope.team.id eq 1}">
                                    <img src="img/map-sgh.jpg" width="1000" height="600" alt="Court" usemap="#sgh">
                                    <map name="sgh">
                                        <area shape="rect" coords="120,153,153,450" alt="VipLongue" href="booking/area?name=VipLongue&&id_area=2">
                                        <area shape="rect" coords="793,99,230,65"  alt="Standard 1 B" href="booking/area?name=Standard 1 B&&id_area=4">
                                        <area shape="rect" coords="794,530,240,510"   alt="Standard 1 A" href="booking/area?name=Standard 1 A&&id_area=4">
                                        <area shape="rect" coords="874,465,805,160"   alt="Standard 2" href="booking/area?name=Standard 2&&id_area=5">
                                        <area shape="rect" coords="793,153,229,134" alt="Court side" href="booking/area?name=Courtside&&id_area=1">
                                        <area shape="rect" coords="393,127,231,106" alt="Premium B2" href="booking/area?name=Premium B2&&id_area=3">
                                        <area shape="rect" coords="794,130,629,106" alt="Premium B1" href="booking/area?name=Premium B1&&id_area=3">
                                        <area shape="rect" coords="394,510,229,482" alt="Premium A2" href="booking/area?name=Premium A2&&id_area=3">
                                        <area shape="rect" coords="795,508,630,480"  alt="Premium A1" href="booking/area?name=Premium A1&&id_area=3">
                                        <area shape="rect" coords="627,130,399,106"  alt="VipB" href="booking/area?name=Vip B&&id_area=2">
                                        <area shape="rect" coords="473,510,398,482"  alt="Vip A2" href="booking/area?name=Vip A2&&id_area=2">
                                        <area shape="rect" coords="626,508,551,480"  alt="Vip A1" href="booking/area?name=Vip A1&&id_area=2">   
                                      </map>
                                </c:if>
                                <c:if test="${requestScope.team.id eq 2}">
                                    <img src="img/map_tlw.jpg" width="1000" height="600" alt="Court" usemap="#tlw">
                                    <map name="tlw">
                                        <area shape="rect" coords="158,472,86,185" alt="Standard 2 C" href="booking/area?name=Standard 2 C&&id_area=5">
                                        <area shape="rect" coords="276,152,158,90"   alt="Standard1-A1" href="booking/area?name=Standard1 - A1&&id_area=4">
                                        <area shape="rect" coords="843,151,725,89"   alt="Standard1-A2" href="booking/area?name=Standard1 - A2&&id_area=4">
                                        <area shape="rect" coords="661,513,338,493"   alt="Court side" href="booking/area?name=Courtside&&id_area=1">
                                        <area shape="rect" coords="913,484,842,195"   alt="Standard 2 D" href="booking/area?name=Standard 2 D&&id_area=5">
                                        <area shape="rect"  coords="723,544,543,514"  alt="Vip B2" href="booking/area?name=Vip B2&&id_area=2">
                                        <area shape="rect" coords="458,543,280,515"  alt="Vip B1" href="booking/area?name=Vip B1&&id_area=2">
                                        <area shape="rect" coords="718,152,499,89" alt="Premium A2" href="booking/area?name=Premium A2&&id_area=3">
                                        <area shape="rect" coords="504,151,285,88"  alt="Premium A1" href="booking/area?name=Premium A1&&id_area=3">
                                    </map>
                                </c:if>
                                <c:if test="${requestScope.team.id eq 3}">
                                    <img src="img/map_dnd.jpg" width="1000" height="600" alt="Court" usemap="#dnd">
                                    <map name="dnd">
                                        <area shape="rect" coords="189,66,788,20"   alt="Standard A" href="booking/area?name=Standard A&&id_area=4">
                                        <area shape="rect" coords="602,98,787,55"    alt="Standard A1" href="booking/area?name=Standard A1&&id_area=4">
                                        <area shape="rect" coords="192,94,377,51"   alt="Standard A2" href="booking/area?name=Standard A2&&id_area=4">
                                        <area shape="rect" coords="601,521,787,477"   alt="Standard B1" href="booking/area?name=Standard B1&&id_area=4">
                                        <area shape="rect" coords="191,524,377,480"    alt="Standard B2" href="booking/area?name=Standard B2&&id_area=4">
                                        <area shape="rect" coords="385,106,594,60"  alt="Vip A" href="booking/area?name=Vip A&&id_area=2">
                                        <area shape="rect" coords="192,447,788,417"    alt="Court side" href="booking/area?name=Courtside&&id_area=1">
                                        <area shape="rect" coords="190,562,787,514"    alt="Standard B" href="booking/area?name=Standard B&&id_area=4">
                                        <area shape="rect" coords="386,525,595,478" alt="Pre" href="booking/area?name=Pre B&&id_area=3">
                                    </map>
                                </c:if>
                                <c:if test="${requestScope.team.id eq 4}">
                                    <img src="img/map_hcm.jpg" width="1000" height="600" alt="Court" usemap="#hcm">
                                    <map name="hcm">
                                         <area shape="rect" coords="270,79,97,19"  alt="Standard2-A1" href="booking/area?name=Standard2 - A1&&id_area=5">
                                        <area shape="rect" coords="901,79,728,19"   alt="Standard2-A2" href="booking/area?name=Standard2 - A2&&id_area=5">
                                        <area shape="rect"  coords="724,47,278,20"   alt="Standard 1 A" href="booking/area?name=Standard 1 A&&id_area=4">
                                        <area shape="rect" coords="723,77,636,51" alt="Premium-A2" href="booking/area?name=Premium-A2&&id_area=3">
                                        <area shape="rect" coords="362,77,275,51"  alt="Premium-A1" href="booking/area?name=Premium-A1&&id_area=3">
                                        <area shape="rect" coords="630,79,370,51"   alt="Vip A" href="booking/area?name=Vip A&&id_area=2">
                                        <area shape="rect" coords="180,487,819,522"     alt="Court side" href="booking/area?name=Courtside&&id_area=1">
                                        <area shape="rect"   coords="612,530,817,554" alt="Vip-B2" href="booking/area?name=Vip-B2&&id_area=2">
                                        <area shape="rect"  coords="182,530,387,554"  alt="Vip-B1" href="booking/area?name=Vip-B1&&id_area=2">
                                    </map>
                                </c:if>
                                <c:if test="${requestScope.team.id eq 5}">
                                    <img src="img/map_ctc.jpg" width="1000" height="600" alt="Court" usemap="#ctc">
                                    <map name="ctc">
                                        
                                    </map>
                                </c:if>
                                <c:if test="${requestScope.team.id eq 6}">
                                    <img src="img/map_hnb.jpg" width="1000" height="600" alt="Court" usemap="#hnb">
                                    <map name="hnb">
                                        
                                    </map>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
       
        </div>
    </div>
    <footer class="footer fwrapper">
    <section class="ft-footer clearfix">
        <div class="col-sm-6 ftft-block ftft-tkb">
            <div class="table valign-top margin-bottom-0">
                <div class="ft-img">
                    <img src="https://static.tkbcdn.com/site/global/content-v2/img/ticketbox-logo-100.png?v1" />
                </div>
                <div class="ftft-left">
                    Hệ thống quản l&#253; v&#224; ph&#226;n phối v&#233; sự kiện h&#224;ng đầu ch&#226;u &#193;. <br /> TicketBox Co. Ltd. &#169; 2016
                </div>
            </div>
        </div>

    </section>
</footer> 

    <script src="https://static.tkbcdn.com/dist/tkbvn/js/spa/common-libs.js?v3"></script>
    
    <script src="https://static.tkbcdn.com/dist/tkbvn/js/shared/layoutv2-1.js?v=4259"></script>
   
        <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.4.13/d3.min.js"></script>
        
    <script src="https://static.tkbcdn.com/dist/tkbvn/js/spa/ticket-booking-v15.js?v=4259"></script>
    
</body>
</html>

