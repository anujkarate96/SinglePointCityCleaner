<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Single Point City Cleaner</title>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="This is social network html5 template available in themeforest......" />
<meta name="keywords"
	content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
<meta name="robots" content="index, follow" />
<title>Single Point City Cleaner</title>

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
</head>
<body>
	<header id="header"> <nav
		class="navbar navbar-default navbar-fixed-top menu">
	<div class="container">

		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><img
				src="images/latest3.png" alt="logo" /></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right main-menu">
				<li class="dropdown"><a
					href="<%=request.getContextPath()%>/RequestGarbageController?flag=home">Home</a></li>
				<li class="dropdown"><a href="contactus.jsp">Contact</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Profile <span><img
							src="images/down-arrow.png" alt="" /></span></a>
					<ul class="dropdown-menu login">
						<li><a href="timeline.html">Timeline</a></li>

						<li><a
							href="<%=request.getContextPath()%>/NewComplaintController?flag=viewAdminComplaint&id=${sessionScope.userID}">View
								Complaints</a></li>
						<li><a
							href="<%=request.getContextPath()%>/RegistrationController?flag=profile&id=${sessionScope.userID}">Profile
								Settings</a></li>
						<li><a href="?flag=logout">Logout</a></li>

					</ul></li>


			</ul>
			<form class="navbar-form navbar-right hidden-sm"></form>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav> </header>
</body>
</html>