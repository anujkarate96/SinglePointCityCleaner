<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<base href="${pageContext.request.contextPath}/Admin/">
<meta charset="utf-8" />
<title>SPCC | Single Point City Cleaner</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />

<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link rel="shortcut icon" href="images/favicon.ico">

<!--Morris Chart CSS -->
<link rel="stylesheet" href="css/morris.css">

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="css/metisMenu.min.css" rel="stylesheet">
<!-- Icons CSS -->
<link href="css/icons.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">

</head>


<body>

	<div id="page-wrapper">

		<!-- Top Bar Start -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- Top Bar End -->


		<!-- Page content start -->
		<div class="page-contentbar">

			<!--left navigation start-->
			<jsp:include page="menu.jsp"></jsp:include>
			<!--left navigation end-->

			<!-- START PAGE CONTENT -->
			<div id="page-right-content">

				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="card-box widget-inline">
								<div class="row">
									<div class="col-lg-3 col-sm-6">
										<div class="widget-inline-box text-center">
											<h3 class="m-t-10">
												<i class="text-info mdi mdi-black-mesa"></i> <b
													data-plugin="counterup">6521</b>
											</h3>
											<p class="text-muted">Total users</p>
										</div>
									</div>



									<div class="col-lg-3 col-sm-6">
										<div class="widget-inline-box text-center">
											<h3 class="m-t-10">
												<i class="text-custom mdi mdi-airplay"></i> <b
													data-plugin="counterup">7841</b>
											</h3>
											<p class="text-muted">Total complaints</p>
										</div>
									</div>
									<div class="col-lg-3 col-sm-6">
										<div class="widget-inline-box text-center">
											<h3 class="m-t-10">
												<i class="text-primary mdi mdi-access-point-network"></i> <b
													data-plugin="counterup">8954</b>
											</h3>
											<p class="text-muted">Total Request for garbage
												collection</p>
										</div>
									</div>


									<div class="col-lg-3 col-sm-6">
										<div class="widget-inline-box text-center b-0">
											<h3 class="m-t-10">
												<i class="text-danger mdi mdi-cellphone-link"></i> <b
													data-plugin="counterup">325</b>
											</h3>
											<p class="text-muted">Total Company</p>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--end row -->


					<div class="row">
						<div class="col-lg-6">
							<div class="card-box">
								<h4 class="m-t-0"></h4>
								<div class="text-center">
									<ul class="list-inline chart-detail-list">
										<%-- <li>
                                                <h5 class="font-normal"><i class="fa fa-circle m-r-10 text-primary"></i>Series A</h5>
                                            </li>
                                            <li>
                                                <h5 class="font-normal"><i class="fa fa-circle m-r-10 text-muted"></i>Series B</h5>
                                            </li>--%>
									</ul>
								</div>
								<div id="dashboard-bar-stacked" style="height: 300px;"></div>
							</div>
						</div>
						<!-- end col -->

						<div class="col-lg-6">
							<div class="card-box">
								<h4 class="m-t-0"></h4>
								<div class="text-center">
									<ul class="list-inline chart-detail-list">
										<%-- <li>
                                                <h5 class="font-normal"><i class="fa fa-circle m-r-10 text-primary"></i>Mobiles</h5>
                                            </li>
                                            <li>
                                                <h5 class="font-normal"><i class="fa fa-circle m-r-10 text-info"></i>Tablets</h5>
                                            </li>--%>
									</ul>
								</div>
								<div id="dashboard-line-chart" style="height: 300px;"></div>
							</div>
						</div>
						<!-- end col -->
					</div>
					<!-- end row -->




				</div>
				<!-- end container -->
				<jsp:include page="footer.jsp"></jsp:include>
				<!-- end footer -->

			</div>
			<!-- End #page-right-content -->

		</div>
		<!-- end .page-contentbar -->
	</div>
	<!-- End #page-wrapper -->



	<!-- js placed at the end of the document so the pages load faster -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/metisMenu.min.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>

	<!--Morris Chart-->
	<script src="js/morris.min.js"></script>
	<script src="js/raphael-min.js"></script>

	<!-- Dashboard init -->
	<script src="js/jquery.dashboard.js"></script>

	<!-- App Js -->
	<script src="js/jquery.app.js"></script>

</body>
</html>