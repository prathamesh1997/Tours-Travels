<%-- 
    Document   : About_Us
    Created on : May 31, 2018, 5:30:44 PM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About_Us</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  	
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
        <jsp:include page="C_Header.jsp"></jsp:include>
        
        <div class="jumbotron jumbotron-fluid bg bg-dark" 	>
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="shadow-lg p-4 mb-4 bg-white">
					<center>
						<i class="fa fa-angellist" style="font-size:48px;color:red"></i>	
					</center>
					<hr>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ... The first word, “Lorem,” isn't even a word; instead it's a piece of the word “dolorem,” meaning pain, suffering, or </p>
				</div>
				</div>
				<hr>
				<div class="col-sm-4">
					<div class="shadow-lg p-4 mb-4 bg-white">
				<center>
					<i class="fa fa-opencart" style="font-size:48px;color:black"></i>
				</center>
					<hr>		
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ... The first word, “Lorem,” isn't even a word; instead it's a piece of the word “dolorem,” meaning pain, suffering, or </p>
				</div>
			</div>
				<hr>
				<div class="col-sm-4">
					<div class="shadow-lg p-4 mb-4 bg-white">
				<center>
                                    <i class="fa fa-users" style="font-size:48px;color:	#000080"></i>
				</center>
						<hr>	
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ... The first word, “Lorem,” isn't even a word; instead it's a piece of the word “dolorem,” meaning pain, suffering, or </p>

				</div>
			</div>
				<hr>
		</div>	
	</div>
</div>

<hr>
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2>Enter FeedBack.</h2>
                    <p>
                    Sed consequat fermentum pharetra. In vel eros sed dolor porttitor blandit ut vitae nunc. Cras rhoncus nibh et purus vulputate, eget volutpat nibh fringilla. Vestibulum neque ipsum, pulvinar sed venenatis at, tristique ac dui.
                    </p>
            </div>
            <div class="col-sm-6">
                <form action="Feed_Ccontroller.jsp" method="post">
                        <div class="form-group">
                                <label for="name" class="hell">From.</label>
                                 <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Name">
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
        
<script>
		$(document).ready(function(){
				$('[data-toggle="tooltip"]').tooltip();

		});
</script>
    </body>
</html>
