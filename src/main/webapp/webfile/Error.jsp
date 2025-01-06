<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error loading page</title>
    <style>
        *{
            margin: 0;
        }
        body{
            background-color: rgb(192, 175, 175);
            
        }
        .head{
            border: 3px solid rgb(8,8,29);
            /* width: 80vw; */
            font-size: 40px;
            background-color: rgb(80, 80, 80);
            color: white;
        }
        .head1{
            margin-top: 60px;
        }
        .box{
            display: flex;
            margin: 26px auto;
            width: 90vw;
            height: 15vw;
            background-color: rgb(194, 166, 166);
            /* background-color: white; */
            padding: 0px 0px;
            flex-direction: column;
            border-radius: 9px;
            border: 3px solid rgb(8, 8, 29);
            font-size: x-large;
        }
        .box a{
            font-size: 40px;
            text-decoration: none;
            color: rgb(49, 41, 58);
            /* color: blue; */
        }
        .box a:hover{
            font-size: 22px;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2 class="head">Error Status 404 - Email not registered</h2>
        <h2 class="head1">Invalid Email or Password</h2>
        <a href="signup.jsp">Back to Login...</a>
    </div>
</body>
</html>