<%-- 
    Document   : Registration
    Created on : May 30, 2018, 7:53:32 PM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
             <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String s1=request.getParameter("name");
            String s2=request.getParameter("email");
            String s3=request.getParameter("password");
            String s4=request.getParameter("mobile");
            String s5=request.getParameter("radio");
            
             String sql="insert into Registration (Name,email,pswd,MObile_No,Role) values(?,?,?,?,?) ";
                try
                {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
                  PreparedStatement ps=conn.prepareStatement(sql);
                  ps.setString(1, s1);
                  ps.setString(2, s2);
                  ps.setString(3, s3);
                  ps.setString(4, s4);
                  ps.setString(5,s5);
                   
                  ps.executeUpdate();
                  
                %>
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Registration Done successfully, Continue to Sign In.</strong> 
                   </div>
                   <jsp:include page="index.jsp"></jsp:include>
                <%
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                

        %>
        
    </body>
</html>
