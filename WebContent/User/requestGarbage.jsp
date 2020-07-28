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

<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/script.js"></script>
<script type="text/javascript">
	
	
	function loadArea() {
		
		var x = document.getElementById("cityId").value;
		
		removeAllCompany();
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
					
					document.myProfile.k.options.add(create);
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
		var removeState=document.myProfile.k.options.length;
		for(i=removeState; i>=0 ; i--)
		{
			document.myProfile.k.remove(i);
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
		var removeCompany=document.myProfile.company.options.length;
		alert(removeCompany);
		for(i=removeCompany; i>0 ; i--)
		{
			document.myProfile.company.remove(i);
		}
		
	}

	</script>
<script>
	function loadCat() {
		
		var x = document.getElementById("catId").value;
		
		//removeAllCompany();
		
		
		var http_request = new XMLHttpRequest();
	
		http_request.onreadystatechange = function()

		{
			if (http_request.readyState == 4) {
				//alert(http_request.responseText);
				var jsonObj = JSON.parse(http_request.responseText);
				for (var i = 0; i < jsonObj.length; i++) {
					
					var create = document.createElement("option");
					create.value = jsonObj[i].caid;
					create.text = jsonObj[i].catagoryName;
					
					document.myProfile.n.options.add(create);
				}
			}
		}
		console.log(x);
		http_request.open("get","${pageContext.request.contextPath}/CatagoryController?flag=loadsub&cid="+x, true);
		http_request.send();
	}
	
	
		</script>
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
									method="post" name="myProfile">

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
										<label for="cname">City<span class="text-danger">*</span></label>
										<select name="s" id="cityId" onchange="loadArea()">
											<c:forEach items="${sessionScope.list }" var="i">
												<option value="${i.cid}">${i.cityName}</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group">
										<label for="aname">Area<span class="text-danger">*</span></label>
										<select name="k">
											<option>Select</option>
										</select>
									</div>

									<div class="form-group">
										<label for="comname">Company<span class="text-danger">*</span></label>
										<select name="company">
											<option>Select</option>
										</select>
									</div>


									<div class="form-group">
										<label for="caname">Category<span class="text-danger">*</span></label>
										<select name="m" id="catId" onchange="loadCat()">
											<option>Select</option>
											<c:forEach items="${sessionScope.list2 }" var="i">
												<option value="${i.caid}">${i.catagoryName}</option>
											</c:forEach>
										</select>
									</div>

									<div class="form-group">
										<label for="scaname">Sub Category<span
											class="text-danger">*</span></label> <select name="n">
											<option>Select</option>
										</select>
									</div>
									<div class="container">
										<div class="form-group">
											<label for="caname">Date<span class="text-danger">*</span></label>&emsp;<input
												type="text" name="date1" id="example1" /><br>
											<br>
										</div>
										<div class="form-group">
											<label for="caname">Time<span class="text-danger">*</span></label>&emsp;
											<select name="date2">
												<option>0-3 AM</option>
												<option>3-6 AM</option>
												<option>6-9 AM</option>
												<option>9-12 AM</option>
												<option>12-3 PM</option>
												<option>3-6 PM</option>
												<option>6-9 PM</option>
												<option>9-12 PM</option>

											</select>
										</div>
									</div>
									<br>
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
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/script.js"></script>
	<script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#example1').datepicker({
                    format: "dd/mm/yyyy"
                });  
            
            });
            $('#timepicker').pickatime()    
        </script>

</body>
</html>
