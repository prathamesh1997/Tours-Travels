<%-- 
    Document   : A_Edit
    Created on : Jun 4, 2018, 5:27:06 PM
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
        <title>JSP Page</title>
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
        <jsp:include page="A_Header.jsp"></jsp:include>
        <div class="container">
            <%
                
            String host="jdbc:mysql://localhost:3306/Exotica_Travels";
            Connection conn=null;
            Statement stat=null;
            ResultSet res=null;
            PreparedStatement stmt=null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn=DriverManager.getConnection(host,"root","ISHWARi123");
            %>
            <br>
                 <h3 style="text-align: center;font-family: times new roman;color:#A52A2A" >Update the Information.</h3>
       
            <form action="" method="post">
                         <% 
              stat=conn.createStatement();
              int u=Integer.parseInt(request.getParameter("u"));
              
              String data="select * from product_information where p_id='"+u+"'";
              res=stat.executeQuery(data);

              while(res.next())
              {
            %>    
             <input type="hidden" name="id" value='<%=res.getString("p_id") %>'/>
             <div class="form-group">
                
<!--        <input type="hidden" class="form-control" name="img" '> -->
             </div>
              <div class="form-group">
                 <label for="text">Name</label>
                 <input type="text" class="form-control" name="Name" value='<%= res.getString("p_Name") %>'> 
             </div>
              <div class="form-group">
                 <label for="text">Price</label>
                 <input type="text" class="form-control" name="price" value='<%= res.getString("p_Price") %>'> 
             </div>
              <div class="form-group">
                 <label for="text">Discount</label>
                 <input type="text" class="form-control" name="Discount" value='<%= res.getString("p_Discount") %>'> 
             </div>
              <div class="form-group">
                 <label for="text">Features</label>
                 <input type="text" class="form-control" name="Features" value='<%= res.getString("p_Features") %>'> 
             </div>
               <%
              }  
            %>    
            <button type="submit" class="btn btn-warning">Update</button>
            <a href="Admin.jsp" class="btn btn-primary">Back</a>
            </form>
        </div>
            <hr>
            
            <jsp:include page="Contact_Us.jsp"></jsp:include>
            <%
String a=request.getParameter("id");
//String b=request.getParameter("img");
String c=request.getParameter("Name");
String d=request.getParameter("price");
String e=request.getParameter("Discount");
String f=request.getParameter("Features");
    if(a!=null && c!=null && d!=null && e!=null && f!=null )
    {
        String query="update product_information set p_Name=?,p_Price=?,p_Discount=?,p_Features=? where p_id='"+a+"'";
        stmt=conn.prepareStatement(query);
        stmt.setString(1, c);
        stmt.setString(2, d);
        stmt.setString(3, e);
        stmt.setString(4, f);
        stmt.executeUpdate();
        
        %>
        <div class="alert alert-success alert-dismissible">
             <button type="button" class="close" data-dismiss="alert">&times;</button>
         <strong>Information was updated successfully!!!</strong> 
        </div>
        <jsp:forward page="Admin.jsp"></jsp:forward>
   <%
        }
%>
    </body>
</html>
