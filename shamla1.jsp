<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
String id ="kaverymahesh@gmail.com";
// request.getParameter("id");

	//String temp[]=null;
	//temp=id.split(",",2);
//String link=request.getParameter("link");

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="mailfromchennaisunday@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="23chennai"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =temp[1]; // out going email id

String from ="mailfromchennaisunday@gmail.com"; //Email id of the recipient

String subject ="Link For Download File";

String messageText ="HAI DA MAHI";


boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
out.println("message successfully sended"); // assume it was sent
//response.sendRedirect("psendlink.jsp?id="+id+" Message send successfully");
}
catch (Exception err)
{
out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();
%>

