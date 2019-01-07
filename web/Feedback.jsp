<%-- 
    Document   : Feedback
    Created on : Jun 8, 2018, 10:44:50 AM
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
        <title>Exotica Travels</title>
    </head>
    <body>
        <jsp:include page="A_Header.jsp"></jsp:include> 
        <h2 style="text-align: center;font-family: times new roman;color: brown">Feedback From Customers.</h2>
        <hr>
        <div class="container">
            <table class="table">
        <tr>
        <td><b>ID</b></td>
        <td><b>Name</b></td>
        <td><b>Feedback</b></td>
        <td><b>Date</b></td>
        
      </tr> 
        <%
            try{
            
                Connection conn=null;
            Class.forName("com.mysql.jdbc.Driver");
            conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
                Statement stmt=conn.createStatement();
                String sql="select * from feedback";
               ResultSet resultSet=stmt.executeQuery(sql);
                
              while(resultSet.next()== true){
                    
                   %>
        <tr>
        <td><%= resultSet.getString("f_id")%></td>
        <td><%= resultSet.getString("f_Name")%></td>
        <td><%= resultSet.getString("f_Area")%></td>
        <td><%= resultSet.getString("f_Date") %></td>
        </tr>
            
        
        <%
               }
                
                
                
}
            catch(Exception e)
            {
                out.println(e);
            }
            %>
            </table>
            </div>
        <jsp:include page="Contact_Us.jsp"></jsp:include>
    </body>
</html>
