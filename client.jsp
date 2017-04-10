<%
String uname=(String)session.getAttribute("sessname");
String ff=request.getQueryString();
//out.print("====>"+ff);
session.setAttribute("ff",ff);




/*
try
 {
	Connection con=database.getconnection(); 
    Statement st=con.createStatement();
	
			ResultSet rs = st.executeQuery("select file_name,file_size from upload_file where sec_key='"+ff+"'");
			while (rs.next()) 
			{
				String file_name=rs.getString("file_name");
				session.setAttribute("");
				//String uname=(String)session.getAttribute("sessname");

				out.print(file_name);
				String file_size=rs.getString("file_size");
				//String uname=(String)session.getAttribute("sessname");

				out.print(file_size);
				
				}
			
			
   }
	catch (Exception e) {
			
			e.printStackTrace();
		}
				
				
	
*/







%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"%>
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
                <font style="margin-left:150px;"> Deduplication </font></h1>
			
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
			
				<h3 class="title"></h3>
				
				<div style="clear: both;">&nbsp;</div>
               
               <div style="width:100%;margin-top:80px;">
                   
                   
                   
                   <span style="font-size:24px;color:#F03;font-weight:bold;margin-left:120px;" >Select The Client</span>
    
     <br /><BR />
     
        
           <div style="width:100%;margin-top:20px;">
                   <img src="images/animated_arrow_11.gif" width="57" height="35" align="left" />         
                   <h3 class="title"><a href="client_insert.jsp?<%="client1"%>" style="font-size:24px;color:#6600FF;text-transform:none;"><b>Send Files To Admin</b></a></h3>
                   <img src="images/View_Image_Icon.png" width="78" height="78" style="float:right; margin-top:-50px;margin-right:80px;"/>
       			 </div>
				 
                   
                   
                   
                   
       			 </div>
                 
                 
                 
			
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar" style="width:300px;">
			<img src="images/fff1.png" width="300" height="368" style="margin-top:5px;"  />
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div class="container"><img src="images/img03.png" width="1000" height="40" alt="" /></div>
	<!-- end #page --> 
</div>
<div id="footer-content"></div>
<div id="footer">
	<p></p>
</div>
<!-- end #footer -->
</body>
</html>
