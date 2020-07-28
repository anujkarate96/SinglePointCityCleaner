<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="This is social network html5 template available in themeforest......" />
<meta name="keywords"
	content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
<meta name="robots" content="index, follow" />
<title>My Timeline | This is My Coolest Profile</title>

<!-- Stylesheets
    ================================================= -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/ionicons.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />

<!--Favicon-->
<link rel="shortcut icon" type="image/png" href="images/fav.png" />
</head>
<body background="feedback.jpg">





	<!-- Header
    ================================================= -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--Header End-->

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div id="page-contents">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="contact-us">
						<div class="row">
							<div class="col-md-8 col-sm-7">
								<h4 class="grey">Leave a feedback</h4>
								<form class="contact-form"
									action="<%=request.getContextPath()%>/FeedbackController?flag=insert"
									method="post">

									<div class="form-group">
										<input id="form-message" type="text" name="sub"
											class="form-control" placeholder="Subject"
											required="required" />
									</div>
									<div class="form-group">
										<textarea id="form-message" name="des" class="form-control"
											placeholder="    Leave a message for us *" rows="4"
											required="required" data-error="Please,leave us a message."></textarea>
									</div>

									<button class="btn-primary" type="submit">Submit</button>
							</div>
							</form>
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
	<script src="js/script.js"></script>
</body>
</html>
