<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
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
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="col-md-3 static">
		<div class="profile-card">
			<img src="images/dp.jpg" alt="user" class="profile-photo" />
			<h3>
				<a class="text-white">${sessionScope.name1}</a>
			</h3>
		</div>
		<ul class="nav-news-feed">
			<li><i class="icon ion-ios-paper"></i>
			<div>
					<a href="main.jsp">Register complaint</a>
				</div></li>
			<li><i class="icon ion-ios-people"></i>
			<div>
					<a
						href="<%=request.getContextPath()%>/NewComplaintController?flag=viewComp&id=${sessionScope.userID}">My
						complaints</a>
				</div></li>
			<li><i class="icon ion-chatboxes"></i>
			<div>
					<a href="feedback.jsp">Feedback</a>
				</div></li>
			<li><i class="icon ion-ios-paper"></i>
			<div>
					<a
						href="<%=request.getContextPath()%>/RequestGarbageController?flag=loadcity">Request
						for garbage collection</a>
				</div></li>
			<li><i class="icon ion-ios-people"></i>
			<div>
					<a
						href="<%=request.getContextPath()%>/RequestGarbageController?flag=view">My
						Requests</a>
				</div></li>
		</ul>
		<!--news-feed links ends-->

	</div>
</body>
</html>