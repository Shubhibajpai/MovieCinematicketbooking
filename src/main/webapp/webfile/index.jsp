<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="navbar.jsp" %>
 <div>
    <img src="${pageContext.request.contextPath}/webfile/home.webp" class="img">
    </div>
    <% 
    	String username1 = (String) session.getAttribute("username");
   		Boolean showPopup = (Boolean) request.getAttribute("showPopup");
   		if (showPopup != null && showPopup) {
	%>
   		<script type="text/javascript">
       	alert("You are Successfully logged as <%= username1 %>! "); 
       	window.location.href = "<%= request.getContextPath() %>/webfile/index.jsp";  
   		</script>
		<% 
   			}
		%>
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