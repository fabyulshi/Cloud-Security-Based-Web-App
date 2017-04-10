<%
String uname=(String)session.getAttribute("sessname");
String status=null;
/*
String s5="blocked";
try
{
	
	Connection con=database.getconnection(); 
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("SELECT status FROM user_details where user_id='"+uname+"' and type='owner';");
	while(rs.next()) 
	{
	status=rs.getString("status");
	out.print(status);
	}
								
 } 
			catch (Exception e) 
			{
				out.println(e.getMessage());
			}
/*
if(status.equals(s5))
{
	response.sendRedirect("ownerblocked.jsp");
}

else
{
*/
%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<%
		java.util.Date now = new java.util.Date();
		String date=now.toString();
	 	String DATE_FORMAT = "dd-MM-yyyy";
	 	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     	String str = sdf.format(now) ;
		
		
		Random rand = new Random();
		int num = rand.nextInt(100000);
		//String num=Integer.parseInt(num1);
		//out.println("Generated Random Number between 0 to 10 is : " + num);
		//out.println();
		
		String ipAddress =  request.getRemoteAddr();
		//out.println("ipAddress is : " + ipAddress);
		
		
		//out.println(str);
		//out.println(date);
        ArrayList list = new ArrayList();
		ServletContext context = getServletContext(); 

		String dirName =context.getRealPath("\\Gallery");
		String paramname=null;
		String file=null,sfile=null,size=null;
		String image=null,path=null,spath=null,placeimage=null;		
		Connection con=null;		
 		int count=0;
		long size_kb=0;
		File file1 = null;
	
			String fPath =null;
			
		
		try {

			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
								
				if(paramname.equalsIgnoreCase("image"))
				{
					image=multi.getParameter(paramname);
				}
				
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();
	String ans="null,";	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			//out.println(image);
			fPath = context.getRealPath("\\Gallery\\"+image);
			path="Gallery/"+image;
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
			
			long file_size = file1.length();
			size_kb=file_size/1024;
			size=size_kb+"kb".toString();
			//out.println("Size of the file : " + size);
			//out.println();
			FileReader fr=new FileReader(file1);
			LineNumberReader ln=new LineNumberReader(fr);
			
			while (ln.readLine()!=null) {
				count++;
			}
			
			
		}	
		
			
		
	}
	  	 			
			con=database.getconnection(); 
			PreparedStatement ps=null;
		     ps=con.prepareStatement("insert into upload_file(file_name,path,file_size,file_line,sec_key,uname,ip_add,sort_date) values(?,?,?,?,?,?,?,?)");
				//ps.setString(1,image);
               	ps.setString(1,image);
				ps.setString(2,path);	
       			ps.setString(3,size);
				ps.setInt(4,count);
				ps.setInt(5,num);
				ps.setString(6,uname);
				ps.setString(7,ipAddress);
				ps.setString(8,str);
				
																
	    	  int x=ps.executeUpdate();
		
			 if(x!=0)
				{
					  // response.sendRedirect("fileinsert.jsp?Message=success");
				}
	
				else
				{
					response.sendRedirect("../home.jsp?Message=fail");
				}
					
				
							
							  
		  
		  } 
			catch (Exception e) 
			{
				out.println(e.getMessage());
			}
				
				
				int i=1;
				PreparedStatement ps=null;
				if(size_kb>10)
					  {
							 con=database.getconnection(); 
								Statement st=con.createStatement();
								ResultSet rs = st.executeQuery("SELECT count FROM oversize where uname='"+uname+"';");
								if(rs.next()) 
								{
								int j=rs.getInt("count");
								i=j+i;
								ps=con.prepareStatement("update oversize set count='"+i+"' where uname='"+uname+"';"); 
			     				int x=ps.executeUpdate();
								
								
								if(i==2)
								{
									
								//	ps=con.prepareStatement("update user_details set status='blocked' where user_id='"+uname+"';"); 
			     				//	int y=ps.executeUpdate();
									response.sendRedirect("warninginsert.jsp?Message=success");
								
								}
								
								if(i==3)
								{
									
									ps=con.prepareStatement("update user_details set status='blocked' where user_id='"+uname+"' and type='owner';"); 
			     					int y=ps.executeUpdate();
									response.sendRedirect("warninginsert.jsp?Message=success");
									
								}
								
								}
								
								
							else
							{	
							 ps=con.prepareStatement("insert into oversize(uname,count)values(?,?)"); 
												ps.setString(1,uname);
												ps.setInt(2,i);
       										    ps.executeUpdate();
							response.sendRedirect("uploadfiles.jsp?Message=success");
							}
							// out.println("If stmt is executing....");
							 
					  }
				else
				{
					response.sendRedirect("uploadfiles.jsp?Message=success");
				}
				
				
				
						
				
//}				
				
				
		
				
						

	
 %>
</body>
</html>



