<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("welcome.html");
%>