<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="This is social network html5 template available in themeforest......" />
<meta name="keywords"
	content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
<meta name="robots" content="index, follow" />
<title>Nearby People | Find Local People</title>

<!-- Stylesheets
    ================================================= -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/ionicons.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!--Google Webfont-->
<link
	href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700'
	rel='stylesheet' type='text/css'>
<!--Favicon-->
<link rel="shortcut icon" type="image/png" href="images/fav.png" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>


</head>
<body>

	<!-- Header
    ================================================= -->
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!--Header End-->
	<div id="page-contents">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="contact-us">
						<div class="row">
							<div class="col-md-8 col-sm-7">
								<h4 class="grey">Edit Your Profile</h4>
								<c:forEach items="${sessionScope.profile}" var="j">

									<form class="contact-form"
										action="<%=request.getContextPath() %>/RegistrationController?flag=updateprofile"
										method="post">
										<input type="hidden" name="regId" value="${j.rid}">
										<div class="form-group">
											<input id="form-message" type="text" name="fname"
												class="form-control" placeholder="First Name"
												required="required" value="${j.fname}" />
										</div>
										<div class="form-group">
											<input id="form-message" type="text" name="lname"
												class="form-control" placeholder="Last Name"
												required="required" value="${j.lname}" />
										</div>
										<br>
										<div></div>
										<br>
										<div>
											Gender: &emsp; Male <input type="radio" name="g1"
												value="Male">&emsp; Female <input type="radio"
												name="g1" value="Female">
										</div>
										<br>
										<div class="form-group">
											<input id="form-message" type="text" name="email"
												class="form-control" placeholder="Enter email"
												required="required" value="${j.loginvo.email}" />
										</div>
										<
										<div class="form-group">
											<input id="form-message" type="text" name="mn"
												class="form-control" placeholder="Mobile Number"
												required="required" value="${j.mno}">
										</div>
										<br>

										<button class="btn-primary" type="submit">Save</button>
							</div>
							</form>
							</c:forEach>
							<div class="col-md-4 col-sm-5">
								<h4 class="grey">Reach Us</h4>
								<div class="reach">
									<span class="phone-icon"><i
										class="icon ion-android-call"></i></span>
									<p>+91-8469308091</p>
								</div>
								<div class="reach">
									<span class="phone-icon"><i class="icon ion-email"></i></span>
									<p>supportspcc@gmail.com</p>
								</div>
								<div class="reach">
									<span class="phone-icon"><i
										class="icon ion-ios-location"></i></span>
									<p>Ahmedabad India</p>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<!-- Post Create Box
           
    <!-- Footer
    ================================================= -->
	<jsp:include page="footer.jsp"></jsp:include>

	<!--preloader-->
	<div id="spinner-wrapper">
		<div class="spinner"></div>
	</div>

	<!-- Scripts
    ================================================= -->
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTMXfmDn0VlqWIyoOxK8997L-amWbUPiQ&callback=initMap"></script>
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.sticky-kit.min.js"></script>
	<script src="js/jquery.scrollbar.min.js"></script>
	<script src="js/script.js"></script>
</body>
</html>
