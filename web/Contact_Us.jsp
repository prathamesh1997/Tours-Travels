<%-- 
    Document   : Contact_Us
    Created on : May 30, 2018, 12:03:03 PM
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
       <!--     footer Starts here-->
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2>Contact Us.</h2>
                    <p>
                    Sed consequat fermentum pharetra. In vel eros sed dolor porttitor blandit ut vitae nunc. Cras rhoncus nibh et purus vulputate, eget volutpat nibh fringilla. Vestibulum neque ipsum, pulvinar sed venenatis at, tristique ac dui.
                    </p>
            </div>
            <div class="col-sm-6">
                <form action="Mail_Api.jsp" method="post">
                        <div class="form-group">
                                <label for="email" class="hell">From.</label>
                                 <input type="email" class="form-control" id="email" name="name" placeholder="Enter Your Email Address">
                        </div>  
                        <div class="form-group">
                                 <p class="hell">Comment :</p>
                                  <textarea class="form-control" rows="5" cols="50" id="comment" name="area">  </textarea>
                        </div>
                        <button type="Submit" class="btn btn-success">Send Form</button>
                </form>
            </div>
        </div>
        <hr>
	<div class="row">
		<div class="col-sm-4">
			
		</div>
		<div class="col-sm-4">
			<br>
			<div class="haha">
				<i class="fa fa-facebook-square" style="font-size:36px"></i>
				<i class="fa fa-twitter" style="font-size:36px"></i>
				<i class="fa fa-instagram" style="font-size:36px"></i>
		</div>
		</div>
		<div class="col-sm-4">
			
		</div>
	</div>
    </div>
</div>
    </body>
</html>
