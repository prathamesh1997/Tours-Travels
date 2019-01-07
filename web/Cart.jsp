<%-- 
    Document   : Cart
    Created on : Jun 5, 2018, 4:53:30 PM
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
        <title>Cart</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        
        <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="C_Header.jsp"></jsp:include>
        <br>
        <h3 style="text-align: center;font-family: times new roman">Check Out Form.</h3>
        <div class="container">
            <div class="row">
                
                <div class="col-sm-8">
                    <form action="" method="post">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="text">First Name :</label>
                                    <input type="text" required placeholder="Enter First Name" name="f_Name" class="form-control" >
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="text">Last Name :</label>
                                    <input type="text" required placeholder="Enter Last Name" name="l_Name" class="form-control" >
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">User Name :</label>
                            <input type="email" required placeholder="Enter Email Adress" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="Add1">Address :</label>
                            <textarea required  name="Add1" class="form-control"></textarea>
                        </div>
                         <div class="form-group">
                            <label for="Add2">Address 2 :(optional)</label>
                            <textarea required  name="Add2" class="form-control"></textarea>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="form-group">
                                <label for="sel1">Country.</label>
                                 <select class="form-control" id="sel1" name="sellist1">
                                    <option>India</option>
                                    <option>Australia</option>
                                    <option>China</option>
                                    <option>Japan</option>
                                  </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                <label for="sel2">State.</label>
                                 <select class="form-control" id="sel2" name="sellist2">
                                    <option>Maharashtra</option>
                                    <option>Chennai</option>
                                    <option>Rajasthan</option>
                                    <option>Goa</option>
                                  </select>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <label for="zip">Zip.</label>
                                    <input type="number" name="zip" required class="form-control">
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="form-check">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" value="">Shipping address is same as my billing address.
                        </label>
                      </div>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" value="">Save this information for the next time.
                        </label>
                      </div>
                        <hr>
                        <h4 style="text-align:left;font-family: times new roman">Payment</h4>
                        <div class="form-check">
                            <label class="form-check-label" for="radio1">
                              <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" checked>Credit Card
                            </label>
                          </div>
                          <div class="form-check">
                            <label class="form-check-label" for="radio2">
                              <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Debit Card
                            </label>
                          </div>
                          <div class="form-check">
                            <label class="form-check-label">
                              <input type="radio" class="form-check-input" id="radio3" name="optradio" value="payPal">Pay Pal
                            </label>
                          </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="Nc">Name on Card.</label>
                                    <input type="text" name="c_Name" required class="form-control">
                                </div>
                                
                            </div>
                               <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="Nc">Card Number.</label>
                                    <input type="number" name="c_Num" required class="form-control">
                                </div>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <label for="Exp">Expiration :</label>
                                    <input type="number" name="Exp" required class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <label for="Exp">CVV</label>
                                    <input type="number" name="CVV" required class="form-control">
                                </div>
                            </div>
                            
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-primary btn-block">Continue to CheckOut.</button>
                    </form>
                </div>
                <div class="col-sm-4">
                    <%
                                      
                        String host="jdbc:mysql://localhost:3306/Exotica_Travels";
                        Connection conn=null;
                        Statement stat=null;
                        ResultSet res=null;
                        PreparedStatement stmt=null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        conn=DriverManager.getConnection(host,"root","ISHWARi123");
                            
                        stat=conn.createStatement();
                            int p_id=Integer.parseInt(request.getParameter("c"));
                            
                         String data="select * from product_images inner join product_information using(p_id) where p_id='"+p_id+"'";
                         res=stat.executeQuery(data);
                         while(res.next())
              {
                    %>
                    <div class="media border p-3 shadow p-4 mb-4 bg-white">
                        <div class="media-body">
                             <input type="hidden" name="id" value='<%=res.getInt("p_id") %>'/>
                            <h3><%= res.getString("p_Name")%></h3>
                            <h6>Price :<%= res.getString("p_Price")%> ,Discount: <%= res.getString("p_Discount")%></h6>
                            <p>Features: <%= res.getString("p_Features")%></p>
                        </div>
                            <a href="#"><i class="material-icons" style="font-size:36px">delete</i></a>
                    </div>
                 <%
              }  
            %>
                
                </div>
                    
            </div>
        </div>    
        
        <hr>
        
        <jsp:include page="Contact_Us.jsp"></jsp:include>
    </body>
</html>
