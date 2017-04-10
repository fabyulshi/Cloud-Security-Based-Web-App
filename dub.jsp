<%@ page import="java.sql.*,databaseconnection.*"%>
<%
String uname=(String)session.getAttribute("sessname");

session.setAttribute("uname",uname);


%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
			
				<h1 style="padding:10px;padding-top:15px;padding-left:40px;line-height:40px;color:#FFFFFF;">Fault Tolerance Management in Cloud Computing: 
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
			
				<h3 class="title"><u>This is You Requested Dublicates</u></h3>
				

<%
   String uname1=(String)session.getAttribute("uname");
  // out.print(uname1);
  // String pass1= request.getParameter("pass");
  // String uname=(String)session.getAttribute("sessname");
   
   String st1="ACTIVATED";
 try
 {
	Connection con=database.getconnection(); 
    Statement st=con.createStatement();
	
			ResultSet rs = st.executeQuery("select DISTINCT fname from client where users='"+uname1+"' AND status='"+st1+"' ");
			while (rs.next()) 
			{
				//String files=rs.getString("files");//out.print(files);
				String fname=rs.getString("fname");//out.print(fname);
				//String sizes=rs.getString("sizes");//out.print(sizes);
				
				
		String val=null;
		if(fname.contains(".pdf"))
		{
	    val="pdf";
		}
		else if(fname.contains(".txt"))
		{
		  val="txt";
		}
		else if(fname.contains(".doc"))
		{
		  val="doc";
		}
		
		else if(fname.contains(".png"))
		{
		  val="image";
		}
		else if(fname.contains(".jpg"))
		{
		  val="image";
		}
		else if(fname.contains(".jpeg"))
		{
		  val="image";
		}
		else if(fname.contains(".mp4"))
		{
		  val="videos";
		}
		else if(fname.contains(".avi"))
		{
		  val="videos";
		}
		else if(fname.contains(".flv"))
		{
		  val="videos";
		}
		
		else 
		{
		  val="image";
		}
		
		
		
        
      
	  
	  
				if("pdf".equals(val))
				{
				%>
				<embed src="Gallery/<%=fname%>" width="300" height="400">
				
				<%
				}
				else if("image".equals(val))
				{
				%>
				<img src="Gallery/<%=fname%>" width="300" height="400">
				
				<%
				}else if("doc".equals(val))
				{
				%>
				<img src="images/document.jpg" width="300" height="400">
				
				<%
				}
				else if("txt".equals(val))
				{
				%>
				
				<iframe src="Gallery/<%=fname%>" width="300" height="400" frameborder=0 ></iframe>
				<%
				
				
				
				
				}
				
				
				%>
				<div align="center">
				<a href="yes.jsp?<%=fname%>"><img src="images/acc1.png" height="40" width="70"></a>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="no.jsp?<%=fname%>"><img src="images/declimed.png" height="40" width="70"></a></div>
				
				
				<%
				
				}	
			
			
			
     }
	catch (Exception e)
	
	 {
			
			e.printStackTrace();
		}

  
%>

			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar" style="width:300px;">
			<img src="images/dubbbbb.jpg" width="300" height="368" style="margin-top:5px;"  />
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

