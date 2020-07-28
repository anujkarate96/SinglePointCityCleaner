
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<aside class="sidebar-navigation">
<div class="scrollbar-wrapper">
	<div>
		<button type="button"
			class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
			<i class="mdi mdi-close"></i>
		</button>
		<!-- User Detail box -->
		<div class="user-details">
			<div class="pull-left">
				<img src="images/dp.jpg" alt="" class="thumb-md img-circle">
			</div>
			<div class="user-info">
				<a href="#"></a>
				<h4>
					<p class="text-muted m-0">${sessionScope.name2}</p>
				</h4>
			</div>
		</div>
		<!--- End User Detail box -->

		<!-- Left Menu Start -->
		<ul class="metisMenu nav" id="side-menu">



			<li><a href="javascript: void(0);" aria-expanded="true"><i
					class="ti-paint-bucket"></i>Manage Complaint <span class="fa arrow"></span></a>
				<ul class="nav-second-level nav" aria-expanded="true">

					<li><a
						href="<%=request.getContextPath()%>/NewComplaintController?flag=searchcomplaint">View
							Complaint</a></li>

				</ul></li>

			<li><a href="javascript: void(0);" aria-expanded="true"><i
					class="ti-paint-bucket"></i>Manage Garbage Requests <span
					class="fa arrow"></span></a>
				<ul class="nav-second-level nav" aria-expanded="true">

					<li><a
						href="<%=request.getContextPath()%>/RequestGarbageController?flag=search">View
							Garbage Requests</a></li>

				</ul></li>












		</ul>
	</div>
</div>
<!--Scrollbar wrapper--> </aside>