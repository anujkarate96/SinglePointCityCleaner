<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
<title>SPCC |Single Point City Cleaner</title>

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
<script>

function fncheck()
{
	var p1 = document.getElementById("pass1");
	var p2 = document.getElementById("pass2");
	
	if(p1.value != p2.value)
		{
		alert("Password does not match");
		document.getElementById("pass2").value = "";
		document.getElementById("sp1").innerHTML = "Password does not match";		
		}
	else
		{
		document.getElementById("sp1").innerHTML = "";
		}
	
	}
</script>

</head>
<body>


	<!--Header End-->

	<!-- Top Banner
    ================================================= -->
	<section id="banner">
	<div class="container">

		<!-- Sign Up Form
        ================================================= -->
		<div class="sign-up-form">
			<a href="index.html" class="logo"><img src="images/latest3.png"
				alt="Friend Finder" /></a>
			<h2 class="text-white">Clean Your City</h2>
			<div class="line-divider"></div>
			<div class="form-wrapper">
				<p class="signup-text">Signup and help us to clean our city</p>
				<form
					action="<%=request.getContextPath() %>/RegistrationController?flag=insertotp"
					class="form-validation" method="post">
					<fieldset class="form-group">
						<input type="text" class="form-control" name="fn" id="fn"
							placeholder="Enter First name" required>
					</fieldset>
					<fieldset class="form-group">
						<input type="text" class="form-control" name="ln" id="ln"
							placeholder="Enter Last name" required>
					</fieldset>
					<fieldset class="form-group">
						<select name="cityId" class="form-control" required>
							<c:forEach items="${sessionScope.cityList}" var="p">
								<option value="${p.cid}">${p.cityName}</option>
							</c:forEach>
						</select>
					</fieldset>
					<fieldset class="form-group">
						User <input type="radio" name="usertype" value="user">&emsp;
						Company <input type="radio" name="usertype" value="company">
					</fieldset>
					<fieldset class="form-group">
						Male <input type="radio" name="g1" value="Male">&emsp;
						Female <input type="radio" name="g1" value="Female">
					</fieldset>
					<fieldset class="form-group">
						<input type="email" class="form-control" name="email" id="email"
							placeholder="Enter email">
					</fieldset>
					<fieldset class="form-group">
						<input type="password" class="form-control" id="pass1" name="pass"
							placeholder="Enter a password" required>
					</fieldset>
					<fieldset class="form-group">
						<input type="password" type="password" required
							class="form-control" id="pass2" placeholder="Confirm password"
							onblur="fncheck()"> <span id="sp1" style="color: red"></span>
					</fieldset>
					<fieldset class="form-group">
						<input type="text" class="form-control" id="mn" name="mn"
							placeholder="Enter mobile number" required>
					</fieldset>

					<p>
					<h3>By signning up you agree to the terms</h3>
					</p>
					<button class="btn-secondary" type="submit">Signup</button>
			</div>
			</form>
			<h4>
				<a href="login.jsp">Already have an account?</a>
			</h4>
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
		<h2 class="sub-title">Complaint resolve counter</h2>
		<div id="incremental-counter" data-value="5"></div>
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
		<img src="images/iPhone.png" alt="iPhone" class="img-responsive" />
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
