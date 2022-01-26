<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");    
    String pass = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql1","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into sql4(fname, lname, email, uname, pass) values ('" + fname + "','" + lname + "','" + email + "','" + uname + "','" + pass + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("applicant.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("register.jsp");
    }
%>