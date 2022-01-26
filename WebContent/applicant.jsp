<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>





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

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
 top: 60;
  left: 10;
  background-color: #f1f1f1;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
   background-color: tomato;
  color: black;
}

.main {
  margin-left: 250px; /* Same as the width of the sidenav */
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}


</style>
</head>

<body>

<ul>
  <li><a class="active" href="welcome.html">Home</a></li>
  <li><a href="register.jsp">Applicant</a></li>
  <li><a href="donorreg.html">Donor</a></li>
  <li><a href="class.jsp">IGNITE</a></li>
  <li><a href="aboutus.html">About Us</a></li>
  <li><a href="contact.html">Contacts</a></li>
  
</ul>
    

<div class="sidenav">
  <a href="apply.html">APPLY</a>
  <a href="index.jsp">RENEWAL</a>
  <a href="logout.jsp">LOGOUT</a>
  
</div>

<div class="main">
  
  
  <h1> Welcome User </h1>
  
  
  
</div>
   
</body>
</html>


