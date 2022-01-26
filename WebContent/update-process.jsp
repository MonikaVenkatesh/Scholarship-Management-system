<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/net";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String uname=request.getParameter("uname");
String email=request.getParameter("email");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update users set id=?,first_name=?,last_name=?,uname=?,email=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, first_name);
ps.setString(3, last_name);
ps.setString(4, uname);
ps.setString(5, email);
int i = ps.executeUpdate();
if (i > 0) {
    //session.setAttribute("userid", user);
    response.sendRedirect("Upload.jsp");
   // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
} else {
    response.sendRedirect("donorlogin.jsp");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>