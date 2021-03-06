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

<!-- Plugins css-->
<link href="css/bootstrap-tagsinput.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/plugins/switchery/switchery.min.css">
<link href="css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-timepicker.min.css" rel="stylesheet">
<link href="css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="css/bootstrap-datepicker.min.css" rel="stylesheet">
<link href="css/bootstrap-clockpicker.min.css" rel="stylesheet">
<link href="css/daterangepicker.css" rel="stylesheet">
<!-- Summernote css -->
<link href="css/summernote.css" rel="stylesheet" />


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
			<<jsp:include page="menu.jsp"></jsp:include>
			<!--left navigation end-->

			<!-- START PAGE CONTENT -->
			<div id="page-right-content">

				<div class="container">

					<!-- end row -->


					<div class="row">

						<div class="col-lg-6">
							<div class="p-20 m-b-20">

								<h4 class="header-title m-t-0">Add Sub-Category</h4>


								<div class="p-20 m-b-20">
									<c:forEach items="${sessionScope.list}" var="j">
										<form
											action="<%=request.getContextPath() %>/SubCatagoryController?flag=update"
											class="form-validation" method="post">
											<input type="hidden" value="${j.id}" name="id">
											<div class="form-group">
												<label for="cname">Category<span class="text-danger">*</span></label>
												<select name="k">
													<c:forEach items="${sessionScope.list1 }" var="i">
														<c:if test="${i.caid eq j.catagoryVO.caid}">
															<option value="${i.caid}" selected="selected">${i.catagoryName}
															</option>
														</c:if>
														<c:if test="${i.caid ne j.catagoryVO.caid }">
															<option value="${i.caid}">${i.catagoryName}</option>
														</c:if>
													</c:forEach>
												</select>
											</div>
											<div class="form-group">
												<label for="scname">Sub-Category Name<span
													class="text-danger">*</span></label> <input type="text"
													name="subcatname" parsley-trigger="change" required
													placeholder="Enter Sub-Category name" class="form-control"
													id="scn" value="${j.subcatagoryName}">
											</div>
											<div class="form-group">
												<label for="scdesc">Sub-Category Description<span
													class="text-danger">*</span></label> <input type="text"
													name="subcatdescription" parsley-trigger="change" required
													placeholder="Enter Sub-Category Description"
													class="form-control" id="scd"
													value="${j.subcatagoryDiscription}">
											</div>
											<br>




											<div class="form-group text-right m-b-0">
												<button class="btn btn-primary waves-effect waves-light"
													type="submit">Save</button>
												&emsp;
												<button type="reset"
													class="btn btn-default waves-effect m-l-5">Cancel
												</button>
											</div>

										</form>
									</c:forEach>
								</div>

							</div>
						</div>


					</div>












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

	<script src="js/bootstrap-tagsinput.min.js"></script>
	<script src="js/select2.min.js" type="text/javascript"></script>
	<script src="js/bootstrap-filestyle.min.js" type="text/javascript"></script>
	<script src="js/switchery.min.js"></script>
	<script type="text/javascript" src="js/parsley.min.js"></script>

	<script src="js/moment.js"></script>
	<script src="js/bootstrap/bootstrap-timepicker.js"></script>
	<script src="js/bootstrap-colorpicker.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/bootstrap-clockpicker.min.js"></script>
	<script src="js/daterangepicker.js"></script>
	<script src="js/summernote.min.js"></script>

	<!-- form advanced init js -->
	<script src="js/jquery.form-advanced.init.js"></script>

	<!-- App Js -->
	<script src="js/jquery.app.js"></script>

	<script type="text/javascript">
            $(document).ready(function() {
                $('.form-validation').parsley();
                $('.summernote').summernote({
                    height: 350,                 // set editor height
                    minHeight: null,             // set minimum height of editor
                    maxHeight: null,             // set maximum height of editor
                    focus: false                 // set focus to editable area after initializing summernote
                });
            });
        </script>

</body>