<%@ page import="java.sql.*, java.io.*" %>
<jsp:useBean id="obj" class="groceryDatabase.DB"></jsp:useBean>
<%! Connection conn=null;%>
<% 
	String strb = obj.getProducts(null, null, null, "1");
%>
<script type="text/javascript">
	var category = "Essential"
	window.location.replace = "index.jsp?category=" + category
	var str = <%=obj.getProducts(request.getParameter("category"),"Dals And Pulse", null, null)%>
	console.log(str)
</script>
<script type="text/javascript" src="./check.js" ></script>