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
			
				<h1 style="padding:10px;padding-top:15px;padding-left:40px;line-height:40px;color:#FFFFFF;">A Hybrid Cloud Approach for Secure Authorized

                 <br />
                <font style="margin-left:220px;"> Deduplication </font></h1>
			
		</div>
		<div><img src="images/img03.png" width="1000" height="40" alt="" /></div>
	</div>
	<!-- end #header -->
	<div id="banner">
    
		<div class="content" style="height:430px;">

<%
		
		 
		/*String uid=request.getParameter("uname");
		String fname=request.getParameter("fname");
		String pass=request.getParameter("pass"); 
 		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String mydropdown=request.getParameter("mydropdown");*/
		
		String val=request.getQueryString();
		//out.print(val);
		
		String va[]=val.split(",");
		//out.print(va[0]);
		
		session.setAttribute("content1",va[0]);	
		//out.print(va[1]);
		session.setAttribute("content2",va[1]);
		//padding:10px;
		session.setAttribute("content3",va[2]);
		
		
		
		
	
		%>
		<table border:1px solid #F00; box-shadow:2px 2px 15px #003300; border-radius:10px;  align="center" height="200" width="350">
		
		
	
	
		
		
		<tr align="center" bgcolor="#993300">
		
		<td align="center">Select Name</td></tr>
				
        <%
		 Connection con=null;


           try 
		   {
				
				
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faulttollerance","root","");
	
				
				
				//String status="Active";
				//Class.forName("com.mysql.jdbc.Driver");
				
				//con=database.getconnection();
                
   				 Statement st=con.createStatement();
					ResultSet rs = st.executeQuery("SELECT * FROM user_details");
						while (rs.next()) 
							{
							
							
					String user_id=rs.getString("user_id");//out.print(user_id);
					String fname=rs.getString("fname");//out.print(fname);
					String email=rs.getString("email");//out.print(email);
					String password=rs.getString("password");//out.print(password);
					String mobile=rs.getString("mobile");//out.print(mobile);
					String type=rs.getString("type");
					String status=rs.getString("status");
					
					String val22=fname+","+val;
					
					
                    %>
					<tr align="center" bgcolor="#CC6666">
					
					<td align="center">
                    <a href="nam.jsp?<%=val22%>" ><%=fname%></a></td>         
							  </tr>
					
							  
							  
							   <br />
                
					
					<%
							
														
								// response.sendRedirect("userexist.jsp");
						}
						
					
			
			
					
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
			
	
	
 %>
 </table>
  </form>
					
<div align="center">
	<a href="cloudfile1.jsp"><font size="+1" color="#FF3300">Back</font></a></div>
	
              </span>
      </div>
		
	</div>
    
	<div class="container"><img src="images/img03.png" width="1000" height="40" alt="" /></div>
</div>





<div id="footer-content"></div>
<div id="footer">
	
</div>
<!-- end #footer -->
</body>
</html>
