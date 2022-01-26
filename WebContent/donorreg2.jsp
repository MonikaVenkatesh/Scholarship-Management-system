<%@ page import ="java.sql.*" %>
<%
    String donorid = request.getParameter("donorid");    
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String country = request.getParameter("country");
    String phone = request.getParameter("phone");
    String domain = request.getParameter("domain");
    String rupees = request.getParameter("rupees");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/net","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into donorreg(donorid, pwd, name,  email, country, phone, domain, rupees) values ('" + donorid + "','" + pwd + "','" + name + "','" + email + "','" + country + "','" + phone + "','" + domain + "','" + rupees + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("donorsuccess.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("donorreg.jsp");
    }
%>