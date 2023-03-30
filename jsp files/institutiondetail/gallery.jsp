<%@page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, java.util.*, java.net.*" %>

<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
        <link rel="stylesheet" href="style.css" />
        <link rel="stylesheet" href="institutions.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
          href="https://fonts.googleapis.com/css2?family=Inter&family=Nunito+Sans&display=swap"
          rel="stylesheet"
        />
    
        <title>EConnect</title>
    </head>
    <body>

        <header>
            <div class="logo">
              <img src="assets/logo.jpg" alt="Logo Image" class="logoimg" />
              <h1 class="logoName"><a href="/index.html">EduBase</a></h1>
            </div>
            <nav>
              <ul class="links">
                <li class="link"><a href="login/login.html">Sign In</a></li>
                <li class="link"><a href="form/form.html">User Details</a></li>
                <li class="link"><a href="institutions.html">Institutions</a></li>
              </ul>
            </nav>
        </header>

        <h1>Event name: <%= request.getParameter("eventname") %></h1>
       
  </body>
</html>
