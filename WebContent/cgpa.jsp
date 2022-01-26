<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form >
 <input type="button" value="Insert" onclick="location.href='grade1.jsp'"/>;

<%@page import="java.sql.*,java.util.*"%>

<% 
{
	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from student where rollno='"+ Rollno +"' and password='"+password+"' ");

	rs.next(); 
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
int m1=Integer.parseInt(request.getParameter("m1"));
int m2=Integer.parseInt(request.getParameter("m2"));
int m3=Integer.parseInt(request.getParameter("m3"));
int m4=Integer.parseInt(request.getParameter("m4"));
int m5=Integer.parseInt(request.getParameter("m5"));
int m6=Integer.parseInt(request.getParameter("m6"));
int m7=Integer.parseInt(request.getParameter("m7"));
int m8=Integer.parseInt(request.getParameter("m8"));
int m9=Integer.parseInt(request.getParameter("m9"));

String g1 = grade1(m1);
String g2 = grade1(m2);
String g3 = grade1(m3);
String g4 = grade1(m4);
String g5 = grade1(m5);
String g6 = grade1(m6);
String g7 = grade1(m7);
String g8 = grade1(m8);
String g9 = grade1(m9);

int gp1 = gp1(m1);
int gp2 = gp1(m2);
int gp3 = gp1(m3);
int gp4 = gp1(m4);
int gp5 = gp1(m5);
int gp6 = gp1(m6);
int gp7 = gp1(m7);
int gp8 = gp1(m8);
int gp9 = gp1(m9);

float gp;

if((gp1 == 0) || (gp2 == 0) || (gp3 == 0) || (gp4 == 0) || (gp5 == 0) || (gp6 == 0) || (gp7 == 0) || (gp8 == 0) || (gp9 == 0))
{
       gp = 0;     	
}
else 
{
	gp=(float)(gp1*3+gp2*3+gp3*3+gp4*3+gp5*3+gp6*2+gp7*2+gp8*2+gp9*3)/24;  	
}
    System.out.print(gp);

     session.setAttribute("id",id);
     session.setAttribute("name",name);
     session.setAttribute("m1",m1);
     session.setAttribute("m2",m2);
     session.setAttribute("m3",m3);
     session.setAttribute("m4",m4);
     session.setAttribute("m5",m5);
     session.setAttribute("m6",m6);
     session.setAttribute("m7",m7);
     session.setAttribute("m8",m8);
     session.setAttribute("m9",m9);
     session.setAttribute("g1",g1);
     session.setAttribute("g2",g2);
     session.setAttribute("g3",g3);
     session.setAttribute("g4",g4);
     session.setAttribute("g5",g5);
     session.setAttribute("g6",g6);
     session.setAttribute("g7",g7);
     session.setAttribute("g8",g8);
     session.setAttribute("g9",g9);
     session.setAttribute("gp",gp);
     System.out.println("grade and gradepoint calculated successfully");
  
}
     %>
<%!  public String grade1(int per)
{
	//int per= Integer.parseInt(percent);
	String  grade;
  if(per < 50){
	   grade="RA";
       }
  else if(per >=51 && per<=60){
    grade= "B";
    }
  else if(per >=61 && per <=70){
	 grade =  "B+";
	  }
  else if(per >=71 && per <=80){
	 grade =  "A";
	  }
  else if(per >=81 && per <=90){
	grade= "A+";
    }
  else if (per >=91 && per <=100){
	  grade = "O";
    }
  return grade;
}
 %>
 <%!  public int gp1(int res)
{
	int  gpt;
  if(res < 50){
	  gpt = 0;
       }
  else if(res >=51 && res<=60){
   gpt = 6;
  }
  else if(res >=61 && res <=70){
	 gpt = 7;
	}
  else if(res >=71 && res <=80){
	 gpt= 8;
	 }
  else if(res >=81 && res <=90){
	gpt = 9;
  }
  else if (per >=91 && per <=100){
	  gpt =10;
  }
  return gpt;
}
 %>
 </form>
</body>
</html>