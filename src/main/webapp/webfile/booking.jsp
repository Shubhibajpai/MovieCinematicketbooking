<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie Booking Form</title>
<style>
    * {
       box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    body {
        display: flex;
        /*justify-content: center;
        align-items: center;
         height: 100vw; */
        background-color: #f0f0f0;
        flex-direction:column;
    }

    .booking-form-container {
        width: 100%;
        max-width: 450px;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    }

    .booking-form h2 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 24px;
        color: #333;
    }
    .booking_section{
    display:flex;
    align-items:center;
    justify-content:center;
    margin-top:15px;
    }
    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        font-size: 14px;
        color: #555;
    }

    .form-group input, 
    .form-group select {
        width: 100%;
        padding: 12px;
        margin-top: 5px;
        font-size: 16px;
        border: 1px solid #ddd;
        border-radius: 5px;
        transition: all 0.3s ease;
    }

    .form-group input:focus,
    .form-group select:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.2);
    }

    .form-group input[type="checkbox"] {
        width: auto;
        margin-right: 10px;
    }

    .submit-btn {
        width: 100%;
        padding: 12px;
        font-size: 16px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .submit-btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="booking_section">
    <div class="booking-form-container">
        <h2>Book Your Movie Tickets</h2>
        <form action="../Controllerbooking" method="post">
            <!-- Movie Selection -->
            <div class="form-group">
                <label for="movie_name">Select Movie</label>
                <select id="movie_name" name="movie_name" required>
                    <option value="">Choose a movie...</option>
                    <option value="movie1">Stranger things</option>
                    <option value="movie2">Friends</option>
                    <option value="movie3">The walking dead</option>
                    <option value="movie3">The office</option>
                </select>
            </div>
             <!-- Date and Time -->
         <div class="form-group">
            <label for="show_date">Date</label>
            <input type="date" id="show_date" name="show_date" required>
        </div>
        <div class="form-group">
            <label for="show_time">Time</label>
            <select id="show_time" name="show_time" required>
                <option value="">Choose a time...</option>
                <option value="1pm">1:00 PM</option>
                <option value="4pm">4:00 PM</option>
                <option value="7pm">7:00 PM</option>
                <option value="10pm">10:00 PM</option>
            </select>
        </div>
  <!-- Number of Tickets -->
        <div class="form-group">
            <label for="num_tickets">Number of Tickets</label>
            <input type="number" id="num_tickets" name="num_tickets" min="1" max="10" required>
        </div>
    <!-- Seat Type -->
        <div class="form-group">
            <label for="seat_type">Seat Type</label>
            <select id="seat_type" name="seat_type" required>
                <option value="">Choose seat type...</option>
                <option value="regular">Regular</option>
                <option value="vip">VIP</option>
            </select>
        </div>
    <!-- User Information -->
        <div class="form-group">
            <label for="full_name">Full Name</label>
            <input type="text" id="full_name" name="full_name" required>
        </div>
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" required>
        </div>
          <!-- Price -->
          <div class="form-group">
        <label for="movie_name">Price</label>
                <select id="price" name="Price" required>
                    <option value="">Choose a price...</option>
                    <option value="500">500 Rs.</option>
                    <option value="1000">1000 Rs.</option>
                </select>
                </div>
    <!-- Terms and Conditions -->
        <div class="form-group">
            <label>
                <input type="checkbox" name="terms_agree" required> I agree to the terms and conditions
            </label>
        </div> 
    <!-- Submit Button -->
        <button type="submit" class="submit-btn">Book Now</button>
    </form>
    </div>
    </div>
    
</body>
</html>