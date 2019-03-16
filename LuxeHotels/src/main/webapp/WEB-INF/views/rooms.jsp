<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	          <c:if test = "${userAuthenticated}">
	          <li class="nav-item"><span class="nav-link">Welcome <c:out value = "${fbProfile.name}"/>!</span></li>
	          </c:if>
	          <li class="nav-item"><a href="/home" class="nav-link">Home</a></li>
	          <li class="nav-item active"><a href="/hotels" class="nav-link">Hotels</a></li>
	          <li class="nav-item"><a href="/experience" class="nav-link">Experiences</a></li>
	          <c:choose>
         		<c:when test = "${userAuthenticated}">
         		<c:set var = "userId" scope = "session" value = "${fbProfile.id}"/>
	          		<li class="nav-item"><a href="/userBookings?userId=${userId}" class="nav-link">Bookings</a></li>
	          		<li class="nav-item"><a href="/logout" class="nav-link">Logout</a></li>
	          	</c:when>
	          	<c:otherwise>
	          	   <li class="nav-item"><a href="/login" class="nav-link">Login</a></li>
	          	</c:otherwise>
	          </c:choose>
				          
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate mb-5 pb-5 text-center text-md-left" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Let's create <br>memories</h1>
          </div>
        </div>
      </div>
    </div>
		
		
		<section class="ftco-section">


       <div class="container">
        <div class="row">
          <div class="col-lg-12">
              	<form:form action="/rooms" class="search-destination" modelAttribute="searchData">
              		<div class="row">
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Destination</label>
	              				<div class="form-field">
	              					<div class="icon"><span class="icon-my_location"></span></div>
					                <form:input type="text" path="destination" class="form-control" placeholder="Where"/>
					              </div>
				              </div>
              			</div>
              			
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Check In</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					               <form:input type="text" path="fromDate" class="form-control checkin_date" placeholder="Check In"/>
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Check Out</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <form:input type="text" path="toDate" class="form-control checkout_date" placeholder="From"/>
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Guests</label>
              					<div class="form-field">
	              					<div class="select-wrap">
			                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                      <form:select path="guests" class="form-control">
			                        <option value="0">Select</option>
			                      	<option value="1">1</option>
			                        <option value="2">2</option>
			                        <option value="3">3</option>
			                        <option value="4">4</option>
			                        <option value="5">5</option>
			                      </form:select>
			                    </div>
					              </div>
				              </div>
              			</div>
              			
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Travel Purpose</label>
              					<div class="form-field">	
	              					<div class="select-wrap">
			                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                      <form:select path="purpose" class="form-control">
			                       <option value="0">Select</option>
			                      	<option value="Business">Business</option>
			                        <option value="Getaway">Getaway</option>
			                        <option value="Extended">Extended Stay</option>
			                        <option value="Medical">Medical travel</option>
			                        <option value="Staycation">Staycation</option>
			                      </form:select>
			                    </div>
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-self-end">
              				<div class="form-group">
              					<div class="form-field">
					                <input type="submit" value="Search" class="form-control btn btn-primary">
					              </div>
				              </div>
              			</div>
              		</div>
              	</form:form>
              	</div>
              	</div>
              	</div>
              	
              	<br>
              	
              	<c:set var = "userId" scope = "session" value = "${fbProfile.id}"/>
         
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
          	<div class="row">
		    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-1.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-link"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h4><a href="#">Executive Superior</a></h4>
			    						</div>
			    						<div class="two">
			    							<span class="price per-price">$40<small>/night</small></span>
		    							</div>
		    						</div>
		    						
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							 
		    							<span class="ml-auto"><a href="/userBookings?userId=${userId}">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-2.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-link"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h4><a href="#">Cottage Allure</a></h4>
			    						</div>
			    						<div class="two">
			    							<span class="price per-price">$120<small>/night</small></span>
		    							</div>
		    						</div>
		    						
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							 
		    							<span class="ml-auto"><a href="/userBookings?userId=${userId}">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-3.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-link"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h4><a href="#">Junior Suite</a></h4>
			    						</div>
			    						<div class="two">
			    							<span class="price per-price">$60<small>/night</small></span>
		    							</div>
		    						</div>
		    						
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							 
		    							<span class="ml-auto"><a href="/userBookings?userId=${userId}">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-4.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-link"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h4><a href="#">Executive</a></h4>
			    						</div>
			    						<div class="two">
			    							<span class="price per-price">$30<small>/night</small></span>
		    							</div>
		    						</div>
		    						
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							 
		    							<span class="ml-auto"><a href="/userBookings?userId=${userId}">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-5.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-link"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h4><a href="#">Premier</a></h4>

			    						</div>
			    						<div class="two">
			    							<span class="price per-price">$90<small>/night</small></span>
		    							</div>
		    						</div>
		    						
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							 
		    							<span class="ml-auto"><a href="/userBookings?userId=${userId}">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-6.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-link"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h4><a href="#">Master Suite</a></h4>
 
			    						</div>
			    						<div class="two">
			    							<span class="price per-price">$140<small>/night</small></span>
		    							</div>
		    						</div>
		    						
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							 
		    							<span class="ml-auto"><a href="/userBookings?userId=${userId}">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    		</div>


          </div> 
        </div>
      </div>
    </section> <!-- .section -->
 <c:if test = "${not userAuthenticated}">
		<section class="ftco-section-parallax">
      <div class="parallax-img d-flex align-items-center">
        <div class="container">
          <div class="row d-flex justify-content-center">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <h2>Subcribe to our Newsletter</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
              <div class="row d-flex justify-content-center mt-5">
                <div class="col-md-8">
                  <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                      <input type="text" class="form-control" placeholder="Enter email address">
                      <input type="submit" value="Subscribe" class="submit px-3">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    </c:if>

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