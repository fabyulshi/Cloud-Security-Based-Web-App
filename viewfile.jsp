<%
String uname=(String)session.getAttribute("sessname");
%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
                 <li class="active"><a href="insertfile.jsp" style="font-size:18px;margin-left:10px;margin-right:10px;" >Insert  File</a></li>
                 <li><a href="viewfile.jsp" style="font-size:18px;margin-left:10px;margin-right:10px;" >View  Files</a></li>
                 <li><a href="index.html" style="font-size:18px;margin-left:10px;margin-right:10px;" >Sign Out</a></li>
              </ul>
        
       
		
	</div>
	<div id="page" style="margin-top:25px;">
		<div id="content">
			
				<h3 class="title"><u>Welcome to User Page</u></h3>
				
				<div style="clear: both;">&nbsp;</div>
               
               <div style="width:100%;margin-top:40px;">
                   
                   
                        
            <table border="01" style="border:2px solid black;width:90%;border-collapse:collapse;border-radius:10px;box-shadow:#000 2px 2px 2px 2px;">
			<tr style="background-color:#F3F;color:white;">
				<th style="padding:3px; width:480px;margin-top:0px;margin-left:-10px;padding-left:00px;">File Name</th>
                	<th style="padding:3px;width:220px;margin-top:0px;margin-left:-10px;padding-left:00px;">File Size</th>
                    	<th style="padding:3px;width:230px;margin-top:0px;margin-left:-10px;padding-left:00px;">Secret Key</th>
                    	  	<th style="padding:3px;width:230px;margin-top:0px;margin-left:-10px;padding-left:00px;">Upload Date</th>					
								<th style="padding:3px;width:230px;margin-top:0px;margin-left:-10px;padding-left:00px;">SendToClient</th>

				</tr>
                
             <%   
  
             		   try
		   {
			   	Connection con=database.getconnection(); 
   				Statement st=con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM upload_file where uname='"+uname+"' ORDER BY sort_date desc;");
				while(rs.next())
				{
					int sec_key =rs.getInt("sec_key");
					String file_name=rs.getString("file_name");
					String file_size=rs.getString("file_size");
					String sort_date=rs.getString("sort_date");
					//String sec_key=rs.getString("sec_key");
					
					//session.setAttribute();
					
					
					
					//out.println(s);
					//out.println(s1);
					 %>
       			<tr>
					<td style="padding:10px;height:60px;"><span style="margin-left:5px;" ><%=file_name%></span></td>
					<td style="padding:3px;height:60px;"><span style="margin-left:5px;" ><%=file_size%></span></td>
					<td style="padding:3px;height:60px;"><span style="margin-left:5px;" ><%=sec_key%></span></td>
                    <td style="padding:3px;height:60px;"><span style="margin-left:5px;" ><%=sort_date%></span></td>
					<td style="padding:3px;height:60px;"><span style="margin-left:5px;" ><a href="client.jsp?<%=sec_key%>">Shard To Admin</a></span></td>
				
				
				
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
