<%-- 
    Document   : home
    Created on : Oct 13, 2021, 9:10:42 PM
    Author     : Duy Hiep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-vi">

<head>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="author" content="ticketbox.vn">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="data-opm" content="tkb" />
    <meta name="data-event-id" content="66073" />
    <meta name="data-showing-id" content="42065" />
    <!-- Bootstrap Core CSS -->
    <link href="https://static.tkbcdn.com/static-page/css/lib-lp.min.css?v=4259" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <title>VBA - Giải Bóng Rổ Chuyên Nghiệp Việt Nam 2018</title>


    <link href="view/css/vba.css" rel="stylesheet" />
    <link href="view/css/vbaHome.css" rel="stylesheet">

</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <!-- this page using layout -->
    

    <div class="tkb-header color-white">
        <table class="w-100">
            <tbody class="w-100 valign-middle">
                <tr>
                    <td class="header-left text-left">
                        <a href="" title=TicketBox"">
                            <img class="tkb-logo" src="https://static.tkbcdn.com/images-v2/ticketbox-small.png?v3" alt="ticketbox" />
                        </a>
                    </td>
                    <c:if test="${sessionScope.User == null}">
                        <td class="header-right text-right ">
                            <div class="inline-block">
                                <a href="login" class="page-scroll btn btn-rounded tkb-bg-color text-shadow-2 font-800">Sign In</a>
                            </div>
                        </td>
                    </c:if>
                    <c:if test="${sessionScope.User != null}">
                        <td class="header-right text-right">
                            <div class="inline-block dropdown-navbar">
                                <button class="page-scroll btn btn-rounded tkb-bg-color dropdown-btn" onclick="showDrop()">
                                    Hello, ${sessionScope.User.name}<c:if test="${sessionScope.User.isAdmin}"> (Admin)</c:if>
                                    <i class="fa fa-caret-down"></i> </button>
                                <div class="dropdown-content" id="Dropdown">
                                 <a href="user/myprofile"><i class="icon ello-vcard color-9"></i> My Profile</a>
                                 <a href="logout"><i class="icon ello-logout color-9"></i>Log out</a>
                                </div>
                            </div> 
                        </td>
                    </c:if>
                </tr>
            </tbody>
        </table>
    </div>
    
    
    <!--Landingpage lib-->
    <script src="https://static.tkbcdn.com/static-page/js/lib-lp.min.js?v=4259"></script>

    <!-- landingpage content -->
    <section class="landingpage-content relative">
        

    
<!--menu for mobile only-->
<nav class="custome-navbar navbar navbar-default visible-xs">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <div class="m-header">MENU</div>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="navbar-collapse padding-right-0 padding-left-0 container collapse" id="bs-example-navbar-collapse-1" style="">
        <ul class="nav navbar-nav w-100 text-center">
            <li>
                <a class="page-scroll text-uppercase" href="#intro">Về VBA</a>
            </li>
            <li>
                <a class="page-scroll text-uppercase" href="#booking">Đặt vé</a>
            </li> 
            
            
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>
<div class="main-nav hidden-xs">
    <div class="hidden-xs container ">
        <c:if test="${!sessionScope.User.isAdmin || sessionScope.User eq null}">
            <div class="uppercase menu--item1"><a href="#intro" class="page-scroll menu__text">Về VBA</a></div>
            <div class="uppercase menu--item1"><a href="#booking" class="page-scroll menu__text">Đặt vé</a></div>
        </c:if>
        <c:if test="${sessionScope.User.isAdmin}">
            <div class="uppercase menu--item1"><a href="#intro" class="page-scroll menu__text">About VBA</a></div>
            <div class="uppercase menu--item1"><a href="#booking" class="page-scroll menu__text">Team Schedule</a></div>
            <div class="uppercase menu--item1"><a href="#" class="page-scroll menu__text">About Ticket</a></div>
        </c:if>
        
    </div>
