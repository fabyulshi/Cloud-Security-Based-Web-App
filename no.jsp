<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>



<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%


String mid=request.getQueryString();
//out.print(mid);


String a="NO";

String cl="INSERTED";


try
{
Connection conn=database.getconnection();
PreparedStatement ps=conn.prepareStatement("update request1 set status='"+a+"' where filename='"+mid+"'");
ps.executeUpdate();
//response.sendRedirect("seller.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
try
{
Connection conn=database.getconnection();
PreparedStatement ps=conn.prepareStatement("update client set status='"+cl+"' where fname='"+mid+"'");
ps.executeUpdate();
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
response.sendRedirect("dub.jsp");

%>

</body>
</html>
