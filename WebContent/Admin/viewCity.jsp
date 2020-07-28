<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8" />
<title>SimpleAdmin - Responsive Admin Dashboard Template</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- DataTables -->
<link href="css/jquery.dataTables.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/buttons.bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/responsive.bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/scroller.bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/dataTables.colVis.css" rel="stylesheet" type="text/css" />
<link href="css/dataTables.bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/fixedColumns.dataTables.min.css" rel="stylesheet"
	type="text/css" />

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

							<div class="table-responsive m-b-20">


								<table id="datatable" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>City Name</th>
											<th>City Description</th>
											<th>Edit</th>
											<th>Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${sessionScope.list }" var="i">
											<tr>
												<td>${i.cityName}</td>
												<td>${i.cityDisCription }</td>
												<td><a
													href="<%=request.getContextPath()%>/CityController?flag=edit&id=${i.cid}">Edit</a></td>
												<td><a
													href="<%=request.getContextPath()%>/CityController?flag=delete&id=${i.cid}">Delete</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>




					<div class="row p-t-50"></div>
				</div>
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

	<!-- Datatable js -->
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.js"></script>
	<script src="js/dataTables.buttons.min.js"></script>
	<script src="js/buttons.bootstrap.min.js"></script>
	<script src="js/jszip.min.js"></script>
	<script src="js/pdfmake.min.js"></script>
	<script src="js/vfs_fonts.js"></script>
	<script src="js/buttons.html5.min.js"></script>
	<script src="js/buttons.print.min.js"></script>
	<script src="js/dataTables.keyTable.min.js"></script>
	<script src="js/dataTables.responsive.min.js"></script>
	<script src="js/responsive.bootstrap.min.js"></script>
	<script src="js/dataTables.scroller.min.js"></script>
	<script src="js/dataTables.colVis.js"></script>
	<script src="js/dataTables.fixedColumns.min.js"></script>

	<!-- init -->
	<script src="js/jquery.datatables.init.js"></script>

	<!-- App Js -->
	<script src="js/jquery.app.js"></script>

</body>
</html>