<%-- 
    Document   : C1_home
    Created on : May 30, 2018, 9:23:02 PM
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
            
         <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 80%;
      height: auto;
      
  }
  </style>
    </head>
    <body>
        <jsp:include page="C_Header.jsp"></jsp:include>
        <div class="container">
<!--        Carousel Starts Here-->
<div id="demo" class="carousel slide" data-rde="carousel">
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-item ">
            <img src="images/Carousel_1.jpg" alt="India" style="width:100%">
            <div class="carousel-caption">
                <h3>Trael to India .</h3>
                <p>Get amazing experience</p>
            </div>
        </div>
        <div class="carousel-item active">
            <img src="images/Carousel_2.jpg" alt="Customer Experience" style="width:100%" >
            <div class="carousel-caption">
            <h3>Hurry Up !!!</h3>
            <p>Get amazing experience</p>
        </div>
        </div>
        <div class="carousel-item">
            <img src="images/Carousel_3.jpg" alt="Australia" style="width:100%" >
            <div class="carousel-caption">
            <h3>Travel to Australia.</h3>
            <p>Get amazing experience</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/Carousel_4.jpg" alt="Exciting Places" style="width:100%" >
            <div class="carousel-caption">
            <h3>Travel Every part of the world.</h3>
            <p>Get amazing experience</p>
        </div>
        </div>
        
    </div>
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<!--Carousel Ends Here-->


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
        </div>
        <br>
        
        <jsp:include page="Tour_info.jsp"></jsp:include>
        <hr>
        <jsp:include page="Contact_Us.jsp"></jsp:include>
    </body>
</html>
