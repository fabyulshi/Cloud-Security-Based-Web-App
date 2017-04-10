
				

<%
  // String uname1=(String)session.getAttribute("uname");
  // out.print(uname1);
  // String pass1= request.getParameter("pass");
  // String uname=(String)session.getAttribute("sessname");
   String fname=request.getQueryString();
   out.print(fname); 
   //String st1="ACTIVATED";
 

 
			
				
		//String val=null;
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

