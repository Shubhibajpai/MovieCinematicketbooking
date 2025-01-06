<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="show.css">
</head>
<body>
<%@ include file="navbar.jsp" %>
    <h2 class="head">Current and Upcoming Shows</h2>
    <div class="shows">    
        <div class="shows-section">
        <div class="show">
            <h1>Stranger Things</h1>
            <p>Date: Nov 20, 2024</p>
            <p>Time: 7:00 PM</p>
            <p>Location: Main Hall</p>
          <a href="booking.jsp"><button class="btn-book">Book Now</button></a>
        </div>
    </div>
    <div class="shows-section">
        <div class="show">
            <h1>Friends</h1>
            <p>Date: Nov 25, 2024</p>
            <p>Time: 8:00 PM</p>
            <p>Location: Stage 2</p>
             <a href="booking.jsp"><button class="btn-book">Book Now</button></a>
        </div>
    </div>
    </div>

    <div class="shows">    
        <div class="shows-section">
        <div class="show">
            <h1>The Walking Dead</h1>
            <p>Date: Nov 20, 2024</p>
            <p>Time: 7:00 PM</p>
            <p>Location: Main Hall</p>
            <a href="booking.jsp"><button class="btn-book">Book Now</button></a>
        </div>
    </div>
    <div class="shows-section">
        <div class="show">
            <h1>The office</h1>
            <p>Date: Nov 25, 2024</p>
            <p>Time: 8:00 PM</p>
            <p>Location: Stage 2</p>
            <a href="booking.jsp"><button class="btn-book">Book Now</button></a>
        </div>
        </div>
</div>
</body>
</html>