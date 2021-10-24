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
        <title>My Profile</title>
        <link href="../view/css/userprofile.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
      <div class="main-content">
        <!-- Top navbar -->
        <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
          <div class="container-fluid">
            <!-- Home -->
            <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="../home" >Home</a>
           <div class="media align-items-center">
                <div class="media-body ml-2 d-none d-lg-block">
                    <a href="../logout"><i class="icon ello-logout"></i>Log out</a>
                </div>
            </div>
          </div>
        </nav>
        <!-- Header -->
        <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px;background-image: url(../img/bg-main1.jpg); background-size: cover; background-position: center top;">
          <!-- Mask -->
          <span class="mask bg-gradient-default opacity-8"></span>
          <!-- Header container -->
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-7 col-md-10">
                  <h1 class="display-2 text-white">Hello<br> ${sessionScope.User.name}</h1>
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
                      <h3 class="mb-0">My account</h3>
                    </div>
                  </div>
                </div>
                <div class="card-body">
                    <form action="myprofile" method="Post">
                    <h6 class="heading-small text-muted mb-4">User information</h6>
                    <div class="pl-lg-4">
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group focused">
                            <label class="form-control-label" for="input-username">Username</label>
                            <input type="text" id="input-username" name="username" class="form-control form-control-alternative" placeholder="Username" value="${sessionScope.User.username}">
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-name">Name</label>
                            <input type="text" id="input-name" name="name" class="form-control form-control-alternative" placeholder="Name" value="${sessionScope.User.name}">
                          </div>
                        </div>
                      </div>
                     <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-email">Email</label>
                        <input type="emai" id="input-email" name="email" class="form-control form-control-alternative" placeholder="abcd@gmail.com" value="${sessionScope.User.email}">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-dob">Date of Birth</label>
                        <input type="Date" id="input-dob" name="dob" class="form-control form-control-alternative" placeholder="01/01/2021" value="${sessionScope.User.dob}">
                      </div>
                    </div>
                    <div class="col-lg-3">
                      <div class="form-group">
                        <label class="form-control-label" for="input-country">Gender</label>
                        <select id="input-gender" name="gender" class="form-control form-control-alternative" >
                            <option value="male">${sessionScope.User.gender ? "Male" : "Female"} </option>
                            <option value="female">${!sessionScope.User.gender ? "Male" : "Female"} </option>
                        </select>      
                      </div>
                    </div>
                  </div>
                    </div>
                    <hr class="my-4">
                    <!-- Address -->
                    <h6 class="heading-small text-muted mb-4">Contact information</h6>
                    <div class="pl-lg-4">
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group focused">
                            <label class="form-control-label" for="input-address">Address</label>
                            <input type="text" id="input-address" name="address" class="form-control form-control-alternative"  value="${sessionScope.User.address}">
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-phone">Phone number</label>
                            <input type="text" id="input-phone" name="phone" class="form-control form-control-alternative" value="${sessionScope.User.phone}">
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
