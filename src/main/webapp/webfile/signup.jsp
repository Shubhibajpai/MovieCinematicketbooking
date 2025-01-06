<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup form</title>
    <link rel="stylesheet" href="signup.css">
</head>
<body>
<%@ include file="navbar.jsp" %>
    <div class="form">
    <form class="formfield" action="../Controller?action=INSERT" method="post">
        <h1 class="head">Sign Up</h1><br><br>
        <div>
        <input type="text"class="lastname" name="firstname" placeholder="first name">
        <input type="text"class="lastname" name="lastname"placeholder="Last name"><br><br><br></div>
        <input type="email"class="input" name="email"  placeholder="Email"><br><br>
        <input type="password" class="input" name="password"  placeholder="Password"><br><br>
        <input type="password" class="input" name="confirmpw" placeholder="Confirm password"><br><br>
        <button class="btn">Sign up</button><br>
        <p class="para">Already have an account? <a href="${pageContext.request.contextPath}/webfile/login.jsp">Login here</a></p>
    </form>
    </div>
      <%
        Boolean showPopup = (Boolean) request.getAttribute("showPopup");
        if(showPopup!= null && showPopup){
        %>
        <script type="text/javascript">
       	alert("invalid email! Please Register..."); 
       	window.location.href = "<%= request.getContextPath() %>/webfile/signup.jsp";  
   		</script>
		<% 
   			}
		%>
</body>
</html>