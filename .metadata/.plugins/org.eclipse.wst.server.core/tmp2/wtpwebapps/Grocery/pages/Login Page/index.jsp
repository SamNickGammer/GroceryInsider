<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*, java.io.*" %>
<jsp:useBean id="obj" class="groceryDatabase.DB"></jsp:useBean>
<%! Connection conn=null;%>
<!DOCTYPE html>
<html lang="en">	

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Login Page</title>
</head>

<body>
    <div class="loginPopup">
        <div class="container">
            <form class="formSUbmit" action="validate.jsp" name="form1" method="post" >
                <span style="display: none;" class="mText"><b>Full Name*</b></span>
                <input style="display: none;" id="nameField" type="text" placeholder="Jhon Doe" name="nameFull">
                <span class="mText"><b>Phone*</b></span>
                <input  id="phoneField" type="tel" placeholder="+91 012 345 678" name="phoneNumber">
                <span class="mText"><b>Password*</b></span>
                <input id="passwordField" type="password" placeholder="&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;&#149;" name="password">
                <span class="termsCondTxt">By continuing, you agree to our<a href="terms.html"> Terms of Use</a> and <a
                        href="">Privacy Policy</a></span>
                <button id="loginBtn" class="loginBtn">Login</button>
            </form>
            <span id="newAccBtn" class="new_acc_text">New here? Create an account.</span>
        </div>
        <div class="sub-container">
            <div class="beautifuTxt">
                <span id="loginTxt" class="loginTxt subConText">Login</span>
                <span style="margin-top: 20px" class="subConText">What you need? We have it all.</span>
                <span class="subConText">You want grocery? Just buy it all.</span>
            </div>
            <div class="loginImg">
                <img height="180px" src="assets/images/loginImg.png">
            </div>
        </div>
    </div>
    <script src="loginSignUp.js"></script>
</body>

</html>