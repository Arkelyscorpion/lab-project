<%@page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, java.util.*, java.net.*, 
   oracle.jdbc.*, oracle.sql.*, oracle.jsp.dbutil.*, java.util.Date, java.text.SimpleDateFormat" %>

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

        <!-- <sql:setDataSource
            var="snapshot"
            driver="oracle.jdbc.OracleDriver()"
            url="jdbc:oracle:thin:@localhost:1521:xe"
            user="system"
            password="rishiyanth"
        /> -->

        <%
        // Change these details to suit your database and user details
        
        Connection conn  = null;
        String connStr = "jdbc:oracle:thin:@//localhost:1521/xe";
        String dbUser  = "system";
        String dbPass  = "rishiyanth";

        String iName =  request.getParameter("name");
        Statement stmt   = null;
        ResultSet rset   = null;

        try{
          DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver() );
          Class.forName("oracle.jdbc.OracleDriver");
          conn = DriverManager.getConnection(connStr,dbUser,dbPass);
        }
        catch(SQLException e){
        %><b>Error: </b> <%= e %><p>  <%

        }

        try{

          String query = "select * from ebuserdetails where institution_name = '"+iName+"'";
          stmt = conn.createStatement();
          rset = stmt.executeQuery(query);
          String firstname  = "";
          String lastname  = "";
          String dob  = "";
          String email  = "";
          
        %>
        <h1>Students registered in <%= iName %></h1>
        <table BORDER=1 CELLSPACING=0 CELLPADDING=0"
        <tr bgcolor="#CCCC99">
        <th><font face="arial" color="#FFFFFF">First Name</th>
        <th><font face="arial" color="#FFFFFF">Last Name</th>
        <th><font face="arial" color="#FFFFFF">Date of Birth</th>
        <th><font face="arial" color="#FFFFFF">Email</th>
        </tr>

        <%
          while ( rset.next() ) {
            firstname  = rset.getString(1); 
            lastname = rset.getString(2);
            dob = rset.getString(3);
            SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            SimpleDateFormat outputFormat = new SimpleDateFormat("dd MMM yyyy");
            Date date = inputFormat.parse(dob);
            String outputDate = outputFormat.format(date);  
            email = rset.getString(4);         
        %>
            <tr bgcolor="ffffe0">
              <td align="center"><font face="arial"><b> <%= firstname  %> </b></font></td>
              <td align="center"><font face="arial"> <%= lastname %></font></td>
              <td align="center"><font face="arial"> <%= outputDate %></font></td>
              <td align="center"><font face="arial"> <%= email %></font></td>
            </tr>
        <%
          }
        %>
        </table>
        <%
        }
          catch (SQLException e) {
        %>    <b>Error: </b> <%= e %><p> <%
          }
        %>

       
  </body>
</html>
