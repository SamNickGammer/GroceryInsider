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
    <title>User Pofile</title>
    <link rel="stylesheet" href="../../style.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <div class="container">
        <div class="displayFlexCont">
            <div class="navBarContainer">
                <section class="header navbar">
                    <div class="logoName" onclick="">
                        <div class="logoSVG">
                            <img src="../../assets/icons/Logo (2).svg" alt="">
                        </div>
                        <div class="logoTXT">The Grocery Store</div>
                    </div>
                    <div class="userAccountAndCart">
                        <div class="userAccountImage">
                            <i class="fa-regular fa-user"></i>
                        </div>
                    </div>
                </section>
            </div>
            <div class="bodyContainer">
              
            </div>
            </div>
        </div>
    </div>
    <script>
    	if(window.location.search == ""){
    		window.location.replace("index.jsp?phone=" +JSON.parse(localStorage.getItem("userDetails")).phone)
    	}
    </script>
	<%
		String userData = obj.getUserDetails(request.getParameter("phone"));
		String userOrderDetails = obj.ordersGet(request.getParameter("phone"));
	%>
    <script>
    	const userData = <%=userData%>
    	const userOrderDetails = <%=userOrderDetails%>
    	console.log(userData)
    </script>
    <script src="./script.js"></script>

</body>

</html>