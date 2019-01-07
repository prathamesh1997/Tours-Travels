<%-- 
    Document   : index
    Created on : May 30, 2018, 10:21:58 AM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
   
    <style type="text/css">
		h2{
			
			font-family: times new roman;
			font-size: 35px;
			word-spacing: 2px;
			font-weight: bold;
			text-align: center;

		}
		h2+p{

			text-align: center;
			font-family: times new roman;
			font-size:20px;
			font-weight: italic;
			word-spacing: 3px;

		}
		.hell{
			text-align: left;
			font-family: times new roman;
			font-size:20px;
			font-weight: italic;
			word-spacing: 3px;
		}
		.haha{
			padding-left: 120px;
			
		}

	</style>

    
    </head>
    <body>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.jsp">Exotica Travels</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="#">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
        <a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-users" style="font-size: 20px;color:black;" >.Sign In</i></a>
        <p>..</p>
        <a href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-user" style="font-size: 20px;color:black;" >.Sign Up</i></a>
        
    </form>
  </div>
</nav> 
    
  <!-- Sign in The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog  modal-lg modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Enter Login Details.</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            <form method="post" action="Login.jsp">
                <div class="form-group">
                    <label for="email">Email :</label>
                    <input type="email" required placeholder="Enter Email Address" name="email" class="form-control">
                </div>
                  <div class="form-group">
                    <label for="password">Password :</label>
                    <input type="password" required placeholder="Enter Password" name="password" class="form-control">
                </div>
                <label class="radio-inline">
                    <input type="radio" name="radio1" value="Admin">Adminstrator
                  </label>
                  <label class="radio-inline">
                      <input type="radio" name="radio1" value="Customer">Customer
                  </label>
                <br>
                <button type="submit" class="btn btn-primary">Submit</button>
                
            </form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
<!-- Sign up Modal 2-->
     <!-- The Modal -->
  <div class="modal" id="myModal2">
    <div class="modal-dialog  modal-lg modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Registration Details</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            <form method="post" action="Registration.jsp">  
                <div class="form-group">
                    <label for="Name"> Name:</label>
                    <input type="text" required placeholder="Enter Name" name="name" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email"> Email Address:</label>
                    <input type="email" required placeholder="Enter Email Address" name="email" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password"> Password:</label>
                    <input type="password" required placeholder="Enter Password" name="password" class="form-control">
                </div>
                 <div class="form-group">
                    <label for="number">Mobile No:</label>
                    <input type="number" class="form-control" name="mobile" required placeholder="Enter Contact Number" />
                </div>
                
                 <label class="radio-inline">
                    <input type="radio" name="radio" value="Customer">Customer
                </label>
                <br>
                <button type="submit" class="btn btn-primary">Submit</button>
                
            </form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
     <br>
     <div class="container">
         <div class="row">
             <div class="col-sm-4">
                 <div class="card">
                     <div class="card-header">
                         <h4 style="text-align:center; font-size: 20px;">India Tour<span class="badge badge-secondary">New</span></h4>
                     </div>
                     <div class="card-body">
                         <img src="images/1.jpg" style="width:100%;">
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing 
                             elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ..</p>
                             
                     </div>
                     
                 </div>
             </div>
             <div class="col-sm-4">
                  <div class="card">
                     <div class="card-header">
                         <h4 style="text-align:center; font-size: 20px;">Dubai Tour<span class="badge badge-secondary">New</span></h4>
                     </div>
                     <div class="card-body">
                          <img src="images/2.jpg" style="width:100%;">
                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing 
                             elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ..</p>
                         
                     </div>
                     
                 </div>
             </div>
             <div class="col-sm-4">
                  <div class="card">
                     <div class="card-header">
                          <h4 style="text-align:center; font-size: 20px;">Australia Tour<span class="badge badge-secondary">New</span></h4>
                          
                     </div>
                     <div class="card-body">
                          <img src="images/3.jpg" style="width:100%;">
                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing 
                             elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ..</p>
                         
                     </div>
                     
                 </div>
             </div>
             
         </div>
         <div class="row">
             <div class="col-sm-4">
                 
             </div>
             <div class="col-sm-4">
                 <a href="#" data-toggle="tooltip" data-placement="right" title="Want To get more exciting offers
                    please Sign In/Sign Up First." style="font-size:55px;color:red;padding-left:120px;"><i class="fa fa-angle-double-down" ></i></a>
             </div>
             <div class="col-sm-4">
                 
             </div>
         </div>
     </div>
     <hr>
     <jsp:include page="Contact_Us.jsp"></jsp:include>
        <script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>
    </body>
</html>
