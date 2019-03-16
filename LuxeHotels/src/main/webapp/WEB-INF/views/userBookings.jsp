
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
  <head>
    <title>Luxe Hotels</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/home">Luxe Hotels</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="/home" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="/hotels" class="nav-link">Hotels</a></li>
	          <li class="nav-item"><a href="/experience" class="nav-link">Experiences</a></li>
	          <c:set var = "userId" scope = "session" value = "${fbProfile.id}"/>
	          <li class="nav-item active"><a href="/userBookings?userId=${userId}" class="nav-link">My Bookings</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap" style="background-image: url('images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate mb-5 pb-5 text-center text-md-left" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Let's create <br>memories</h1>
          </div>
        </div>
      </div>
    </div>
    
    
  <section class="ftco-section contact-section ftco-degree-bg">

        <div class="nav nav-pills justify-content-center">
          <div class="col-md-10">
            <h2 class="h4">Booking Details</h2>
          </div>
          <div class="w-100"></div>
          <div class="col-md-2">
            <p><span>Address:</span> 198 West 21th Street, Suite 721 Singapore 10016 <br> <a href="tel://1234567920">+ 12345678</a></p>
          </div>
          <div class="col-md-2">
            <p><span>Room Type: </span> <a href="#">Executive Suite</a></p>
          </div>
          <div class="col-md-2">
            <p><span>From: </span>11-Arp-2019</p>
          </div>
          <div class="col-md-2">
            <p><span>To: </span>15-Apr-2019</p>
          </div>
          <div class="col-md-2">
            <p><span>Guest: </span><c:out value="${userData.bookingDtls.guests}"></c:out></p>
          </div>
        </div>

      <div class="container">
        <div class="row d-flex justify-content-center">
          <div>&nbsp;</div>
          <div class="col-md-2 d-flex ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><a href="#"><span class="flaticon-resort"  style="font-size:40px;color:#16ddb2"></span></a></div>
              <div class="media-body">
                <c:choose>
                	<c:when test="${userData.bookingDtls.status eq 'Checked-In'}">
                  		<p  style="font-size:13px">Check-Out</p>
                  	</c:when>
                  	<c:otherwise>
                  		<p  style="font-size:13px">Check-In</p>
                  	</c:otherwise>
                 </c:choose>
              </div>
            </div>      
          </div>
          <div class="col-md-2 d-flex ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><a href="#"><span class="flaticon-around"  style="font-size:40px;color:#16ddb2"></span></a></div>
              <div class="media-body">
                 <p style="font-size:13px">Travel <br> Arrangements</p>
              </div>
            </div>    
          </div>
          <div class="col-md-2 d-flex ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><a href="#"><span class="flaticon-compass"  style="font-size:40px;color:#16ddb2"></span></a></div>
              <div class="media-body">
                 <p style="font-size:13px">Plan <br>my trip</p>
              </div>
            </div>      
          </div>
          <div class="col-md-2 d-flex ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><a href="#"><span class="flaticon-map-of-roads" style="font-size:40px;color:#16ddb2"></span></a></div>
              <div class="media-body">
                 <p style="font-size:13px">Order <br>food</p>
              </div>
            </div>      
          </div>
          
          <div class="col-md-2 d-flex ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><a href="#"><span class="flaticon-map-of-roads" style="font-size:40px;color:#16ddb2"></span></a></div>
              <div class="media-body">
                 <p style="font-size:13px">Ask LuxeBot</p>
              </div>
            </div>      
          </div>
          
          <div class="col-md-2 d-flex ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><a href="#"><span class="flaticon-map-of-roads" style="font-size:40px;color:#16ddb2"></span></a></div>
              <div class="media-body">
                 <p style="font-size:13px">Personalize <br> Room</p>
              </div>
            </div>      
          </div>
          
          <c:forEach var="service" items="${userData.personalisedServices}">
        	
        	<div class="col-md-2 d-flex ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><a href="#"><span class="flaticon-resort" style="font-size:40px;color:#16ddb2"></span></a></div>
              <div class="media-body">
                 <p style="font-size:13px"><c:out value="${service.key}"/></p>
              </div>
            </div>      
          </div>
        	</c:forEach>
        </div>
      </div>

    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h4 class="mb-4">Experience Singapore</h2>
          </div>
        </div>
        <div class="row">
             <c:forEach var="exp" items="${userData.personalisedExp}">
        	
	        	<div class="col-md-4 ftco-animate">
        		<a href="#" class="destination-entry img" style="background-image: url(<c:out value="${exp.value}"/>);">
        			<div class="text text-center">
        				<h5><c:out value="${exp.key}"/></h5>
        			</div>
        		</a>
        	  </div>
        	</c:forEach>
        </div>
    	</div>
    </section>
    
    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h4 class="mb-4">Hidden gems of Singapore</h4>
          </div>
        </div>
        <div class="row">
        <c:forEach var="hiddenGem" items="${hiddenGems}">
        	
	        	<div class="col-md-4 ftco-animate">
        		<a href="#" class="destination-entry img" style="background-image: url(<c:out value="${hiddenGem.value}"/>);">
        			<div class="text text-center">
        				<h5><c:out value="${hiddenGem.key}"/></h5>
        			</div>
        		</a>
        	  </div>
        	</c:forEach>
        	
        </div>
    	</div>
    </section>
    
     <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Luxe Hotels</h2>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Online enquiry</a></li>
                <li><a href="#" class="py-2 d-block">Call Us</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  
  </body>
  </html>