<%
String uname=(String)session.getAttribute("sessname");
%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Deduplication</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
<link type="text/css" rel="stylesheet" href="css/dropdown.css" />
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.min.js" ></script>
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper" class="container">
		<div id="header" class="container">
			
<h1 style="padding:10px;padding-top:15px;padding-left:40px;line-height:40px;color:#FFFFFF;">A Hybrid Cloud Approach for Secure Authorized
                <br />
                <font style="margin-left:220px;"> Deduplication </font></h1>
			
		</div>
		<div><img src="images/img03.png" width="1000" height="40" alt="" /></div>
	</div>
	<!-- end #header -->
	<div id="banner">
		
        
              <ul class="nav nav-pills" style="float:right;margin-top:-25px;">
              	 <li><a href="#" style="font-size:18px;margin-left:10px;margin-right:10px;" >
                 											Welcome <font color="#FF33FF">&nbsp;&nbsp;&nbsp;<%=uname%></font></a></li>
                 <li><a href="home.jsp" style="font-size:18px;margin-left:10px;margin-right:10px;">Home</a></li>
                 <li><a href="insertfile.jsp" style="font-size:18px;margin-left:10px;margin-right:10px;" >Insert  File</a></li>
                 <li class="active"><a href="viewfile.jsp" style="font-size:18px;margin-left:10px;margin-right:10px;" >View  Files</a></li>
                 <li><a href="index.html" style="font-size:18px;margin-left:10px;margin-right:10px;" >Sign Out</a></li>
              </ul>
        
       
		
	</div>
	<div id="page" style="margin-top:25px;">
		<div id="content">
			
				<h3 class="title"><u>Encrypted File</u></h3>
				
				<div style="clear: both;">&nbsp;</div>
               
               <div style="width:100%;margin-top:40px;">
                   
                   
                        
            <table border="01" >
			
                <tr align="center">
				<img src="images/Encrypt_Image.jpg" height="250" width="350">
				</tr>
				
             <%   
           // String id=request.getQueryString();
			
			String id=(String)session.getAttribute("id");
			//out.print(id);
           
		
		   
		   try
		   {
			   	Connection con=database.getconnection(); 
   				Statement st=con.createStatement();
				ResultSet rs = st.executeQuery(" SELECT * FROM shared where id='"+id+"' ");
				while(rs.next())
				{
					int file_id =rs.getInt("id");
					//String name=rs.getString("name");
					//String file1=rs.getString("file1");
					String key1=rs.getString("key1");//out.print(key1);
					String type1=rs.getString("type1");//out.print(type1);
					
					//String sec_key=rs.getString("sec_key");
					
					//session.setAttribute();
					
					
					
					
					
					
					if("key".equals(type1))
					{

					
					
					%>
					 <td align="center"><a href="wantkey.jsp?<%=file_id%>">Want Key</a></td>
				   <%
				}
				
				else if("wait".equals(type1))
				{
				%>
					 <td align="center">Wait For Key</td>	
					 		   <%
				}
				
				else if("accept".equals(type1))
				{
				%>
					 <td align="center">Your Key is :&nbsp;&nsub;<%=key1%></td>			   <%
				}
				
				%>
				
				
				</tr>
         
    <%
	   					}
		   }

		   catch(Exception e)
		   {
		   }

		 
		  %>
           
       
		</table> 

                   
                   
                   
                   
       			 </div>
                 
                 
                 
			
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar" style="width:300px;">
			<img src="images/cloud-business-how1.jpg" width="300" height="368" style="margin-top:5px;"  />
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div class="container"><img src="images/img03.png" width="1000" height="40" alt="" /></div>
	<!-- end #page --> 
</div>
<div id="footer-content"></div>
<div id="footer">
	
</div>
<!-- end #footer -->
</body>
</html>
