<%-- 
    Document   : Mail_Api
    Created on : May 30, 2018, 2:25:10 PM
    Author     : vinay sawant
--%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.*"%>
<!--import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;-->


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    </head>
    <body>
        <%
            
            String sub=request.getParameter("name");
           String area=request.getParameter("area");
           final String from="javaexample97@gmail.com";
           final String pass="java@123";
           final String to="prathameshsawant97@gmail.com";

//                    Properties 
        Properties props=new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
         props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.socketFactory.port","587");
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port","587");//465 or 587
         props.put("mail.smtp.starttls.enable", "true");
         props.put("mail.user",from);
         props.put("mail.password",pass);
          props.put("mail.smtp.debug", "true");
         props.put("mail.smtp.socketFactory.fallback", "false");
        //        get Session
        
        
        Session s1=Session.getInstance(props,new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                
                return new PasswordAuthentication(from, pass);
               
                
            }
        
        });
         try{
                MimeMessage message=new MimeMessage(s1);
                 message.setFrom(new InternetAddress(from));  
                message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
//                message.setFrom();
                
                message.setSubject(sub);
                message.setContent(area,"text/html");
                
//                Send Message
                
                Transport.send(message);
//                String result="Your message sent Successfully";
//              out.print(result);
//              
        %>
        <div class="alert alert-success alert-dismissible">
             <button type="button" class="close" data-dismiss="alert">&times;</button>
         <strong>Message Was sent successfully!!!</strong> 
        </div>
        <jsp:include page="index.jsp"></jsp:include>
        <%
            
        


        }
        catch(MessagingException e){
           out.print(e);
        }
        
        
        %>
    </body>
</html>
