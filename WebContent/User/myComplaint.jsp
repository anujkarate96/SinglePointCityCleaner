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
	<!--Header End-->




	<div id="page-contents">
		<div class="container">
			<div class="row">

				<!-- Newsfeed Common Side Bar Left
          ================================================= -->
				<jsp:include page="leftSidebar.jsp"></jsp:include>
				<div class="col-md-7">

					<!-- Nearby People List
            ================================================= -->
					<c:forEach items="${sessionScope.viewComplaintList}" var="i">
						<div class="people-nearby">

							<div>

								<img style="height: 350px; width: 350px"
									src="${pageContext.request.contextPath}/doc/${i.filename}">
							</div>

							<div class="nearby-user">
								<div class="row">
									<div class="col-md-7 col-sm-7">
										<h5>
											<a href="#" class="profile-link"></a>
										</h5>
										<p>${i.discription}</p>
										<p>${i.date}</p>
										<p>${i.time}</p>
										Area : ${i.areaVO.areaName}
									</div>
								</div>
								<div></div>
							</div>
						</div>
					</c:forEach>

					<!-- Post Create Box
            ================================================= -->

				</div>
			</div>
			<!-- Post Create Box End -->

		</div>

		<!-- Newsfeed Common Side Bar Right
          ================================================= -->

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
