<%-- 
    Document   : Admin
    Created on : May 30, 2018, 9:22:47 PM
    Author     : vinay sawant
--%>
<%@page import="javax.persistence.Table"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exotica Travels</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  	
  	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  	
    </head>
    <body>
        <jsp:include page="A_Header.jsp"></jsp:include>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h3 style="text-align: center;font-family: times new roman">Upload Image Here :</h3>
                    <form action="Product_Controller.jsp" method="post" enctype="multipart/form-data" >
                        <div class="form-group">
                            <label for="file"></label>
                            <input type="file" name="file" required placeholder="Upload Image here" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" name="Ok" class="btn btn-success">Submit Image</button>
                        </div>   
                    </form>
                </div>
                <div class="col-sm-6 ">
                    <h3 style="text-align: center;font-family: times new roman">Insert Tour Information.</h3>
                    <form action="P_info_Controler.jsp" method="post"> 
                         <div class="form-group">
                            <label for="text">Product Id :</label>
                            <input type="text" name="Id" required placeholder="Enter Product ID" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label for="text">Name :</label>
                            <input type="text" name="name" required placeholder="Enter Product name" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label for="text">Price :</label>
                            <input type="text" name="price" required placeholder="Enter Product Price" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label for="text">Discount:</label>
                            <input type="text" name="discount" required placeholder="Enter Discount on Product" class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="textarea">Features :</label>
                            <textarea class="form-control" rows="5" cols="50" id="comment" name="features"></textarea>
                        </div>
                        <button type="submit" name="submit" class="btn btn-success">Submit</button>
                        <button type="reset" name="reset" class="btn btn-danger">Reset</button>
                    </form>
                </div>
            </div>
            
        </div>
        <hr>
        <div class="container">
            <h3 style="text-align: center;font-family: times new roman;color:#A52A2A" >Edit or Delete the Information.</h3>
        <table class="table">
        <tr>
        <td><b>ID</b></td>
        <td><b>Tour Images</b></td>
        <td><b>Name</b></td>
        <td><b>Price</b></td>
        <td><b>Discount</b></td>
        <td><b>Features</b></td>
        <td><b>Edit</b></td>
        <td><b>Delete</b></td>
      </tr> 
           <%
            try{
            
                Connection conn=null;
            Class.forName("com.mysql.jdbc.Driver");
            conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
                Statement stmt=conn.createStatement();
                String sql="select * from product_images inner join product_information using(p_id)";
               ResultSet resultSet=stmt.executeQuery(sql);
                
              while(resultSet.next()== true){
                    
                   %>
         <tr>
        <td><%= resultSet.getString("p_id")%></td>
        <td><%= resultSet.getString("product_image")%></td>
        <td><%= resultSet.getString("p_Name")%></td>
        <td><%= resultSet.getString("p_Price") %></td>
        <td><%= resultSet.getString("p_Discount") %></td>
        <td><%= resultSet.getString("p_Features") %></td>
        <td>
            <a href='A_Edit.jsp?u=<%=resultSet.getString("p_id") %>' class="btn btn-warning">Edit</a>
        </td>
        <td><a href='delete.jsp?d=<%= resultSet.getString("p_id")  %>' class="btn btn-danger">Delete</a></td>
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
        <hr>
        <jsp:include page="Contact_Us.jsp"></jsp:include>
    </body>
</html>
