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


	<div id="page-contents">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="contact-us">
						<div class="row">
							<div class="col-md-8 col-sm-7">
								<h4 class="grey">Request for Garbage Collection</h4>
								<form class="contact-form"
									action="<%=request.getContextPath()%>/RequestGarbageController?flag=insert"
									method="post">

									<div class="form-group">
										<input id="form-message" type="text" name="sub"
											class="form-control" placeholder="Subject"
											required="required" />
									</div>
									<div class="form-group">
										<textarea id="form-message" name="des" class="form-control"
											placeholder="discription" rows="4" required="required"
											data-error="Please,leave us a message."></textarea>
									</div>
									<div class="form-group">
										<label for="aname">Area<span class="text-danger">*</span></label>
										<select name="k">
											<c:forEach items="${sessionScope.list1 }" var="i">
												<option value="${i.id}">${i.areaName}</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group">
										<label for="cname">City<span class="text-danger">*</span></label>
										<select name="s">
											<c:forEach items="${sessionScope.list }" var="i">
												<option value="${i.cid}">${i.cityName}</option>
											</c:forEach>
										</select>
									</div>

									<div class="form-group">
										<label for="caname">Category<span class="text-danger">*</span></label>
										<select name="m">
											<c:forEach items="${sessionScope.list2 }" var="i">
												<option value="${i.caid}">${i.catagoryName}</option>
											</c:forEach>
										</select>
									</div>

									<div class="form-group">
										<label for="scaname">Sub Category<span
											class="text-danger">*</span></label> <select name="n">
											<c:forEach items="${sessionScope.list3 }" var="i">
												<option value="${i.id}">${i.subcatagoryName}</option>
											</c:forEach>
										</select>
									</div>
									<div class="container">
										<div class="form-group">
											<div class='input-group date' id="date">
												<input type='text' class="form-control" /> <span
													class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>
												</span>
											</div>
										</div>
									</div>
									<button class="btn-primary" type="submit">Submit</button>
								</form>
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
	<!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTMXfmDn0VlqWIyoOxK8997L-amWbUPiQ&callback=initMap"></script> -->
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	<!-- <script>
    $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script> -->
</body>
</html>
