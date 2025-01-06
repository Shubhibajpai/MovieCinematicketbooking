<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="theater.css">
</head>
<body>
<%@ include file="navbar.jsp" %>
    <div class="about">
        <h1>About The Grand Theaters</h1>
        <p>Welcome to The Grand Theater, where art meets passion. Join us for an unforgettable experience of live performances, musicals, and plays.</p>
   </div>
    <div class="main"> 
    <div class="sh1">
        <img src="th1.jpg" class="img1">
        <h2  class="head">Welcome to Aries Plex cinemas</h2>
        <p>Experience the magic of live performances.</p>
         <a href="show.jsp"><button class="btn">Explore Shows</button></a>
</div>
<div class="sh2">  
    <img src="pvr.jpg" class="img1">
   <h2 class="head">Welcome to Cinemagic cinemas</h2>
   <p>Experience the magic of live performances.</p>
   <a href="show.jsp"><button class="btn">Explore Shows</button></a>
</div>
<div class="sh3">
    <img src="th2.jpg" class="img1">
   <h2 class="head">Welcome to Carnival cinemas</h2>
   <p>Experience the magic of live performances.</p>
   <a href="show.jsp"><button class="btn" >Explore Shows</button></a>
</div>
</div>
<!-- <section id="contact" class="contact-section">
    <h2>Contact Us</h2>
    <p>Email: info@grandtheater.com</p>
    <p>Phone: +91 976675675</p>
    <p>Address: 123 Main Street, pilibhit, India</p>
</section> -->

<footer class="footer">
    <p>&copy; 2024 The Grand Theater. All Rights Reserved.</p>
</footer>

</body>
</html>