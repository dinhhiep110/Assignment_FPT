<%-- 
    Document   : login
    Created on : Oct 15, 2021, 2:59:41 PM
    Author     : Duy Hiep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>  
    <link href="../css/login.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

</head>
<body>
    <div class="login-wrap">
	<div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
            <form class="login-form" name="login-form" action="../../login" method="Post">
                <div class="sign-in-htm">
                    <div class="group user">
                        <label for="user" class="label">Username</label>
                        <input id="user" name="user" type="text" class="input" >    
                        <div class="error error-txt error-user">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Username can't be blank                          
                        </div>
                    </div> 

                    <div class="group pass">
                        <label for="pass" class="label">Password</label>
                        <input id="pass" name="pass" type="password" class="input" >
                        <div class="error error-txt error-pass">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Password can't be blank                         
                        </div>
                    </div>

                    <div class="group">
                        <input id="check" type="checkbox" class="check" name="isChecked" value="check" checked>
                            <label for="check"><span class="icon"></span> Keep me Signed in</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign In" onclick="return ValidateSignin()">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <label for="tab-2">Don't Have Account?</label>
                    </div>
                </div>
                <div class="sign-up-htm" >
                    <div class="group name">
                        <label for="name" class="label">Name</label>
                        <input id="name" type="text" name="name" class="input" >
                        <div class="error error-txt error-name">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Name can't be blank                          
                        </div>
                    </div>
                    
                    <div class="group username">
                        <label for="username" class="label">Username</label>
                        <input id="username" name="username" type="text" class="input" >
                        <div class="error error-txt error-username">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Username can't be blank                          
                        </div>
                    </div>
                     
                    <div class="group password">
                        <label for="password" class="label">Password</label>
                        <input id="password" type="password" name="password" class="input" data-type="password" >
                        <div class="error error-txt error-password">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Password can't be blank                          
                        </div>
                    </div>
                    
                    <div class="group repeatpass">
                        <label for="repeatpass" class="label">Repeat Password</label>
                        <input id="repeatpass" type="password" class="input" data-type="password" >
                         <div class="error error-txt error-repeatpassword">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Repeat Password can't be blank                          
                        </div>
                    </div>
                   
                    <div class="group gender">
                        Gender:
                        <input id="gender1" type="checkbox" class="check" name="gender" value="male" checked>
                        <label for="gender1" style="margin-left: 5%" ><span class="icon"></span>Male</label>
                        <input id="gender2" type="checkbox" class="check" name="gender" value="female">
                        <label for="gender2" style="margin-left: 10%"><span class="icon"></span>Female</label>
                    </div>
                    <div class="group dob">
                        <label for="dob" class="label">Date Of Birth</label>
                        <input id="dob" type="date" name="dob" class="input" >
                        <div class="error error-txt error-dob">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Date of birth can't be blank                          
                        </div>
                    </div>
                     
                    <div class="group email">
                        <label for="email" class="label">Email Address</label>
                        <input id="email" type="text" name="email" class="input" >
                        <div class="error error-txt error-email">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Email can't be blank                          
                        </div>
                    </div>
                     
                    <div class="group phone">
                        <label for="phone" class="label">Phone Number</label>
                        <input id="phone" type="text"  name="phone" class="input">
                         <div class="error error-txt error-phone">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Phone number can't be blank                          
                        </div>
                    </div>
                    
                    <div class="group address">
                        <label for="address" class="label">Address</label>
                        <input id="address" type="text" name="address" class="input" >
                         <div class="error error-txt error-address">
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                            Address can't be blank                          
                        </div>
                    </div>
                    
                    <div class="group">
                        <input type="submit" class="button" value="Sign Up" onclick="return ValidateSignup()">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                            <label for="tab-1"><a>Already Member?</a>
                    </div>
                </div>
            </form>
	</div>
</div> 
    <script src="../js/login.js"></script>
</body>
</html>
