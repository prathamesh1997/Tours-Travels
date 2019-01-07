<%-- 
    Document   : delete
    Created on : Feb 11, 2018, 7:56:21 PM
    Author     : vinay sawant
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
        <%
            int id=Integer.parseInt(request.getParameter("d"));
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
            Statement stat=conn.createStatement();
            stat.executeUpdate("delete from product_images inner join product_information using(p_id) where p_id='"+id+"'");
           %> 
            <div class="alert alert-success alert-dismissible">
             <button type="button" class="close" data-dismiss="alert">&times;</button>
         <strong>Information was Deleted successfully!!!</strong> 
        </div>
        <jsp:forward page="Admin.jsp"></jsp:forward>
           
        
    </body>
</html>
