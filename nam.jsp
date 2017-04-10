<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"%>




<%
		
		 
				
        String val=request.getQueryString();
		//out.print(val);
		String va[]=val.split(",");
		//out.print(va[0]);
		//out.print(va[1]);
		//out.print(va[2]);
		//out.print(va[3]);
		String name=va[0];out.print(name);
		String file=va[1];out.print(file);
		String key1=va[2];out.print(key1);
		String type=va[3];out.print(type);
	
	
	
	
	
	

try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faulttollerance","root","");
PreparedStatement  ps=con.prepareStatement ("insert into shared (name,file1,key1,type1) values (?,?,?,?)");

ps.setString(1,name);
ps.setString(2,file);
ps.setString(3,key1);
ps.setString(4,type);

int x=ps.executeUpdate();

response.sendRedirect("adminhome.jsp");
                
}
   catch(Exception e)
      {
            out.println(e.getMessage());
        }
		
   

	
	
	
		
		
			
 %>
