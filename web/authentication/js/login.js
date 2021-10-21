/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var user = document.querySelector("#user");
var pass = document.querySelector("#pass");
var name = document.querySelector("#name");
var username = document.querySelector("#username");
var password = document.querySelector("#password");
var repeatpass = document.querySelector("#repeatpass");
var dob = document.querySelector("#dob");
var email = document.querySelector("#email");
var phone = document.querySelector("#phone");
var address = document.querySelector("#address");


var errorUser = document.querySelector('.error-user');
var errorPass = document.querySelector('.error-pass');
var errorName = document.querySelector('.error-name');
var errorUserName = document.querySelector('.error-username');
var errorPassWord = document.querySelector('.error-password');
var errorRepeatPass = document.querySelector('.error-repeatpassword');
var errorDOB = document.querySelector('.error-dob');
var errorEmail = document.querySelector('.error-email');
var errorPhone = document.querySelector('.error-phone');
var errorAddress = document.querySelector('.error-address');




let patternUsername = "^[a-zA-Z][a-z0-9_-]{5,15}$";
let patternName = "^[A-Z a-z]+$";
let patternPassWord = "^[A-Za-z0-9_@]{8,16}$";
let patternEmail = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"; 
let patternPhone = "^09[0-9]{8}$";
let patternAddress = "^[A-Z0-9 a-z,/_-]+$";

function ValidateSignin() {
    //checkUserName
    if(user.value === ""){
        errorUser.style.display = "block";
        user.focus();
        return false;
    }
    else if(!user.value.match(patternUsername)){
        errorUser.innerHTML = "Username accepts 5 to 15 characters start with any lower case character and digit";
        errorUser.style.display = "block";   
        user.focus();
        return false;
    }
    else{
        errorUser.style.display = "none";
    }
    
    //checkPass
    if(pass.value === ""){
        errorPass.style.display = "block";
        pass.focus();
        return false;
    }
    else if(!pass.value.match(patternPassWord)){
        errorPass.innerHTML = "Password must contain 8 to 16 characters";
        errorPass.style.display = "block";
        pass.focus();
        return false;
    }
    else{
        errorPass.style.display = "none";   
        return true;
    }
    
}

function ValidateSignup() {
    // checkName
    if(name.value === ""){
        errorName.style.display = "block";
        name.focus();
        return false;
    }
    else if(!name.value.match(patternName)){
        errorName.innerHTML = "Name is invalid";
        errorName.style.display = "block";   
        name.focus();
        return false;
    }
    else{
        errorName.style.display = "none";
    }
    
    //checkUsername
    if(username.value === ""){
        errorUserName.style.display = "block";
        username.focus();
        return false;
    }
    else if(!username.value.match(patternUsername)){
        errorUserName.innerHTML = "Username accepts 5 to 15 characters with any lower case character and digit";
        errorUserName.style.display = "block";   
        username.focus();
        return false;
    }
    else{
        errorUserName.style.display = "none";
    }
    
    //checkPassword
    if(password.value === ""){
        errorPassWord.style.display = "block";
        password.focus();
        return false;
    }
    if(!password.value.match(patternPassWord)){
        errorPassWord.innerHTML = "Password must contain 8 to 16 characters";
        errorPassWord.style.display = "block";
        password.focus();
        return false;
    }
    else{
        errorPassWord.style.display = "none";
    }
    
    //checkRepeatPass
    if(repeatpass.value === ""){
        errorRepeatPass.style.display = "block";
        repeatpass.focus();
        return false;
    }
    else if(repeatpass.value !== password.value){
        errorRepeatPass.innerHTML = "Repeat Password doesn't match";
        errorRepeatPass.style.display = "block";
        repeatpass.focus();
        return false;
    }
    else{
        errorRepeatPass.style.display = "none";
    }
    
    //checkEmail
    if(email.value === ""){
        errorEmail.style.display = "block";
        email.focus();
        return false;
    }
    if(!email.value.match(patternEmail)){
        errorEmail.innerHTML = "Email is invalid";
        errorEmail.style.display = "block";
        email.focus();
        return false;
    }
    else{
        errorEmail.style.display = "none";
    }
    
    //check Phone
    if(phone.value === ""){
        errorPhone.style.display = "block";
        phone.focus();
        return false;
    }
    if(!phone.value.match(patternPhone)){
        errorPhone.innerHTML = "Phone is invalid";
        errorPhone.style.display = "block";
        phone.focus();
        return false;
    }
    else{
        errorPhone.style.display = "none";
    }
    
    
    //check Address
    if(address.value === ""){
        errorAddress.style.display = "block";
        address.focus();
        return false;
    }
    if(!errorAddress.value.match(patternAddress)){
        errorAddress.innerHTML = "Adress is invalid";
        errorAddress.style.display = "block";
        address.focus();
        return false;
    }
    else{
        errorAddress.style.display = "none";
        return true;
    }
}       