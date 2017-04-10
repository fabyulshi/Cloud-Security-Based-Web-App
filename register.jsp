<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<%
		
		 
		String uid=request.getParameter("uname");
		String fname=request.getParameter("fname");
		String pass=request.getParameter("pass"); 
 		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		//String mydropdown=request.getParameter("mydropdown");		

		
		 Connection con=null;


try {
				String status="Active", type="user";


				
				con=database.getconnection();
                
   				 Statement st=con.createStatement();
					ResultSet rs = st.executeQuery("SELECT user_id FROM user_details where user_id='"+uid+"';");
						if (rs.next()) 
							{
														
								 response.sendRedirect("userexist.jsp");
						}
						
					else
					{
			PreparedStatement ps=con.prepareStatement("INSERT INTO user_details (user_id,fname,email,password,mobile,type,status) VALUES(?,?,?,?,?,?,?)");
				ps.setString(1,uid);
				ps.setString(2,fname);	
       			ps.setString(3,email);
       			ps.setString(4,pass);
			    ps.setString(5,mobile);
				//ps.setString(6,mydropdown);
				ps.setString(6,type);
				ps.setString(7,status);
	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("index.html?message=success");
			}
			else
			{
				response.sendRedirect("index.html?message=fail");
			}
			
					}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
			
		
	
 %>
