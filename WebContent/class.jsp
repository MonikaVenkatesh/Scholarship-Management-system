<html>
<head>

	
<style>


	 ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #f1f1f1;
}

li {
  float: left;
}

li a {
  display: block;
  color: black;
  text-align: center;
  font-family: cursive;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: tomato;
}


</style>

<body>

<ul>

  <li><a class="active" href="welcome.html">Home</a></li>
  <li><a href="register.jsp">Applicant</a></li>
  <li><a href="donorreg.html">Donor</a></li>
  <li><a href="class.jsp">IGNITE</a></li>
  <li><a href="aboutus.html">About Us</a></li>
  <li><a href="contacts.html">Contacts</a></li>
</ul>
</body>
</head>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "net";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>
 <head>
    <style>
body {
  background-color:#e6ffff;
}
</style>
<center>
<h1>MENTORING PROGRAM</h1>
<table border="5" width="100%" cellpadding="10">
                <thead>
                    <tr>
                       
                    </tr>
                </thead>
<tr>
<td>College_Name</td>

<td>GOOGLE MEET LINK FOR MENTORING PROGRAM</td>
</tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from class";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("college") %></td>

<td><a href="https://meet.google.com/?college=<%=resultSet.getString("college")%>">click here</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</center>
</head>
</body>
</html>