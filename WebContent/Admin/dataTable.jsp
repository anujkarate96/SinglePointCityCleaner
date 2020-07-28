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
							<h4 class="m-t-0 header-title">Data Tables</h4>

							<div class="table-responsive m-b-20">
								<h5>
									<b>Default Example</b>
								</h5>
								<p class="text-muted font-13 m-b-30">
									DataTables has most features enabled by default, so all you
									need to do to use it with your own tables is to call the
									construction function:
									<code>$().DataTable();</code>
									.
								</p>

								<table id="datatable" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
										</tr>
									</thead>


									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
										</tr>
										<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>63</td>
											<td>2011/07/25</td>
											<td>$170,750</td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td>$86,000</td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td>$433,060</td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td>$162,700</td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>61</td>
											<td>2012/12/02</td>
											<td>$372,000</td>
										</tr>
										<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>59</td>
											<td>2012/08/06</td>
											<td>$137,500</td>
										</tr>
										<tr>
											<td>Rhona Davidson</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td>55</td>
											<td>2010/10/14</td>
											<td>$327,900</td>
										</tr>
										<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>San Francisco</td>
											<td>39</td>
											<td>2009/09/15</td>
											<td>$205,500</td>
										</tr>
										<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>Edinburgh</td>
											<td>23</td>
											<td>2008/12/13</td>
											<td>$103,600</td>
										</tr>
										<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>30</td>
											<td>2008/12/19</td>
											<td>$90,560</td>
										</tr>
										<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2013/03/03</td>
											<td>$342,000</td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>San Francisco</td>
											<td>36</td>
											<td>2008/10/16</td>
											<td>$470,600</td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>London</td>
											<td>43</td>
											<td>2012/12/18</td>
											<td>$313,500</td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>London</td>
											<td>19</td>
											<td>2010/03/17</td>
											<td>$385,750</td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>London</td>
											<td>66</td>
											<td>2012/11/27</td>
											<td>$198,500</td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>New York</td>
											<td>64</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>New York</td>
											<td>59</td>
											<td>2009/04/10</td>
											<td>$237,500</td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>London</td>
											<td>41</td>
											<td>2012/10/13</td>
											<td>$132,000</td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>Edinburgh</td>
											<td>35</td>
											<td>2012/09/26</td>
											<td>$217,500</td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>New York</td>
											<td>30</td>
											<td>2011/09/03</td>
											<td>$345,000</td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>New York</td>
											<td>40</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>21</td>
											<td>2011/12/12</td>
											<td>$106,450</td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>23</td>
											<td>2010/09/20</td>
											<td>$85,600</td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>47</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>Edinburgh</td>
											<td>42</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>Singapore</td>
											<td>28</td>
											<td>2010/11/14</td>
											<td>$357,650</td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>28</td>
											<td>2011/06/07</td>
											<td>$206,850</td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>48</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>Tokyo</td>
											<td>20</td>
											<td>2011/08/14</td>
											<td>$163,000</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>


					<div class="row p-t-50">
						<div class="col-sm-12">
							<div class="m-b-20 table-responsive">
								<h5>
									<b>Buttons example</b>
								</h5>
								<p class="text-muted font-13 m-b-30">The Buttons extension
									for DataTables provides a common set of options, API methods
									and styling to display buttons on a page that will interact
									with a DataTable. The core library provides the based framework
									upon which plug-ins can built.</p>

								<table id="datatable-buttons"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
										</tr>
									</thead>


									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
										</tr>
										<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>63</td>
											<td>2011/07/25</td>
											<td>$170,750</td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td>$86,000</td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td>$433,060</td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td>$162,700</td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>61</td>
											<td>2012/12/02</td>
											<td>$372,000</td>
										</tr>
										<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>59</td>
											<td>2012/08/06</td>
											<td>$137,500</td>
										</tr>
										<tr>
											<td>Rhona Davidson</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td>55</td>
											<td>2010/10/14</td>
											<td>$327,900</td>
										</tr>
										<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>San Francisco</td>
											<td>39</td>
											<td>2009/09/15</td>
											<td>$205,500</td>
										</tr>
										<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>Edinburgh</td>
											<td>23</td>
											<td>2008/12/13</td>
											<td>$103,600</td>
										</tr>
										<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>30</td>
											<td>2008/12/19</td>
											<td>$90,560</td>
										</tr>
										<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2013/03/03</td>
											<td>$342,000</td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>San Francisco</td>
											<td>36</td>
											<td>2008/10/16</td>
											<td>$470,600</td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>London</td>
											<td>43</td>
											<td>2012/12/18</td>
											<td>$313,500</td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>London</td>
											<td>19</td>
											<td>2010/03/17</td>
											<td>$385,750</td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>London</td>
											<td>66</td>
											<td>2012/11/27</td>
											<td>$198,500</td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>New York</td>
											<td>64</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>New York</td>
											<td>59</td>
											<td>2009/04/10</td>
											<td>$237,500</td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>London</td>
											<td>41</td>
											<td>2012/10/13</td>
											<td>$132,000</td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>Edinburgh</td>
											<td>35</td>
											<td>2012/09/26</td>
											<td>$217,500</td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>New York</td>
											<td>30</td>
											<td>2011/09/03</td>
											<td>$345,000</td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>New York</td>
											<td>40</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>21</td>
											<td>2011/12/12</td>
											<td>$106,450</td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>23</td>
											<td>2010/09/20</td>
											<td>$85,600</td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>47</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>Edinburgh</td>
											<td>42</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>Singapore</td>
											<td>28</td>
											<td>2010/11/14</td>
											<td>$357,650</td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>28</td>
											<td>2011/06/07</td>
											<td>$206,850</td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>48</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>Tokyo</td>
											<td>20</td>
											<td>2011/08/14</td>
											<td>$163,000</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div class="row p-t-50">
						<div class="col-sm-12">
							<div class="m-b-20 table-responsive">

								<h5>KeyTable Example</h5>
								<p class="text-muted font-13 m-b-30">KeyTable provides Excel
									like cell navigation on any table. Events (focus, blur, action
									etc) can be assigned to individual cells, columns, rows or all
									cells.</p>

								<table id="datatable-keytable"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
										</tr>
										<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>63</td>
											<td>2011/07/25</td>
											<td>$170,750</td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td>$86,000</td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td>$433,060</td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td>$162,700</td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>61</td>
											<td>2012/12/02</td>
											<td>$372,000</td>
										</tr>
										<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>59</td>
											<td>2012/08/06</td>
											<td>$137,500</td>
										</tr>
										<tr>
											<td>Rhona Davidson</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td>55</td>
											<td>2010/10/14</td>
											<td>$327,900</td>
										</tr>
										<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>San Francisco</td>
											<td>39</td>
											<td>2009/09/15</td>
											<td>$205,500</td>
										</tr>
										<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>Edinburgh</td>
											<td>23</td>
											<td>2008/12/13</td>
											<td>$103,600</td>
										</tr>
										<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>30</td>
											<td>2008/12/19</td>
											<td>$90,560</td>
										</tr>
										<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2013/03/03</td>
											<td>$342,000</td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>San Francisco</td>
											<td>36</td>
											<td>2008/10/16</td>
											<td>$470,600</td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>London</td>
											<td>43</td>
											<td>2012/12/18</td>
											<td>$313,500</td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>London</td>
											<td>19</td>
											<td>2010/03/17</td>
											<td>$385,750</td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>London</td>
											<td>66</td>
											<td>2012/11/27</td>
											<td>$198,500</td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>New York</td>
											<td>64</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>New York</td>
											<td>59</td>
											<td>2009/04/10</td>
											<td>$237,500</td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>London</td>
											<td>41</td>
											<td>2012/10/13</td>
											<td>$132,000</td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>Edinburgh</td>
											<td>35</td>
											<td>2012/09/26</td>
											<td>$217,500</td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>New York</td>
											<td>30</td>
											<td>2011/09/03</td>
											<td>$345,000</td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>New York</td>
											<td>40</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>21</td>
											<td>2011/12/12</td>
											<td>$106,450</td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>23</td>
											<td>2010/09/20</td>
											<td>$85,600</td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>47</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>Edinburgh</td>
											<td>42</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>Singapore</td>
											<td>28</td>
											<td>2010/11/14</td>
											<td>$357,650</td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>28</td>
											<td>2011/06/07</td>
											<td>$206,850</td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>48</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>Tokyo</td>
											<td>20</td>
											<td>2011/08/14</td>
											<td>$163,000</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>


					<div class="row p-t-50">
						<div class="col-sm-12">
							<div class="m-b-20 table-responsive">

								<h5>Responsive Example</h5>
								<p class="text-muted font-13 m-b-30">Responsive is an
									extension for DataTables that resolves that problem by
									optimising the table's layout for different screen sizes
									through the dynamic insertion and removal of columns from the
									table.</p>

								<table id="datatable-responsive"
									class="table table-striped table-bordered dt-responsive nowrap"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>First name</th>
											<th>Last name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
											<th>Extn.</th>
											<th>E-mail</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Tiger</td>
											<td>Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
											<td>5421</td>
											<td>t.nixon@datatables.net</td>
										</tr>
										<tr>
											<td>Garrett</td>
											<td>Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>63</td>
											<td>2011/07/25</td>
											<td>$170,750</td>
											<td>8422</td>
											<td>g.winters@datatables.net</td>
										</tr>
										<tr>
											<td>Ashton</td>
											<td>Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td>$86,000</td>
											<td>1562</td>
											<td>a.cox@datatables.net</td>
										</tr>
										<tr>
											<td>Cedric</td>
											<td>Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td>$433,060</td>
											<td>6224</td>
											<td>c.kelly@datatables.net</td>
										</tr>
										<tr>
											<td>Airi</td>
											<td>Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td>$162,700</td>
											<td>5407</td>
											<td>a.satou@datatables.net</td>
										</tr>
										<tr>
											<td>Brielle</td>
											<td>Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>61</td>
											<td>2012/12/02</td>
											<td>$372,000</td>
											<td>4804</td>
											<td>b.williamson@datatables.net</td>
										</tr>
										<tr>
											<td>Herrod</td>
											<td>Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>59</td>
											<td>2012/08/06</td>
											<td>$137,500</td>
											<td>9608</td>
											<td>h.chandler@datatables.net</td>
										</tr>
										<tr>
											<td>Rhona</td>
											<td>Davidson</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td>55</td>
											<td>2010/10/14</td>
											<td>$327,900</td>
											<td>6200</td>
											<td>r.davidson@datatables.net</td>
										</tr>
										<tr>
											<td>Colleen</td>
											<td>Hurst</td>
											<td>Javascript Developer</td>
											<td>San Francisco</td>
											<td>39</td>
											<td>2009/09/15</td>
											<td>$205,500</td>
											<td>2360</td>
											<td>c.hurst@datatables.net</td>
										</tr>
										<tr>
											<td>Sonya</td>
											<td>Frost</td>
											<td>Software Engineer</td>
											<td>Edinburgh</td>
											<td>23</td>
											<td>2008/12/13</td>
											<td>$103,600</td>
											<td>1667</td>
											<td>s.frost@datatables.net</td>
										</tr>
										<tr>
											<td>Jena</td>
											<td>Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>30</td>
											<td>2008/12/19</td>
											<td>$90,560</td>
											<td>3814</td>
											<td>j.gaines@datatables.net</td>
										</tr>
										<tr>
											<td>Quinn</td>
											<td>Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2013/03/03</td>
											<td>$342,000</td>
											<td>9497</td>
											<td>q.flynn@datatables.net</td>
										</tr>
										<tr>
											<td>Charde</td>
											<td>Marshall</td>
											<td>Regional Director</td>
											<td>San Francisco</td>
											<td>36</td>
											<td>2008/10/16</td>
											<td>$470,600</td>
											<td>6741</td>
											<td>c.marshall@datatables.net</td>
										</tr>
										<tr>
											<td>Haley</td>
											<td>Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>London</td>
											<td>43</td>
											<td>2012/12/18</td>
											<td>$313,500</td>
											<td>3597</td>
											<td>h.kennedy@datatables.net</td>
										</tr>
										<tr>
											<td>Tatyana</td>
											<td>Fitzpatrick</td>
											<td>Regional Director</td>
											<td>London</td>
											<td>19</td>
											<td>2010/03/17</td>
											<td>$385,750</td>
											<td>1965</td>
											<td>t.fitzpatrick@datatables.net</td>
										</tr>
										<tr>
											<td>Michael</td>
											<td>Silva</td>
											<td>Marketing Designer</td>
											<td>London</td>
											<td>66</td>
											<td>2012/11/27</td>
											<td>$198,500</td>
											<td>1581</td>
											<td>m.silva@datatables.net</td>
										</tr>
										<tr>
											<td>Paul</td>
											<td>Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>New York</td>
											<td>64</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
											<td>3059</td>
											<td>p.byrd@datatables.net</td>
										</tr>
										<tr>
											<td>Gloria</td>
											<td>Little</td>
											<td>Systems Administrator</td>
											<td>New York</td>
											<td>59</td>
											<td>2009/04/10</td>
											<td>$237,500</td>
											<td>1721</td>
											<td>g.little@datatables.net</td>
										</tr>
										<tr>
											<td>Bradley</td>
											<td>Greer</td>
											<td>Software Engineer</td>
											<td>London</td>
											<td>41</td>
											<td>2012/10/13</td>
											<td>$132,000</td>
											<td>2558</td>
											<td>b.greer@datatables.net</td>
										</tr>
										<tr>
											<td>Dai</td>
											<td>Rios</td>
											<td>Personnel Lead</td>
											<td>Edinburgh</td>
											<td>35</td>
											<td>2012/09/26</td>
											<td>$217,500</td>
											<td>2290</td>
											<td>d.rios@datatables.net</td>
										</tr>
										<tr>
											<td>Jenette</td>
											<td>Caldwell</td>
											<td>Development Lead</td>
											<td>New York</td>
											<td>30</td>
											<td>2011/09/03</td>
											<td>$345,000</td>
											<td>1937</td>
											<td>j.caldwell@datatables.net</td>
										</tr>
										<tr>
											<td>Yuri</td>
											<td>Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>New York</td>
											<td>40</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
											<td>6154</td>
											<td>y.berry@datatables.net</td>
										</tr>
										<tr>
											<td>Caesar</td>
											<td>Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>21</td>
											<td>2011/12/12</td>
											<td>$106,450</td>
											<td>8330</td>
											<td>c.vance@datatables.net</td>
										</tr>
										<tr>
											<td>Doris</td>
											<td>Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>23</td>
											<td>2010/09/20</td>
											<td>$85,600</td>
											<td>3023</td>
											<td>d.wilder@datatables.net</td>
										</tr>
										<tr>
											<td>Angelica</td>
											<td>Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>47</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
											<td>5797</td>
											<td>a.ramos@datatables.net</td>
										</tr>
										<tr>
											<td>Gavin</td>
											<td>Joyce</td>
											<td>Developer</td>
											<td>Edinburgh</td>
											<td>42</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
											<td>8822</td>
											<td>g.joyce@datatables.net</td>
										</tr>
										<tr>
											<td>Jennifer</td>
											<td>Chang</td>
											<td>Regional Director</td>
											<td>Singapore</td>
											<td>28</td>
											<td>2010/11/14</td>
											<td>$357,650</td>
											<td>9239</td>
											<td>j.chang@datatables.net</td>
										</tr>
										<tr>
											<td>Brenden</td>
											<td>Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>28</td>
											<td>2011/06/07</td>
											<td>$206,850</td>
											<td>1314</td>
											<td>b.wagner@datatables.net</td>
										</tr>
										<tr>
											<td>Fiona</td>
											<td>Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>48</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
											<td>2947</td>
											<td>f.green@datatables.net</td>
										</tr>
										<tr>
											<td>Shou</td>
											<td>Itou</td>
											<td>Regional Marketing</td>
											<td>Tokyo</td>
											<td>20</td>
											<td>2011/08/14</td>
											<td>$163,000</td>
											<td>8899</td>
											<td>s.itou@datatables.net</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>


					<div class="row p-t-50">
						<div class="col-sm-12">
							<div class="m-b-20 table-responsive">

								<h5>Scroller Datatable example</h5>
								<p class="text-muted font-13 m-b-30">This example shows
									DataTables and the Scroller extension being used with the
									Bootstrap framework providing the styling.</p>

								<table id="datatable-scroller"
									class="table table-striped table-bordered nowrap"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>ID</th>
											<th>First name</th>
											<th>Last name</th>
											<th>ZIP / Post code</th>
											<th>Country</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
					</div>


					<div class="row p-t-50">
						<div class="col-sm-12">
							<div class="m-b-20 table-responsive">
								<h5>ColVis Example</h5>
								<p class="text-muted font-13 m-b-30">In this example the
									column index is prefixed to the column title.</p>

								<table id="datatable-colvid"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
										</tr>
									</thead>


									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
										</tr>
										<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>63</td>
											<td>2011/07/25</td>
											<td>$170,750</td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td>$86,000</td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td>$433,060</td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td>$162,700</td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>61</td>
											<td>2012/12/02</td>
											<td>$372,000</td>
										</tr>
										<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>59</td>
											<td>2012/08/06</td>
											<td>$137,500</td>
										</tr>
										<tr>
											<td>Rhona Davidson</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td>55</td>
											<td>2010/10/14</td>
											<td>$327,900</td>
										</tr>
										<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>San Francisco</td>
											<td>39</td>
											<td>2009/09/15</td>
											<td>$205,500</td>
										</tr>
										<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>Edinburgh</td>
											<td>23</td>
											<td>2008/12/13</td>
											<td>$103,600</td>
										</tr>
										<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>30</td>
											<td>2008/12/19</td>
											<td>$90,560</td>
										</tr>
										<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2013/03/03</td>
											<td>$342,000</td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>San Francisco</td>
											<td>36</td>
											<td>2008/10/16</td>
											<td>$470,600</td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>London</td>
											<td>43</td>
											<td>2012/12/18</td>
											<td>$313,500</td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>London</td>
											<td>19</td>
											<td>2010/03/17</td>
											<td>$385,750</td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>London</td>
											<td>66</td>
											<td>2012/11/27</td>
											<td>$198,500</td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>New York</td>
											<td>64</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>New York</td>
											<td>59</td>
											<td>2009/04/10</td>
											<td>$237,500</td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>London</td>
											<td>41</td>
											<td>2012/10/13</td>
											<td>$132,000</td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>Edinburgh</td>
											<td>35</td>
											<td>2012/09/26</td>
											<td>$217,500</td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>New York</td>
											<td>30</td>
											<td>2011/09/03</td>
											<td>$345,000</td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>New York</td>
											<td>40</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>21</td>
											<td>2011/12/12</td>
											<td>$106,450</td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>23</td>
											<td>2010/09/20</td>
											<td>$85,600</td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>47</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>Edinburgh</td>
											<td>42</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>Singapore</td>
											<td>28</td>
											<td>2010/11/14</td>
											<td>$357,650</td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>28</td>
											<td>2011/06/07</td>
											<td>$206,850</td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>48</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>Tokyo</td>
											<td>20</td>
											<td>2011/08/14</td>
											<td>$163,000</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>


					<div class="row p-t-50">
						<div class="col-sm-12">
							<div class="m-b-20 table-responsive">
								<h5>Fixed Column Example</h5>
								<p class="text-muted font-13 m-b-30">In this example the
									column index is prefixed to the column title.</p>

								<table id="datatable-fixed-col"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
										</tr>
									</thead>


									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
										</tr>
										<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>63</td>
											<td>2011/07/25</td>
											<td>$170,750</td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td>$86,000</td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td>$433,060</td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td>$162,700</td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>61</td>
											<td>2012/12/02</td>
											<td>$372,000</td>
										</tr>
										<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>59</td>
											<td>2012/08/06</td>
											<td>$137,500</td>
										</tr>
										<tr>
											<td>Rhona Davidson</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td>55</td>
											<td>2010/10/14</td>
											<td>$327,900</td>
										</tr>
										<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>San Francisco</td>
											<td>39</td>
											<td>2009/09/15</td>
											<td>$205,500</td>
										</tr>
										<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>Edinburgh</td>
											<td>23</td>
											<td>2008/12/13</td>
											<td>$103,600</td>
										</tr>
										<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>30</td>
											<td>2008/12/19</td>
											<td>$90,560</td>
										</tr>
										<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2013/03/03</td>
											<td>$342,000</td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>San Francisco</td>
											<td>36</td>
											<td>2008/10/16</td>
											<td>$470,600</td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>London</td>
											<td>43</td>
											<td>2012/12/18</td>
											<td>$313,500</td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>London</td>
											<td>19</td>
											<td>2010/03/17</td>
											<td>$385,750</td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>London</td>
											<td>66</td>
											<td>2012/11/27</td>
											<td>$198,500</td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>New York</td>
											<td>64</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>New York</td>
											<td>59</td>
											<td>2009/04/10</td>
											<td>$237,500</td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>London</td>
											<td>41</td>
											<td>2012/10/13</td>
											<td>$132,000</td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>Edinburgh</td>
											<td>35</td>
											<td>2012/09/26</td>
											<td>$217,500</td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>New York</td>
											<td>30</td>
											<td>2011/09/03</td>
											<td>$345,000</td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>New York</td>
											<td>40</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>21</td>
											<td>2011/12/12</td>
											<td>$106,450</td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>23</td>
											<td>2010/09/20</td>
											<td>$85,600</td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>47</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>Edinburgh</td>
											<td>42</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>Singapore</td>
											<td>28</td>
											<td>2010/11/14</td>
											<td>$357,650</td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>28</td>
											<td>2011/06/07</td>
											<td>$206,850</td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>48</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>Tokyo</td>
											<td>20</td>
											<td>2011/08/14</td>
											<td>$163,000</td>
										</tr>
									</tbody>
								</table>
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