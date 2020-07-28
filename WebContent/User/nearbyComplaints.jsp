<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="${pageContext.request.contextPath}/User/">
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
<script type="text/javascript">
	
	
	function loadArea() {
		
		var x = document.getElementById("cityId").value;
		
		removeAllState();
		
		var http_request = new XMLHttpRequest();
	
		http_request.onreadystatechange = function()

		{
			if (http_request.readyState == 4) {
				//alert(http_request.responseText);
				var jsonObj = JSON.parse(http_request.responseText);
				for (var i = 0; i < jsonObj.length; i++) {
					
					var create = document.createElement("option");
					create.value = jsonObj[i].id;
					create.text = jsonObj[i].areaName;
					
					document.myProfile.area.options.add(create);
				}
				loadCom();
			}
		}
		console.log(x);
		http_request.open("get","${pageContext.request.contextPath}/CityController?flag=loadarea&cid="+x, true);
		http_request.send();
	}
	function removeAllState()
	{
		var removeState=document.myProfile.area.options.length;
		for(i=removeState; i>=0 ; i--)
		{
			document.myProfile.area.remove(i);
		}
		
	}
	
	function loadCom() {
		
		var x = document.getElementById("cityId").value;
		
		removeAllCompany();
		
		
		var http_request = new XMLHttpRequest();
	
		http_request.onreadystatechange = function()

		{
			if (http_request.readyState == 4) {
				//alert(http_request.responseText);
				var jsonObj = JSON.parse(http_request.responseText);
				for (var i = 0; i < jsonObj.length; i++) {
					
					var create = document.createElement("option");
					create.value = jsonObj[i].id;
					create.text = jsonObj[i].companyname;
					
					document.myProfile.company.options.add(create);
				}
			}
		}
		console.log(x);
		http_request.open("get","${pageContext.request.contextPath}/CityController?flag=loadcompany&cid="+x, true);
		http_request.send();
	}
	
	
	function removeAllCompany()
	{
		var removeState=document.myProfile.company.options.length;
		for(i=removeState; i>=0 ; i--)
		{
			document.myProfile.company.remove(i);
		}
		
	}

	</script>
</head>
<body>
	<!-- Header
    ================================================= -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--Header End-->




	<div id="page-contents">
		<div class="container">
			<div class="row">
				<div>

					<!-- Newsfeed Common Side Bar Left
          ================================================= -->
					<jsp:include page="leftSidebar.jsp"></jsp:include>
					<div class="col-md-7">





						<!-- Post Create Box
            ================================================= -->
						<div class="create-post">
							<!-- Post Create Box End -->

							<!-- Nearby People List
            ================================================= -->
							<c:forEach items="${sessionScope.aclist}" var="i">
								<div class="people-nearby">

									<div>

										<img style="height: 350px; width: 350px"
											src="${pageContext.request.contextPath}/doc/${i.filename}">
									</div>

									<div class="nearby-user">
										<div class="row">
											<div class="col-md-7 col-sm-7">
												<c:forEach items="${sessionScope.name}" var="j">
													<c:if test="${i.complaintfrom.lid eq j.loginvo.lid}">
														<h5>
															<a href="#" class="profile-link">${j.fname}</a>
														</h5>
													</c:if>
												</c:forEach>
												<p>${i.discription}</p>
												<p>Date:${i.date}&emsp;&emsp;&emsp;Time:${i.time}</p>
												Area : ${i.areaVO.areaName}&emsp;&emsp;&emsp; City :
												${i.cityVO.cityName}
											</div>
										</div>
										<div></div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>

					<!-- Newsfeed Common Side Bar Right
          ================================================= -->
					<jsp:include page="rightSidebar.jsp"></jsp:include>

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
