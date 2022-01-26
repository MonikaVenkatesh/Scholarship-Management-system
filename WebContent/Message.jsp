<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


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
  <li><a href="news.html">IGNITE</a></li>
  <li><a href="aboutus.html">About Us</a></li>
  <li><a href="contacts.html">Contacts</a></li>
</ul>
</body>
</head>
</html>
<html>
<title>ignite.org</title>
<style>
body{
background-position: center ;
background-repeat: no-repeat;
background-attachment: fixed;
background-size: 500px;
}
h1{
font-family: verdana;
color: white;
font-size: 70px;
}
h2{
font-family: serif;
color: black;
font-size: 40px;
}
img{
position: abosolute;
}
</style>
<h2><center><b>YOU ARE SUCCESSFULLY REGISTERED</b></center></h2>
<body background="OIP.jpg"><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<center>
        <h2><%=request.getAttribute("Message")%></h2>
    </center>


</body>
</html>












