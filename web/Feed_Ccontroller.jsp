<%-- 
    Document   : Feed_Ccontroller
    Created on : Jun 8, 2018, 11:03:26 AM
    Author     : vinay sawant
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String s1=request.getParameter("name");
           String s2=request.getParameter("area");
           
//           SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
//	Date date = new Date();
//	System.out.println(formatter.format(date));
        
            
        String sql="insert into feedback(f_Name,f_Area,f_Date) values (?,?,?)";
        try{
        Class.forName("com.mysql.jdbc.Driver");
                  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
                  PreparedStatement ps=conn.prepareStatement(sql);
                  
                  ps.setString(1, s1);
                  ps.setString(2, s2);
                  ps.setTimestamp(3,new java.sql.Timestamp(new java.util.Date().getTime()));
                 
                   ps.executeUpdate();
                   %>
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Feedback Send successfully, Thanks for Valuable Feedback.</strong> 
                   </div>
                   <jsp:include page="About_Us.jsp"></jsp:include>
                   <%
 }
        catch(Exception e)
 {
     out.println(e);
}
%>
    </body>
</html>
