<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/webfile/navbar.css">
</head>
<body>
 <div class="header">
        <nav>
            <div class="left">
                <div class="logo">
                    <h2>BookMyCinema</h2>
                </div>
            </div>
            <div class="right">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/webfile/index.jsp">Home</a></li>
                  
                    <%
            	    HttpSession session1 = request.getSession(false);
          	      	String username = (session1 != null) ? (String) session1.getAttribute("username") : null;
           			 %>
           			  <% if (username != null) { %> 
           			    <li><a href="${pageContext.request.contextPath}/webfile/movies.jsp">Movies</a></li>
                        <li><a href="${pageContext.request.contextPath}/webfile/theater.jsp">Theaters</a></li>
                        <li><a href="${pageContext.request.contextPath}/webfile/show.jsp">Shows</a></li>
           			    <li><form action="../Controllerlogout" method="POST">
       					<button type="submit" class="logout-btn">Logout</button>
   							 </form></li> 
           			   <% }else{%>
                    <li><a href="${pageContext.request.contextPath}/webfile/login.jsp">Login</a></li>
                    <%} %>
                </ul>
            </div>
        </nav>
    </div>
   
</body>
</html>