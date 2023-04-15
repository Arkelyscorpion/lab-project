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

        <div class="content">
          <h1><%= request.getParameter("eventname") %></h1>
          <p><strong>Start Date :</strong> 15-JUN-2023</p>
          <p><strong>End Date :</strong> 18-JUN-2023</p>
          <p><strong>Event Description :</strong></p>
          <p>
            The conference will cover recent advances in artificial intelligence and its applications in various fields.
          </p>
        </div>
       
  </body>
</html>


<!-- 
  
create table ebevents(id INTEGER PRIMARY KEY,name VARCHAR(50),start_date date,end_datae date,description varchar(200));

INSERT INTO ebevents VALUES 
  (1, 'International Conference - Artificial Intelligence', TO_DATE('15-JUN-2023', 'DD-MON-YYYY'), TO_DATE('18-JUN-2023', 'DD-MON-YYYY'), 'The conference will cover recent advances in artificial intelligence and its applications in various fields.');

INSERT INTO ebevents VALUES
  (2, 'Seminar on Machine Learning', TO_DATE('01-MAY-2023', 'DD-MON-YYYY'), TO_DATE('02-MAY-2023', 'DD-MON-YYYY'), 'This seminar will introduce basic concepts and practical applications of machine learning for beginners.');

INSERT INTO ebevents VALUES
  (3, 'Hands-on Workshop on Web Development', TO_DATE('10-JUL-2023', 'DD-MON-YYYY'), TO_DATE('12-JUL-2023', 'DD-MON-YYYY'), 'This workshop will provide a hands-on experience for participants to learn web development tools and techniques.');

INSERT INTO ebevents VALUES
  (4, 'TechFest 2023', TO_DATE('01-SEP-2023', 'DD-MON-YYYY'), TO_DATE('03-SEP-2023', 'DD-MON-YYYY'), 'TechFest 2023 will showcase the latest trends and innovations in technology across various domains, including AI, robotics, VR/AR, and more.');

INSERT INTO ebevents VALUES
  (5, 'TEDxXYZ: The Power of Ideas', TO_DATE('20-NOV-2023', 'DD-MON-YYYY'), TO_DATE('20-NOV-2023', 'DD-MON-YYYY'), 'This TEDx event will feature inspiring talks from speakers across diverse backgrounds and fields.');

INSERT INTO ebevents VALUES
  (6, 'Annual Music Festival', TO_DATE('15-JUL-2023', 'DD-MON-YYYY'), TO_DATE('17-JUL-2023', 'DD-MON-YYYY'), 'This music festival will feature performances from local and international artists across various genres, including rock, pop, jazz, and more.'); 

-->
