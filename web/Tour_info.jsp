<%-- 
    Document   : Tour_info
    Created on : Jun 1, 2018, 11:29:35 AM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exotica Travels.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
        
        
        <div class="container">
            <%
                  Connection con;
             Statement stm;
             ResultSet rs;
             String imgpath;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
   
                String query="select p_id,product_image,p_Name,p_Price,p_Discount,p_Features from product_images inner join product_information using(p_id)";
                stm=con.createStatement();
                rs=stm.executeQuery(query);
                
                while(rs.next()){
                    String Id=rs.getString("p_id");
                    imgpath=rs.getString("product_image");
                    String p_Name=rs.getString("p_Name");
                    String p_Price=rs.getString("p_Price");
                    String p_Discount=rs.getString("p_Discount");
                    String p_Features=rs.getString("p_Features");
                    
                    %>
                    <div class="media border p-3" >
                        <img src="P_Images/<%= imgpath %>" alt=""  class="mr-3 mt-3"  style="width:200px;">
                        <div class="body">
                            <h4 Style="font-family: times new roman;font-stretch: normal" ><%= p_Name %></h4>
                            <h6><%= p_Price %> .INR ,<span style="text-align: right;font-weight: bold;color: red"><%= p_Discount %> Off</span></h6>
                            <p><%= p_Features %></p>
                            <a href="Cart.jsp?c=<%= Id %>" class="btn btn-primary">Book Now >></a>
                        </div>
                    </div>
                    
       
            <%
                }
                
            }   
            catch(Exception e){
                e.printStackTrace();
            }

        %>                     
         </div>
    </body>
</html>
