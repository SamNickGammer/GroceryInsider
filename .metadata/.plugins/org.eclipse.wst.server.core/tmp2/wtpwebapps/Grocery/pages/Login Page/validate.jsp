    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*, java.io.*" %>
<jsp:useBean id="obj" class="groceryDatabase.DB"></jsp:useBean>
<%! Connection conn=null;%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<%
		String loginStatus = null;
		String name = null;
		String phoneNumber =null;
		String password = null;
		String registerStatus = null;
		String errorMsg = null;
	try{
		name = request.getParameter("nameFull");
		phoneNumber = request.getParameter("phoneNumber").replaceAll("[^0-9]", "");
		password = request.getParameter("password");
		if (name == ""){
			loginStatus = obj.login(phoneNumber, password);
		}else{
			String[] nameParts = name.split(" ");
			String first_name = "";
			for(int i = 0; i < nameParts.length-1; i++){
				first_name += nameParts[i] + " ";
			}
			
			registerStatus = obj.register(phoneNumber, password, first_name.trim(), nameParts[nameParts.length-1]).trim();
		}
		
	}catch(Exception e){
		errorMsg = e.getMessage();
	} %>
</body>
<script>
	
	const loginStatus = "<%=loginStatus%>";
	const name = "<%=name%>";
	const phoneNumber = "<%=phoneNumber%>";
	const password = "<%=password%>";
	if(name == ""){
		if(loginStatus == "Login Success"){
			console.log("sucess");
			
			localStorage.setItem(
				    'userDetails',
				    JSON.stringify({
				      phone: phoneNumber,
				      password: password,
				    })
				  );
			window.top.location.reload();
			
		}else if(loginStatus == "Wrong Password"){
			console.log("Wrong Pass");
			
		}else if(loginStatus == "Account not found"){
			console.log("NotFound");
			
		}else{
			console.log(loginStatus);
		}
	}else{
		const registrationStatus = '<%=registerStatus%>';
		if(registrationStatus == "registration successful"){
			console.log("Registered Successfully.")
		}else{
			console.log("Error: ", registrationStatus)
		}
	}
</script>
</html>