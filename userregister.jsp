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


<script type="text/javascript">

function valid()

{

	var a = document.form.uname.value;
	var b = document.form.fname.value;
	var c = document.form.pass.value;
	var d = document.form.mobile.value;
	
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

	var x=document.forms["form"]["email"].value;
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
	  {
	  alert("Please provide a valid email id");
	  document.form.email.focus();
	  return false;
	  }

	if(d==""){
		alert("Enter Date of birth");
		document.form.mobile.focus();
		return false;
	}
	
	if(document.form.mydropdown.selectedIndex==0)
		{
			alert("Choose any option from the list");
			document.form.mydropdown.focus() ;
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
    
		<div class="content" style="height:530px;">
        			<img src="images/reg.jpg" width="450" height="394" alt="" style="margin:10px;margin-top:30px;"  />
        
               <span style="float:right;margin-right:70px;">
                 <form action="register.jsp" method="post" name="form" onsubmit="return valid()" >
                <span style="font-size:24px;color:#F03;font-weight:bold;margin-left:-30px;" >User Register Here..! </span>
                <br /><br />
                <label>User Id :<font color="#FF3300">*</font></label>
                <input type="text" name="uname" class="span4" placeholder="User Name......" /><br />
                 <label>Password :<font color="#FF3300">*</font></label>
                <input type="password" name="pass" class="span4" placeholder="Password......" /><br />
                 <label>First Name :<font color="#FF3300">*</font></label>
                <input type="text" name="fname" class="span4" placeholder="Name......" /><br />
                 <label>E-Mail :<font color="#FF3300">*</font></label>
                <input type="text" name="email" class="span4" placeholder="E-Mail......" /><br />
                 <label>Mobile :<font color="#FF3300">*</font></label>
                <input type="text" name="mobile" class="span4" placeholder="Contact Number......" /><br />
                                <br />
                <button class="btn btn-success" type="submit" style="width:100px;">Submit</button>
                <button class="btn btn-danger" type="reset" style="width:100px;">Clear</button>
    </form>
	<div align="center">
	<a href="index.html"><font size="+1" color="#FF3300">Back</font></a></div>
	
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
