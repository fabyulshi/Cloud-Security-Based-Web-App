package databaseconnection;

import java.sql.*;
import java.io.*;
import java.util.*;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class databasecon
{
	static Connection con;
	
	
		
		
		public Map<String, Integer> getWordCount(String fileName){
			 
	        FileInputStream fis = null;
	        DataInputStream dis = null;
	        BufferedReader br = null;
	        Map<String, Integer> wordMap = new HashMap<String, Integer>();
	        try {
	            fis = new FileInputStream(fileName);
	            dis = new DataInputStream(fis);
	            br = new BufferedReader(new InputStreamReader(dis));
	            String line = null;
	            while((line = br.readLine()) != null){
	                StringTokenizer st = new StringTokenizer(line, " ");
	                
	                while(st.hasMoreTokens())
	                {
	                	
	                    String tmp = st.nextToken().toLowerCase();
	                    
	                    if(tmp.length()>3)
	                    {	
		                    Pattern p1=Pattern.compile("[A-Z a-z]+");
			           		 Matcher m1 = p1.matcher(tmp);
			           		 while (m1.find()) 
			           		 {
			           			 tmp= m1.group();
				           		 
			                    if(wordMap.containsKey(tmp)){
			                        wordMap.put(tmp, wordMap.get(tmp)+1);
			                    } else {
			                        wordMap.put(tmp, 1);
			                    }
		                    
		                     }
	                    }	 
	                    
	                }
	            }
	        } catch (FileNotFoundException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } finally{
	            try{if(br != null) br.close();}catch(Exception ex){}
	        }
	        return wordMap;
	    }
	     
	    public List<Entry<String, Integer>> sortByValue(Map<String, Integer> wordMap){
	         
	        Set<Entry<String, Integer>> set = wordMap.entrySet();
	        List<Entry<String, Integer>> list = new ArrayList<Entry<String, Integer>>(set);
	        Collections.sort( list, new Comparator<Map.Entry<String, Integer>>()
	        {
	            public int compare( Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2 )
	            {
	                return (o2.getValue()).compareTo( o1.getValue() );
	            }
	        } );
	        return list;
	    } 
	         public static void getconnection(String s)
	    	{
	        	String s11=s;
		String path="E:/apache-tomcat-6.0.18/webapps/Clustering Forensic Analysis/Gallery/";
		String filepath=path+s11;
	        	//System.out.println(s11);
		System.out.println("This is Const:"+filepath);
	        databasecon mdc = new databasecon();
	        Map<String, Integer> wordMap = mdc.getWordCount(filepath);
	        List<Entry<String, Integer>> list = mdc.sortByValue(wordMap);
	        
	
	      String ss=null; 
	
	    for(Map.Entry<String, Integer> entry:list){

		
	   	    if(ss!=null)
	   	    {
			if(entry.getValue()>1)
			{
	   	    	ss+=entry.getKey()+"--"+entry.getValue()+",";
			}
	   	    }
	   	    else
	   	    {
			if(entry.getValue()>1)
			{
	   	    	ss=entry.getKey()+"--"+entry.getValue()+",";
			}
	   	    }

        }
	    
	    try {

        	Class.forName("com.mysql.jdbc.Driver").newInstance();

        	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/forensicanalysis","root", "admin");

            Statement stmt = conn.createStatement();
            
            //System.out.println("stmt ok");	
            
            PreparedStatement ps=conn.prepareStatement("INSERT INTO rpt(filename,re) VALUES(?,?)");
			ps.setString(1,s11);
			ps.setString(2,ss);	

		   int x=ps.executeUpdate();
           
			System.out.println(x);
       }
    catch (Exception e) {
		
	}
    
	    
		   		
		//return con;
	}
	
}

