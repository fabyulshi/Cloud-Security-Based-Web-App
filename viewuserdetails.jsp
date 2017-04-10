<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Deduplication</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
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
                 											Welcome <font color="#FF33FF">&nbsp;&nbsp;&nbsp;Admin</font></a></li>
                 <li class="active"><a href="adminhome.jsp" style="font-size:18px;margin-left:10px;margin-right:10px;">Home</a></li>
                 <li><a href="index.html" style="font-size:18px;margin-left:10px;margin-right:10px;" >Sign Out</a></li>
              </ul>
        
       
		
	</div>
    
	<div id="page" style="margin-top:25px;">
		<div id="content">
			
				<h3 class="title"><u>Admin Home</u></h3>
				
				<div style="clear: both;">&nbsp;</div>
               
          
          
          <div class="well" style="width:930px;height:auto;float:left;border:1px #000 solid;margin:15px;margin-left:-35px;">
    

				<table class="table table-striped table-hover">
                    <thead style="background-color:#FC9;color:#F0C;font-size:20px;">
                    	<tr>
                        	<th>User-ID</th>
                            <th>Password</th>
                            <th>Name</th>
                            <th>E-Mail</th>
                            <th>Mobile</th>
                            <th>Type</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody style="color:#093;font-size:18px;">
                    
                        	
         <%
		
		Connection con = null;
		String user_id=null,fname=null,email=null,password=null,mobile=null,type=null,status=null;
		
		try{
				con=database.getconnection(); 
				Statement st=con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM user_details;");
				while(rs.next())
				{
					user_id=rs.getString("user_id");
					fname=rs.getString("fname");
					email=rs.getString("email");
					password=rs.getString("password");
					mobile=rs.getString("mobile");
					type=rs.getString("type");
					status=rs.getString("status");

%>

                        <tr>
                            <td><%=user_id%></td>
                            <td><%=password%></td>
                            <td><%=fname%></td>
                            <td><%=email%></td>
                            <td><%=mobile%></td>
                             <td><%=type%></td>
                              <td><%=status%></td>
                            <td><a href="deleteuser.jsp?<%=user_id%>"><button class="btn btn-danger" style="width:110px;">
                            			<i class="icon-trash icon-black" style="margin-right:5px;"></i>Delete</button></a></td>
                        </tr>

        
        <%
				}
						}
							
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
%>
                    </tbody>
                 </table>

    
    </div>
                 
            
		</div>
		<!-- end #content -->
		
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
