<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String name=request.getParameter("name");
String email=request.getParameter("email");
String gender=request.getParameter("gender");
String collegename=request.getParameter("collegename");
String phone=request.getParameter("phone");
String subject=request.getParameter("subject");
String igniteid=request.getParameter("igniteid");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql1", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into sql3 (name,email,gender,collegename,phone,subject,igniteid) values ('"+name+"','"+email+"','"+gender+"','"+collegename+"','"+phone+"','"+subject+"','"+igniteid+"')");

out.println("Data added");
if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Upload.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("apply.html");
    }
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>