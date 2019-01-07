<%-- 
    Document   : P_info_Controler
    Created on : May 31, 2018, 11:25:49 PM
    Author     : vinay sawant
--%>
<%@page import="java.sql.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            int id=Integer.parseInt(request.getParameter("Id"));
//            String id=request.getParameter("id");
            String name=request.getParameter("name");
            String price=request.getParameter("price");
            String discount=request.getParameter("discount");
            String features=request.getParameter("features");
            
            String sql="insert into product_information (p_id,p_Name,p_Price,p_Discount,p_Features) values(?,?,?,?,?) ";
                try
                {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
                  PreparedStatement ps=conn.prepareStatement(sql);
                  ps.setInt(1, id);
                  ps.setString(2, name);
                  ps.setString(3, price);
                  ps.setString(4, discount);
                  ps.setString(5,features);
                   
                  ps.executeUpdate();
                  
                %>
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Product Information inserted successfully.</strong> 
                   </div>
                   <jsp:include page="Admin.jsp"></jsp:include>
                <%
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                
            
        %>
    </body>
</html>
