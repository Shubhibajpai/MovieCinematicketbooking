<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webfile/login.css">
</head>
<body>
   <%@ include file="navbar.jsp" %>
       <div class="form">
        <form class="formfield" action="../Controllerlogin" method="post">
            <h1 class="head">Login Here</h1><br><br>
            <label class="label">Email</label>
            <input type="email" name="email" class="input"placeholder="Enter your email"><br><br>
            <label class="label">Password</label>
            <input type="text"name="password" class="input" placeholder="Enter password"><br><br>
            <button class="btn">Login</button><br>
            <p class="para">Don't have an account? <a href="signup.jsp"> Sign Up</a></p>
        </form>
        </div>
        <% 
    	
   		String text = (String) request.getAttribute("message1");
   		if (text != null) {
	%>
   		<script type="text/javascript">
       	alert('<%= text %>' ); 
       	window.location.href = "<%= request.getContextPath() %>/webfile/index.jsp";  
   		</script>
		<% 
   			}
		%>
</body>
</html>