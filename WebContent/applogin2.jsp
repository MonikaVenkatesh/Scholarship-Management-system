<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");    
    String pass = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql1","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from sql4 where uname='" + uname + "' and pass='" + pass + "'");
     
    if (rs.next()) {
        session.setAttribute("uname", uname);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("applicant.jsp");
    } else {
        out.println("Invalid password <a href='applogin.jsp'>try again</a>");
    }
%>