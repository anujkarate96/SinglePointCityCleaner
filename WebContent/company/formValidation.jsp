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
					<div class="row">
						<div class="col-md-6">
							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0 m-b-0">Switchery</h4>

								<h6>Basic</h6>
								<p class="text-muted m-b-20 font-13">
									Add an attribute
									<code> data-plugin="switchery" data-color="@colors"</code>
									to your input element and it will be converted into switch.
								</p>

								<div class="switchery-demo">
									<input type="checkbox" checked data-plugin="switchery"
										data-color="#039cfd" /> <input type="checkbox" checked
										data-plugin="switchery" data-color="#f1b53d" /> <input
										type="checkbox" checked data-plugin="switchery"
										data-color="#1bb99a" /> <input type="checkbox" checked
										data-plugin="switchery" data-color="#ff5d48" /> <input
										type="checkbox" checked data-plugin="switchery"
										data-color="#3db9dc" /> <input type="checkbox" checked
										data-plugin="switchery" data-color="#2b3d51" /> <input
										type="checkbox" checked data-plugin="switchery"
										data-color="#9261c6" /> <input type="checkbox" checked
										data-plugin="switchery" data-color="#ff7aa3" /> <input
										type="checkbox" checked data-plugin="switchery"
										data-color="#98a6ad" />
								</div>


								<h6 class="m-t-30">Sizes & Secondary color</h6>
								<p class="text-muted m-b-30 font-13">
									Add an attribute
									<code> data-size="small",data-size="large"</code>
									to your input element and it will be converted into switch. Add
									an attribute
									<code> data-color="@color" data-secondary-color="@color"</code>
									to your input element and it will be converted into switch.
								</p>

								<div class="switchery-demo">
									<input type="checkbox" checked data-plugin="switchery"
										data-color="#64b0f2" data-size="small" /> <input
										type="checkbox" checked data-plugin="switchery"
										data-color="#ff7aa3" /> <input type="checkbox" checked
										data-plugin="switchery" data-color="#2b3d51" data-size="large" />
									<input type="checkbox" data-plugin="switchery"
										data-color="#1bb99a" data-secondary-color="#ff5d48" /> <input
										type="checkbox" data-plugin="switchery" data-color="#9261c6"
										data-secondary-color="#ff7aa3" checked />
								</div>


							</div>

						</div>

						<div class="col-md-6">
							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0 m-b-20">Tags Input</h4>

								<h6>Input Tags</h6>
								<p class="text-muted m-b-20 font-13">
									Just add
									<code>data-role="tagsinput"</code>
									to your input field to automatically change it to a tags input
									field.
								</p>
								<div class="tags-default">
									<input type="text" value="Amsterdam,Washington,Sydney"
										data-role="tagsinput" placeholder="add tags" />
								</div>

								<h6 class="m-t-30">True multi value</h6>
								<p class="text-muted m-b-20 font-13">
									Use a
									<code>&lt;select multiple /&gt;</code>
									as your input element for a tags input, to gain true multivalue
									support. Instead of a comma separated string, the values will
									be set in an array. Existing
									<code>&lt;option /&gt;</code>
									elements will automatically be set as tags. This makes it also
									possible to create tags containing a comma.
								</p>
								<div class="m-b-0">
									<select multiple data-role="tagsinput">
										<option value="Amsterdam">Amsterdam</option>
										<option value="Washington">Washington</option>
										<option value="Sydney">Sydney</option>
									</select>
								</div>
							</div>

						</div>

					</div>
					<!-- end row -->


					<div class="row">
						<div class="col-md-6">

							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0 m-b-20">Select2</h4>

								<h6 class="text-muted">Single Select</h6>
								<p class="text-muted m-b-15 font-13">Select2 can take a
									regular select box like this...</p>

								<select class="form-control select2">
									<option>Select</option>
									<optgroup label="Alaskan/Hawaiian Time Zone">
										<option value="AK">Alaska</option>
										<option value="HI">Hawaii</option>
									</optgroup>
									<optgroup label="Pacific Time Zone">
										<option value="CA">California</option>
										<option value="NV">Nevada</option>
										<option value="OR">Oregon</option>
										<option value="WA">Washington</option>
									</optgroup>
									<optgroup label="Mountain Time Zone">
										<option value="AZ">Arizona</option>
										<option value="CO">Colorado</option>
										<option value="ID">Idaho</option>
										<option value="MT">Montana</option>
										<option value="NE">Nebraska</option>
										<option value="NM">New Mexico</option>
										<option value="ND">North Dakota</option>
										<option value="UT">Utah</option>
										<option value="WY">Wyoming</option>
									</optgroup>
									<optgroup label="Central Time Zone">
										<option value="AL">Alabama</option>
										<option value="AR">Arkansas</option>
										<option value="IL">Illinois</option>
										<option value="IA">Iowa</option>
										<option value="KS">Kansas</option>
										<option value="KY">Kentucky</option>
										<option value="LA">Louisiana</option>
										<option value="MN">Minnesota</option>
										<option value="MS">Mississippi</option>
										<option value="MO">Missouri</option>
										<option value="OK">Oklahoma</option>
										<option value="SD">South Dakota</option>
										<option value="TX">Texas</option>
										<option value="TN">Tennessee</option>
										<option value="WI">Wisconsin</option>
									</optgroup>
									<optgroup label="Eastern Time Zone">
										<option value="CT">Connecticut</option>
										<option value="DE">Delaware</option>
										<option value="FL">Florida</option>
										<option value="GA">Georgia</option>
										<option value="IN">Indiana</option>
										<option value="ME">Maine</option>
										<option value="MD">Maryland</option>
										<option value="MA">Massachusetts</option>
										<option value="MI">Michigan</option>
										<option value="NH">New Hampshire</option>
										<option value="NJ">New Jersey</option>
										<option value="NY">New York</option>
										<option value="NC">North Carolina</option>
										<option value="OH">Ohio</option>
										<option value="PA">Pennsylvania</option>
										<option value="RI">Rhode Island</option>
										<option value="SC">South Carolina</option>
										<option value="VT">Vermont</option>
										<option value="VA">Virginia</option>
										<option value="WV">West Virginia</option>
									</optgroup>
								</select>

								<h6 class="m-t-30 text-muted">Multiple Select</h6>
								<p class="text-muted m-b-15 font-13">Select2 can take a
									regular select box like this...</p>

								<select class="select2 form-control" multiple="multiple"
									data-placeholder="Choose ...">
									<optgroup label="Alaskan/Hawaiian Time Zone">
										<option value="AK">Alaska</option>
										<option value="HI">Hawaii</option>
									</optgroup>
									<optgroup label="Pacific Time Zone">
										<option value="CA">California</option>
										<option value="NV">Nevada</option>
										<option value="OR">Oregon</option>
										<option value="WA">Washington</option>
									</optgroup>
									<optgroup label="Mountain Time Zone">
										<option value="AZ">Arizona</option>
										<option value="CO">Colorado</option>
										<option value="ID">Idaho</option>
										<option value="MT">Montana</option>
										<option value="NE">Nebraska</option>
										<option value="NM">New Mexico</option>
										<option value="ND">North Dakota</option>
										<option value="UT">Utah</option>
										<option value="WY">Wyoming</option>
									</optgroup>
									<optgroup label="Central Time Zone">
										<option value="AL">Alabama</option>
										<option value="AR">Arkansas</option>
										<option value="IL">Illinois</option>
										<option value="IA">Iowa</option>
										<option value="KS">Kansas</option>
										<option value="KY">Kentucky</option>
										<option value="LA">Louisiana</option>
										<option value="MN">Minnesota</option>
										<option value="MS">Mississippi</option>
										<option value="MO">Missouri</option>
										<option value="OK">Oklahoma</option>
										<option value="SD">South Dakota</option>
										<option value="TX">Texas</option>
										<option value="TN">Tennessee</option>
										<option value="WI">Wisconsin</option>
									</optgroup>
									<optgroup label="Eastern Time Zone">
										<option value="CT">Connecticut</option>
										<option value="DE">Delaware</option>
										<option value="FL">Florida</option>
										<option value="GA">Georgia</option>
										<option value="IN">Indiana</option>
										<option value="ME">Maine</option>
										<option value="MD">Maryland</option>
										<option value="MA">Massachusetts</option>
										<option value="MI">Michigan</option>
										<option value="NH">New Hampshire</option>
										<option value="NJ">New Jersey</option>
										<option value="NY">New York</option>
										<option value="NC">North Carolina</option>
										<option value="OH">Ohio</option>
										<option value="PA">Pennsylvania</option>
										<option value="RI">Rhode Island</option>
										<option value="SC">South Carolina</option>
										<option value="VT">Vermont</option>
										<option value="VA">Virginia</option>
										<option value="WV">West Virginia</option>
									</optgroup>
								</select>

								<h6 class="m-t-30 text-muted">Disabled results</h6>
								<p class="text-muted m-b-15 font-13">Select2 will correctly
									handle disabled results, both with data coming from a standard
									select (when the disabled attribute is set) and from remote
									sources, where the object has disabled: true set.</p>

								<select class="select2 form-control">
									<option value="one">First</option>
									<option value="two" disabled="disabled">Second
										(disabled)</option>
									<option value="three">Third</option>
								</select>

							</div>

						</div>


						<div class="col-md-6">

							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0 m-b-20">Bootstrap FileStyle</h4>

								<form>
									<div class="form-group">
										<label class="control-label">Default file input</label> <input
											type="file" class="filestyle" data-buttonname="btn-default">
									</div>
									<div class="form-group">
										<label class="control-label">File style without input</label>
										<input type="file" class="filestyle" data-input="false">
									</div>
									<div class="form-group">
										<label class="control-label">Small file style</label> <input
											type="file" class="filestyle" data-size="sm">
									</div>

									<div class="form-group">
										<label class="control-label">Disable file style</label> <input
											type="file" class="filestyle" data-disabled="true">
									</div>

									<div class="form-group">
										<label class="control-label">File style with custom
											text</label> <input type="file" class="filestyle"
											data-buttontext="Select file" data-buttonname="btn-default">
									</div>
									<div class="form-group m-b-0">
										<label class="control-label">File style with button
											style</label> <input type="file" class="filestyle"
											data-buttonname="btn-primary">
									</div>

								</form>

							</div>

						</div>
						<!-- end col -->

					</div>
					<!-- end row -->


					<div class="row">

						<div class="col-lg-6">
							<div class="p-20 m-b-20">

								<h4 class="header-title m-t-0">Form Validation - Basic Form</h4>
								<p class="text-muted font-13 m-b-10">Parsley is a javascript
									form validation library. It helps you provide your users with
									feedback on their form submission before sending it to your
									server.</p>

								<div class="p-20 m-b-20">
									<form action="#" class="form-validation">
										<div class="form-group">
											<label for="userName">User Name<span
												class="text-danger">*</span></label> <input type="text" name="nick"
												parsley-trigger="change" required
												placeholder="Enter user name" class="form-control"
												id="userName">
										</div>
										<div class="form-group">
											<label for="emailAddress">Email address<span
												class="text-danger">*</span></label> <input type="email"
												name="email" parsley-trigger="change" required
												placeholder="Enter email" class="form-control"
												id="emailAddress">
										</div>
										<div class="form-group">
											<label for="pass1">Password<span class="text-danger">*</span></label>
											<input id="pass1" type="password" placeholder="Password"
												required class="form-control">
										</div>
										<div class="form-group">
											<label for="passWord2">Confirm Password <span
												class="text-danger">*</span></label> <input
												data-parsley-equalto="#pass1" type="password" required
												placeholder="Password" class="form-control" id="passWord2">
										</div>
										<div class="form-group">
											<div class="checkbox">
												<input id="remember-1" type="checkbox"> <label
													for="remember-1"> Remember me </label>
											</div>
										</div>

										<div class="form-group text-right m-b-0">
											<button class="btn btn-primary waves-effect waves-light"
												type="submit">Submit</button>
											<button type="reset"
												class="btn btn-default waves-effect m-l-5">Cancel</button>
										</div>

									</form>
								</div>

							</div>
						</div>

						<div class="col-lg-6">
							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0">Form Validation - Horizontal
									Form</h4>
								<p class="text-muted font-13 m-b-10">Parsley is a javascript
									form validation library. It helps you provide your users with
									feedback on their form submission before sending it to your
									server.</p>

								<div class="p-20 m-b-20">
									<form role="form" class="form-validation">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 form-control-label">Email<span
												class="text-danger">*</span></label>
											<div class="col-sm-7">
												<input type="email" required parsley-type="email"
													class="form-control" id="inputEmail3" placeholder="Email">
											</div>
										</div>
										<div class="form-group row">
											<label for="hori-pass1" class="col-sm-4 form-control-label">Password<span
												class="text-danger">*</span></label>
											<div class="col-sm-7">
												<input id="hori-pass1" type="password"
													placeholder="Password" required class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label for="hori-pass2" class="col-sm-4 form-control-label">Confirm
												Password <span class="text-danger">*</span>
											</label>
											<div class="col-sm-7">
												<input data-parsley-equalto="#hori-pass1" type="password"
													required placeholder="Password" class="form-control"
													id="hori-pass2">
											</div>
										</div>

										<div class="form-group row">
											<label for="webSite" class="col-sm-4 form-control-label">Web
												Site<span class="text-danger">*</span>
											</label>
											<div class="col-sm-7">
												<input type="url" required parsley-type="url"
													class="form-control" id="webSite" placeholder="URL">
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-8 col-sm-offset-4">
												<div class="checkbox">
													<input id="remember-2" type="checkbox"> <label
														for="remember-2"> Remember me </label>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-8 col-sm-offset-4">
												<button type="submit"
													class="btn btn-primary waves-effect waves-light">
													Register</button>
												<button type="reset"
													class="btn btn-default waves-effect m-l-5">Cancel
												</button>
											</div>
										</div>
									</form>
								</div>

							</div>
						</div>
					</div>
					<!-- end row -->



					<div class="row">
						<div class="col-md-6">
							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0">Timepicker</h4>
								<p class="text-muted font-13 m-b-25">Easily select a time
									for a text input using your mouse or keyboards arrow keys.</p>

								<div class="">
									<div class="form-group">
										<label>Default Time Picker</label>
										<div class="input-group">
											<input id="timepicker" type="text" class="form-control">
											<span class="input-group-addon"><i
												class="mdi mdi-clock"></i></span>
										</div>
										<!-- input-group -->
									</div>

									<div class="form-group">
										<label>24 Hour Mode Time Picker</label>
										<div class="input-group">
											<input id="timepicker2" type="text" class="form-control">
											<span class="input-group-addon"><i
												class="mdi mdi-clock"></i></span>
										</div>
										<!-- input-group -->
									</div>

									<div class="form-group m-b-0">
										<label>Specify a step for the minute field</label>
										<div class="input-group">
											<input id="timepicker3" type="text" class="form-control">
											<span class="input-group-addon"><i
												class="mdi mdi-clock"></i></span>
										</div>
										<!-- input-group -->
									</div>

								</div>
							</div>

						</div>

						<div class="col-md-6">
							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0">Colorpicker</h4>
								<p class="text-muted font-13 m-b-25">Add color picker to
									field or to any other element.</p>

								<div class="">
									<form action="#">
										<div class="form-group">
											<label>Default</label> <input type="text"
												class="colorpicker-default form-control" value="#8fff00">
										</div>
										<div class="form-group">
											<label>RGBA</label> <input type="text"
												class="colorpicker-rgba form-control"
												value="rgb(0,194,255,0.78)" data-color-format="rgba">
										</div>
										<div class="form-group m-b-0">
											<label>As Component</label>
											<div data-color-format="rgb" data-color="rgb(255, 146, 180)"
												class="colorpicker-default input-group">
												<input type="text" readonly="readonly" value=""
													class="form-control"> <span
													class="input-group-btn add-on">
													<button class="btn btn-white" type="button">
														<i
															style="background-color: rgb(124, 66, 84); margin-top: 2px;"></i>
													</button>
												</span>
											</div>
										</div>
									</form>

								</div>
							</div>
						</div>
					</div>
					<!-- end row -->

					<div class="row">
						<div class="col-sm-12">
							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0">Date Picker</h4>
								<p class="text-muted font-13 m-b-25">The datepicker is tied
									to a standard form input field. Click on the input to open an
									interactive calendar in a small overlay. Click elsewhere on the
									page or hit the Esc key to close. If a date is chosen, feedback
									is shown as the input's value.</p>

								<div class="row">
									<div class="col-lg-8">

										<div class="">
											<form action="#">
												<div class="form-group">
													<label>Default Functionality</label>
													<div>
														<div class="input-group">
															<input type="text" class="form-control"
																placeholder="mm/dd/yyyy" id="datepicker"> <span
																class="input-group-addon bg-custom b-0"><i
																class="mdi mdi-calendar text-white"></i></span>
														</div>
														<!-- input-group -->
													</div>
												</div>

												<div class="form-group">
													<label>Auto Close</label>
													<div>
														<div class="input-group">
															<input type="text" class="form-control"
																placeholder="mm/dd/yyyy" id="datepicker-autoclose">
															<span class="input-group-addon bg-custom b-0"><i
																class="mdi mdi-calendar text-white"></i></span>
														</div>
														<!-- input-group -->
													</div>
												</div>

												<div class="form-group">
													<label>Multiple Date</label>
													<div>
														<div class="input-group">
															<input type="text" class="form-control"
																placeholder="mm/dd/yyyy" id="datepicker-multiple-date">
															<span class="input-group-addon bg-custom b-0"><i
																class="mdi mdi-calendar text-white"></i></span>
														</div>
														<!-- input-group -->
													</div>
												</div>

												<div class="form-group">
													<label>Date Range</label>
													<div>
														<div class="input-daterange input-group" id="date-range">
															<input type="text" class="form-control" name="start" />
															<span class="input-group-addon b-0">to</span> <input
																type="text" class="form-control" name="end" />
														</div>
													</div>
												</div>

											</form>
										</div>
									</div>

									<div class="col-lg-4">

										<div class="p-20 m-b-20 text-center">

											<label>Display Inline</label>
											<div class="input-group" style="margin: 10px auto">
												<div id="datepicker-inline"></div>
											</div>
											<!-- input-group -->

										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
					<!-- end row -->


					<div class="row">

						<div class="col-md-6">
							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0">Date Range Picker</h4>
								<p class="text-muted font-13 m-b-25">A JavaScript component
									for choosing date ranges. Designed to work with the Bootstrap
									CSS framework.</p>

								<div class="">
									<form>
										<div class="form-group">
											<label>With all options</label>
											<div id="reportrange" class="pull-right form-control">
												<i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
												<span></span>
											</div>
										</div>
										<div class="form-group m-t-50">
											<label>Date Range Pick</label>
											<div>
												<input class="form-control input-daterange-datepicker"
													type="text" name="daterange"
													value="01/01/2015 - 01/31/2015" />
											</div>
										</div>
										<div class="form-group">
											<label>Date Range With Time</label>
											<div>
												<input type="text"
													class="form-control input-daterange-timepicker"
													name="daterange"
													value="01/01/2015 1:30 PM - 01/01/2015 2:00 PM" />
											</div>
										</div>
										<div class="form-group m-b-0">
											<label>Limit Selectable Dates</label>
											<div>
												<input class="form-control input-limit-datepicker"
													type="text" name="daterange"
													value="06/01/2015 - 06/07/2015" />
											</div>
										</div>
									</form>

								</div>
							</div>

						</div>

						<div class="col-md-6">

							<div class="p-20 m-b-20">
								<h4 class="header-title m-t-0">Clock Picker</h4>
								<p class="text-muted font-13 m-b-25">A clock-style
									timepicker for Bootstrap (or jQuery).Your awesome text goes
									here.</p>

								<label>Default Clock Picker</label>
								<div class="input-group clockpicker m-b-20">
									<input type="text" class="form-control" value="09:30">
									<span class="input-group-addon"> <span
										class="mdi mdi-clock"></span>
									</span>
								</div>

								<label>Auto close</label>
								<div class="input-group clockpicker m-b-20" data-placement="top"
									data-align="top" data-autoclose="true">
									<input type="text" class="form-control" value="13:14">
									<span class="input-group-addon"> <span
										class="mdi mdi-clock"></span>
									</span>
								</div>

								<label>Now time</label>
								<div class="input-group m-b-20">
									<input class="form-control" id="single-input" value=""
										placeholder="Now"> <span class="input-group-btn">
										<button type="button" id="check-minutes"
											class="btn waves-effect waves-light btn-primary">Check
											the minutes</button>
									</span>
								</div>

								<label>Place at left, align the arrow to top </label>
								<div class="input-group clockpicker" data-placement="top"
									data-align="top">
									<input type="text" class="form-control" value="13:14">
									<span class="input-group-addon"> <span
										class="mdi mdi-clock"></span>
									</span>
								</div>
							</div>
							<!-- demo-box -->

						</div>
						<!-- end col -->

					</div>
					<!-- end row -->


					<div class="row">
						<div class="col-sm-12">
							<div class="p-20 m-b-20">
								<h4 class="m-b-30 m-t-0 header-title">Summernote Editor</h4>
								<div class="summernote">
									<h4>Hello Summer note</h4>
									<ul>
										<li>Select a text to reveal the toolbar.</li>
										<li>Edit rich document on-the-fly, so elastic!</li>
									</ul>
								</div>
							</div>
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
</html>