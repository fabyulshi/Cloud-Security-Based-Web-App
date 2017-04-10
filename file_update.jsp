<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%


String file_name1=(String)session.getAttribute("file_name1");
out.print(file_name1);
String file_size1=(String)session.getAttribute("file_size1");
					
String uid=(String)session.getAttribute("uid");
					 
					
String val=(String)session.getAttribute("ff");
String username=(String)session.getAttribute("sessname");
out.print(username);


Connection conn=null;
PreparedStatement ps=null;
String st="REQUESTED";
try
{

conn=database.getconnection();
ps=conn.prepareStatement ("insert into request1 (user,filename,status) values (?,?,?)");


ps.setString(1,username);
ps.setString(2,file_name1);
ps.setString(3,st);

int x=ps.executeUpdate();

            
             response.sendRedirect("req.jsp");
            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
 %>       

</body>
</html>
