<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<base href="${pageContext.request.contextPath}/User/">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="This is social network html5 template available in themeforest......" />
<meta name="keywords"
	content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
<meta name="robots" content="index, follow" />
<title>SPCC| SINGLE POINT CITY CLEANER</title>

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
</head>
<body>



	<!-- Top Banner
    ================================================= -->
	<section id="banner">
	<div class="container">

		<!-- Sign Up Form
        ================================================= -->
		<div class="sign-up-form">
			<a class="logo"><img src="images/latest3.png" alt="SPCC" /></a>
			<h2 class="text-white">Single Point City Cleaner</h2>
			<div class="line-divider"></div>
			<div class="form-wrapper">
				<p class="signup-text">Login now and make your city clean</p>
				<form action="abcd" method="post">
					<input type="hidden" value="login" name="flag">
					<fieldset class="form-group">
						<input type="email" class="form-control" id="example-email"
							name="email" placeholder="Enter email">
					</fieldset>
					<fieldset class="form-group">
						<input type="password" class="form-control" id="example-password"
							name="pass" placeholder="Enter a password">
					</fieldset>
					<p>By signning in you agree to the terms</p>
					<button class="btn-secondary" type="submit">Login</button>
			</div>
			</form>
			<h4>
				<a href="forgotPassword.jsp">Forgot password? Click here</a>
			</h4>
			<h3>
				<a
					href="<%=request.getContextPath()%>/RegistrationController?flag=city">Join
					Us By Signing Up Here</a>
			</h3>
			<img class="form-shadow" src="images/bottom-shadow.png" alt="" />
		</div>
		<!-- Sign Up Form End -->

		<svg class="arrows hidden-xs hidden-sm"> <path class="a1"
			d="M0 0 L30 32 L60 0"></path> <path class="a2"
			d="M0 20 L30 52 L60 20"></path> <path class="a3"
			d="M0 40 L30 72 L60 40"></path> </svg>
	</div>
	</section>

	<!-- Features Section
    ================================================= -->
	<section id="features">
	<div class="container wrapper">
		<h1 class="section-title slideDown">Clean Your CIty</h1>
		<div class="row slideUp">
			<div class="feature-item col-md-2 col-sm-6 col-xs-6 col-md-offset-2">

				<div class="feature-icon">
					<i class="icon ion-compose"></i>
				</div>
				<h3>Post complaints</h3>
			</div>
			<div class="feature-item col-md-2 col-sm-6 col-xs-6">
				<div class="feature-icon">
					<i class="icon ion-compose"></i>
				</div>
				<h3>Request For Garbage Collection</h3>
			</div>
			<div class="feature-item col-md-2 col-sm-6 col-xs-6">
				<div class="feature-icon">
					<i class="icon ion-chatbox-working"></i>
				</div>
				<h3>Instant Feedback</h3>
			</div>
			<div class="feature-item col-md-2 col-sm-6 col-xs-6">
				<div class="feature-icon">
					<i class="icon ion-person-add"></i>
				</div>
				<h3>Nearby Complaints</h3>
			</div>
		</div>


		<p></p>

	</div>

	</section>

	<!-- Download Section
    ================================================= -->
	<section id="app-download">
	<div class="container wrapper">
		<h1 class="section-title slideDown">download</h1>
		<ul class="app-btn list-inline slideUp">
			<li><button class="btn-secondary">
					<img src="images/app-store.png" alt="App Store" />
				</button></li>
			<li><button class="btn-secondary">
					<img src="images/google-play.png" alt="Google Play" />
				</button></li>
		</ul>
		<h2 class="sub-title">Coming soon</h2>

	</div>
	</section>



	<!-- Footer
    ================================================= -->
	<jsp:include page="footer.jsp"></jsp:include>

	<!--preloader-->
	<div id="spinner-wrapper">
		<div class="spinner"></div>
	</div>

	<!-- Scripts
    ================================================= -->
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.appear.min.js"></script>
	<script src="js/jquery.incremental-counter.js"></script>
	<script src="js/script.js"></script>

</body>
</html>
