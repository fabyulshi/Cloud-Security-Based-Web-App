<%@ page import="java.sql.*,databaseconnection.*"%>


<%
   String uname1= request.getParameter("uname");
   
   String pass1= request.getParameter("pass");
   
   
   if((uname1.equals("admin"))&(pass1.equals("admin")))
   {
	response.sendRedirect("adminhome.jsp");	
   }
   
   else
   {
 try
 {
	Connection con=database.getconnection(); 
    Statement st=con.createStatement();
	
			ResultSet rs = st.executeQuery("select user_id,type from user_details where user_id='"+uname1+"' and password='"+pass1+"'");
			if (rs.next()) 
			{
				String user_id=rs.getString("user_id");
				//String type=rs.getString("type");
				session.setAttribute("sessname",user_id);	
				
					
				response.sendRedirect("home.jsp"); 
				 
			}
			else
			{
				 response.sendRedirect("index.html?message=Login Failed"); 
			}
			
			
   }
	catch (Exception e) {
			
			e.printStackTrace();
		}

   }
%>

