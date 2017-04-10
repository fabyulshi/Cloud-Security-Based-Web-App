<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<%
		
		 
		String uid=request.getQueryString();
		//out.print(uid);
		String val=(String)session.getAttribute("ff");
		out.print(val);
		String uname=(String)session.getAttribute("sessname");
        out.print(uname);
        String file_size=null;
         String file_name=null;








 try
 {
	Connection con=database.getconnection(); 
    Statement st=con.createStatement();
	
			ResultSet rs = st.executeQuery("select file_name,file_size from upload_file where sec_key='"+val+"'");
			while (rs.next()) 
			{
				file_name=rs.getString("file_name");
				out.print(file_name);
				file_size=rs.getString("file_size");
				//out.print(file_size);
				
				
				
				
				
				
				
try
 {
	Connection con1=database.getconnection(); 
    Statement st1=con1.createStatement();
	
			ResultSet rs1 = st1.executeQuery("select files,fname,sizes,status from client where fname='"+file_name+"'");
			while (rs1.next()) 
			{
				String file_n1=rs1.getString("files");
				String file_name1=rs1.getString("fname");
				String file_size1=rs1.getString("sizes");
				String sta=rs1.getString("status");
				//out.print(file_name1);
				//out.print(file_size);
				//out.print(sta);
				session.setAttribute("file_name1",file_name1);
				session.setAttribute("file_size1",file_size1);
				session.setAttribute("uid",uid);
				
				
				
				
			    String stt="INSERTED";
			
			    if(stt.equals(sta))
				{
			
			    if(file_name1.equals(file_name))
				{
				if(file_size1.equals(file_size))
				{
				response.sendRedirect("next.jsp");
				}
				}
				}
				
						

	    }
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}


	    }
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
 




Connection conn=null;
PreparedStatement ps=null;
String st="INSERTED";
try
{

conn=database.getconnection();
ps=conn.prepareStatement ("insert into client (files,fname,clients,users,sizes,status) values (?,?,?,?,?,?)");


ps.setString(1,val);
ps.setString(2,file_name);
ps.setString(3,uid);
ps.setString(4,uname);
ps.setString(5,file_size);
ps.setString(6,st);

int x=ps.executeUpdate();

            
         response.sendRedirect("viewfile.jsp");
            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        

		
	
 %>
