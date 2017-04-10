<%@ page import="java.sql.*,databaseconnection.*"%>
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






<script type="text/javascript">

function valid()

{

	var a = document.form.uname.value;
	var b = document.form.fname.value;
	var c = document.form.pass.value;
	var d = document.form.mobile.value;
	if(document.form.mydropdown.selectedIndex==0)
		{
			alert("Choose any option from the list");
			document.form.mydropdown.focus() ;
			return false;
		}
	if(a==""){
		alert("Enter Your User-Id");
		document.form.uname.focus();
		return false;
	}
	
		if(c==""){
		alert("Enter Your Password");
		document.form.pass.focus();
		return false;
	}
	
	if(b==""){
		alert("Enter Your Name");
		document.form.fname.focus();
		return false;
	}

	
}
</script>






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
    
              <form action="ccc.jsp" method="post" name="form" onsubmit="return valid()" >
				<table class="table table-striped table-hover">
                    <thead style="background-color:#FC9;color:#F0C;font-size:20px;">
                    	<tr>
                        	<th>File_ID</th>
                            
                         
                            <th>Uploader</th>
							 <th>File</th>
                            <th>File_KEY</th>
                            <th>Status</th>
                            
							
                        </tr>
                    </thead>
                    <tbody style="color:#093;font-size:18px;">
                    
                        	
         <%
		
		
		Connection con = null;
		String user_id=null,name=null,file1=null,password=null,key1=null,type1=null,status=null;
		
		try
		     {
				con=database.getconnection(); 
				Statement st=con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM shared;");
				while(rs.next())
				{
					user_id=rs.getString("id");
					name=rs.getString("name");
					file1=rs.getString("file1");
					key1=rs.getString("key1");
					type1=rs.getString("type1");
					
					

%>

                        <tr>
                            <td><%=user_id%></td>
                           
                          
                            <td><%=name%></td>
                            <td><%=file1%></td>
                             <td><%=key1%></td>
							 
							 <td>
							
							<a href="accept.jsp?<%=user_id%>"><%=type1%></a>
							
							</td> 
							 
							
							 
                             
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
                   </form>
    
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
