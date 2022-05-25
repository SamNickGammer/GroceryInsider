

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
    <title>The Groccery Store</title>
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>
    <div class="productPagePopup">
        
    </div>
	<%
			String productID = request.getParameter("pid");
			String prodet = obj.getProducts(null,null,null,productID);
	%>
	<script>
			var productId = <%=productID%>;
			var prodet = <%=prodet%>
	</script>
    <script src="./script.js"></script>
</body>

</html>