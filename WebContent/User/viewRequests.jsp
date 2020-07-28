<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>

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



	<!-- Top Bar Start -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Top Bar End -->


	<!-- Page content start -->
	<div id="page-contents">
		<div class="container">
			<div class="row">

				<!--left navigation start-->
				<jsp:include page="leftSidebar.jsp"></jsp:include>
				<!--left navigation end-->
				<div class="col-md-7">

					<!-- START PAGE CONTENT -->


					<div class="table-responsive m-b-20">


						<table id="datatable" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Request No</th>
									<th>Subject</th>
									<th>Description</th>
									<th>Requested Date</th>
									<th>Requested Time</th>
									<th>Area</th>
									<th>City</th>
									<th>Request Status</th>
									<th>Reply From Company</th>
									<th>edit</th>
									<th>delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${sessionScope.list }" var="i">
									<tr>
										<td>${i.rgid}</td>
										<td>${i.subject}</td>
										<td>${i.discription}</td>
										<td>${i.date1}</td>
										<td>${i.date2}</td>
										<td>${i.areaVO.areaName}</td>
										<td>${i.cityVO.cityName}</td>
										<td>${i.requestStatus}</td>
										<td>${i.replyFromCompany}</td>
										<%-- <td>Edit</td>
												<td>Delete</td>--%>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>



				</div>

				<!-- end row -->

			</div>
		</div>
		<!-- Post Create Box End -->

	</div>

	<!-- end container -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- end footer -->


	<!-- End #page-right-content -->


	<!-- end .page-contentbar -->

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