</div>
<div class="container-fluid">
    <div class="row sec1">     
        <img class="hidden-xs w-100" src="img/bacon.jpg" />
        <img class="visible-xs w-100" src="img/moblie_bacon.jpg" />
    </div>
     <c:if test="${!sessionScope.User.isAdmin || sessionScope.User eq null}">
    <div class="row sec2" id="booking">
        <div class="container pl-pr-0">
            <div class="col-sm-10 col-sm-offset-1 padding-left-0 padding-right-0">
                <h2 class="slogan mg-16 text-uppercase color--blue">MUA VÉ SÂN NHÀ CỦA CÁC ĐỘI TUYỂN ĐỂ THỎA SỨC CÙNG ĐAM MÊ</h2>
                <div class="clearfix pd-8 teams-row">
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_sgh.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="https://ticketbox.vn/vba-sgh" class="anchor book-now page-scroll color-white red-color" target="_blank">ĐẶT VÉ NGAY</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_tlw.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="https://ticketbox.vn/vba-tlw" class="anchor book-now page-scroll color-white white-color" target="_blank">ĐẶT VÉ NGAY</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_dnd.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="https://ticketbox.vn/vba-dnd" class="anchor book-now page-scroll color-white orange-color" target="_blank">ĐẶT VÉ NGAY</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_hcmc.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="https://ticketbox.vn/vba-wings" class="anchor book-now page-scroll color-white light-blue-color" target="_blank">ĐẶT VÉ NGAY</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_ctc.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="https://ticketbox.vn/vba-ctc" class="anchor book-now page-scroll color-white yellow-color" target="_blank">ĐẶT VÉ NGAY</a>
                            </div>
                        </div>
                    </div>     
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_hnb.png?v=@Constants.StaticUrlVersion" class="w-100" />
                            <div class="abs">
                                <a href="https://ticketbox.vn/vba-hnb" class="anchor book-now page-scroll color-white blue-color" target="_blank">ĐẶT VÉ NGAY</a>
                            </div>
                        </div>
                    </div>               
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    </c:if>
    <c:if test="${sessionScope.User.isAdmin}">
    <div class="row sec2" id="booking" >
        <div class="container pl-pr-0">
            <div class="col-sm-10 col-sm-offset-1 padding-left-0 padding-right-0">
                <h2 class="slogan mg-16 text-uppercase color--blue">Schedule For Each Team</h2>
                <div class="clearfix pd-8 teams-row">
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_sgh.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="team/schedule" class="anchor book-now page-scroll color-white red-color" target="_blank">Update Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_tlw.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="team/schedule" class="anchor book-now page-scroll color-white white-color" target="_blank">Update Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_dnd.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="team/schedule" class="anchor book-now page-scroll color-white orange-color" target="_blank">Update Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_hcmc.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="team/schedule" class="anchor book-now page-scroll color-white light-blue-color" target="_blank">Update Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_ctc.png?v=@Constants.StaticUrlVersion" class="w-100">
                            <div class="abs">
                                <a href="team/schedule" class="anchor book-now page-scroll color-white yellow-color" target="_blank">Update Now</a>
                            </div>
                        </div>
                    </div>     
                    <div class="col-xs-6 team-bl">
                        <div class="wrapper">
                            <img src="https://static.ticketbox.vn/static-page/landingpages/vba/images/logo_hnb.png?v=@Constants.StaticUrlVersion" class="w-100" />
                            <div class="abs">
                                <a href="team/schedule" class="anchor book-now page-scroll color-white blue-color" target="_blank">Update Now</a>
                            </div>
                        </div>
                    </div>               
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    </c:if>
    <div class="sec3-sec4 intro" id="intro">
        <div class="container pl-pr-0"> 
            <div class="col-sm-10 col-sm-offset-1">
                <div class="">
                    <div class="sec3 row bg-white">
                        <div class="bor-top border-top-green title-bl border-blue">
                            <h1 class="text-uppercase text-green bg-tl-white about-title text-center">About VBA</h1>
                        </div>
                        <p class="mg-16 about-vba">
                            VBA là Giải Bóng Rổ Chuyên Nghiệp đầu tiên tại Việt Nam được xây dựng theo mô hình chuyên nghiệp quốc tế. Ra đời vào năm 2016, đến nay số lượng đội tuyển tham gia VBA đã nâng lên con số 6 gồm Thang Long Warriors, Hanoi Buffaloes, Cantho Catfish, HCMC Wings , Saigon Heat. VBA 2017 đã chứng kiến sự kịch tính tới những vòng cuối cùng khi đội bóng tân binh Thang Long Warriors lên ngôi vô địch trong năm đầu tham dự giải.
                            <br> <br>
                            Trở lại với một mùa giải mới, VBA 2021 hứa hẹn sẽ tiếp tục làm mãn nhãn người hâm mộ bóng rổ chuyên nghiệp Việt Nam bằng những trận đấu căng thẳng, máu lửa và đầy kịch tính. 6 đội bóng, 4 thành phố, 1 chức vô địch, đội bóng nào sẽ xưng vương tại VBA năm nay?
                        </p>
                    </div>
                    <div class="row sec4 text-center">
                        <img class="mg-20 w-100 team-symbol" src="https://static.ticketbox.vn/static-page/landingpages/vba/images/overview-VBA.jpg"/>
                    </div>
                </div>
            </div> 
        </div>
    </div>
</div>

    </section>
    <footer class="tkb-footer">
        <div class="w-100">
            <div class="up-footer w-100">
                <div class="container">
                    <div class="w-100">
                        <div class="col-sm-4 text-left footer-logo-block hidden-xs text-center">
                            <a href="#" class="inline-block logo" style="padding-left: 20%">
                                <img width="120" src="https://static.tkbcdn.com/images-v2/ticketbox-small.png?v3">
                            </a>
                        </div>
                        
                        <div class="col-sm-8 office-block">
                            <div class="w-100">
                                <h4 class="color-white">Trung tâm hỗ trợ và chăm sóc khách hàng</h4>
                                <table class="w-100 valign-top">
                                    <tbody class="w-100">
                                        <tr>
                                            <td width="40">
                                                <i class="ello-location-3"></i>
                                            </td>
                                            <td>
                                                Đại Học FPT Hà Nội
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <i class="ello-phone"></i>
                                            </td>
                                            <td>
                                                024.7300.1235 (EN & VI)
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <i class="ello-calendar-outlilne"></i>
                                            </td>
                                            <td>
                                                Thứ 2 - Thứ 6 (9:30 - 18:30)
                                                <p>TicketBox Co. Ltd. © 2016</p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-sm-2 text-left text-right-md">
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="down-footer w-100">
                <div class="container">
                    <div class="w-100 text-center">
                        <h4 class="font-600 color-white">Hệ thống quản lý và phân phối vé sự kiện hàng đầu châu Á.</h4>
                        <div class="btn-inquiry inline-block rounded tkb-bg-color font-600">Liên hệ hợp tác: </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    <script type="text/javascript" src="https://static.tkbcdn.com/static-page/js/vba.js?v=20215114.1051"></script>  
    <script>
        function showDrop() {
            document.getElementById("Dropdown").classList.toggle("show");
        }

        // Close the dropdown if the user clicks outside of it
        window.onclick = function(e) {
            if (!e.target.matches('.dropdown-btn')) {
            var myDropdown = document.getElementById("Dropdown");
              if (myDropdown.classList.contains('show')) {
                myDropdown.classList.remove('show');
              }
            }
        };
    </script>
    

</body>
</html>