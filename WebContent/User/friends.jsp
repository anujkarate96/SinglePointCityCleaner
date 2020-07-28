<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	eEncoding="ISO-8859-1"%>
<!D
OCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="This is social network html5 template available in themeforest......" />
<meta name="keywords"
	content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
<meta name="robots" content="index, follow" />
<title>Friend List | Your Friend List</title>

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
</head>
<body>

	<!-- Header
    ================================================= -->
	<header id="header"> <nav
		class="navbar navbar-default navbar-fixed-top menu">
	<div class="container">

		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><img
				src="images/logo.png" alt="logo" /></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right main-menu">
				<li class="dropdown"><a href="index.html">Home</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Newsfeed <span><img
							src="images/down-arrow.png" alt="" /></span></a>
					<ul class="dropdown-menu newsfeed-home">
						<li><a href="newsfeed.html">Newsfeed</a></li>
						<li><a href="newsfeed-people-nearby.html">Poeple Nearly</a></li>
						<li><a href="newsfeed-friends.html">My friends</a></li>
						<li><a href="newsfeed-messages.html">Chatroom</a></li>
						<li><a href="newsfeed-images.html">Images</a></li>
						<li><a href="newsfeed-videos.html">Videos</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Timeline <span><img
							src="images/down-arrow.png" alt="" /></span></a>
					<ul class="dropdown-menu login">
						<li><a href="timeline.html">Timeline</a></li>
						<li><a href="timeline-about.html">Timeline About</a></li>
						<li><a href="timeline-album.html">Timeline Album</a></li>
						<li><a href="timeline-friends.html">Timeline Friends</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle pages"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">All Pages <span><img
							src="images/down-arrow.png" alt="" /></span></a>
					<ul class="dropdown-menu page-list">
						<li><a href="index.html">Landing Page</a></li>
						<li><a href="newsfeed.html">Newsfeed</a></li>
						<li><a href="newsfeed-people-nearby.html">Poeple Nearly</a></li>
						<li><a href="newsfeed-friends.html">My friends</a></li>
						<li><a href="newsfeed-messages.html">Chatroom</a></li>
						<li><a href="newsfeed-images.html">Images</a></li>
						<li><a href="newsfeed-videos.html">Videos</a></li>
						<li><a href="timeline.html">Timeline</a></li>
						<li><a href="timeline-about.html">Timeline About</a></li>
						<li><a href="timeline-album.html">Timeline Album</a></li>
						<li><a href="timeline-friends.html">Timeline Friends</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul></li>
				<li class="dropdown"><a href="contact.html">Contact</a></li>
			</ul>
			<form class="navbar-form navbar-right hidden-sm">
				<div class="form-group">
					<i class="icon ion-android-search"></i> <input type="text"
						class="form-control" placeholder="Search friends, photos, videos">
				</div>
			</form>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav> </header>
	<!--Header End-->

	<div id="page-contents">
		<div class="container">
			<div class="row">

				<!-- Newsfeed Common Side Bar Left
          ================================================= -->
				<div class="col-md-3" style="position: static;">
					<div class="profile-card">
						<img src="images/user-1.jpg" alt="user" class="profile-photo" />
						<h5>
							<a href="timeline.html" class="text-white">Sarah Cruiz</a>
						</h5>
						<a href="#" class="text-white"><i
							class="ion ion-android-person-add"></i> 1,299 followers</a>
					</div>
					<!--profile card ends-->
					<ul class="nav-news-feed">
						<li><i class="icon ion-ios-paper"></i>
						<div>
								<a href="newsfeed.html">My Newsfeed</a>
							</div></li>
						<li><i class="icon ion-ios-people"></i>
						<div>
								<a href="newsfeed-people-nearby.html">People Nearby</a>
							</div></li>
						<li><i class="icon ion-ios-people-outline"></i>
						<div>
								<a href="newsfeed-friends.html">Friends</a>
							</div></li>
						<li><i class="icon ion-chatboxes"></i>
						<div>
								<a href="newsfeed-messages.html">Messages</a>
							</div></li>
						<li><i class="icon ion-images"></i>
						<div>
								<a href="newsfeed-images.html">Images</a>
							</div></li>
						<li><i class="icon ion-ios-videocam"></i>
						<div>
								<a href="newsfeed-videos.html">Videos</a>
							</div></li>
					</ul>
					<!--news-feed links ends-->
					<div id="chat-block">
						<div class="title">Chat online</div>
						<ul class="online-users list-inline">
							<li><a href="newsfeed-messages.html" title="Linda Lohan"><img
									src="images/user-2.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Sophia Lee"><img
									src="images/user-3.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="John Doe"><img
									src="images/user-4.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Alexis Clark"><img
									src="images/user-5.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="James Carter"><img
									src="images/user-6.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Robert Cook"><img
									src="images/user-7.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Richard Bell"><img
									src="images/user-8.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Anna Young"><img
									src="images/user-9.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Julia Cox"><img
									src="images/user-10.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
						</ul>
					</div>
					<!--chat block ends-->
				</div>
				<div class="col-md-7">

					<!-- Post Create Box
            ================================================= -->
					<div class="create-post">
						<div class="row">
							<div class="col-md-7 col-sm-7">
								<div class="form-group">
									<img src="images/user-1.jpg" alt="" class="profile-photo-md" />
									<textarea name="texts" id="exampleTextarea" cols="30" rows="1"
										class="form-control" placeholder="Write what you wish"></textarea>
								</div>
							</div>
							<div class="col-md-5 col-sm-5">
								<div class="tools">
									<ul class="publishing-tools list-inline">
										<li><a href="#"><i class="ion-compose"></i></a></li>
										<li><a href="#"><i class="ion-images"></i></a></li>
										<li><a href="#"><i class="ion-ios-videocam"></i></a></li>
										<li><a href="#"><i class="ion-map"></i></a></li>
									</ul>
									<button class="btn btn-primary pull-right">Publish</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Post Create Box End -->

					<!-- Friend List
            ================================================= -->
					<div class="friend-list">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/1.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-3.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="#" class="pull-right text-green">My Friend</a>
											<h5>
												<a href="timeline.html" class="profile-link">Sophia Lee</a>
											</h5>
											<p>Student at Harvard</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/3.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-4.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="#" class="pull-right text-green">My Friend</a>
											<h5>
												<a href="timeline.html" class="profile-link">John Doe</a>
											</h5>
											<p>Traveler</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/4.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-10.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="timeline.html" class="pull-right text-green">My
												Friend</a>
											<h5>
												<a href="#" class="profile-link">Julia Cox</a>
											</h5>
											<p>Art Designer</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/covers/5.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-7.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="#" class="pull-right text-green">My Friend</a>
											<h5>
												<a href="timelime.html" class="profile-link">Robert Cook</a>
											</h5>
											<p>Photographer at Photography</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/6.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-8.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="#" class="pull-right text-green">My Friend</a>
											<h5>
												<a href="timeline.html" class="profile-link">Richard
													Bell</a>
											</h5>
											<p>Graphic Designer at Envato</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/7.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-2.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="#" class="pull-right text-green">My Friend</a>
											<h5>
												<a href="timeline.html" class="profile-link">Linda Lohan</a>
											</h5>
											<p>Software Engineer</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/8.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-9.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="#" class="pull-right text-green">My Friend</a>
											<h5>
												<a href="timeline.html" class="profile-link">Anna Young</a>
											</h5>
											<p>Musician</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/9.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-6.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="#" class="pull-right text-green">My Friend</a>
											<h5>
												<a href="timeline.html" class="profile-link">James
													Carter</a>
											</h5>
											<p>CEO at IT Farm</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="friend-card">
									<img src="images/10.jpg" alt="profile-cover"
										class="img-responsive cover" />
									<div class="card-info">
										<img src="images/user-5.jpg" alt="user"
											class="profile-photo-lg" />
										<div class="friend-info">
											<a href="#" class="pull-right text-green">My Friend</a>
											<h5>
												<a href="timeline.html" class="profile-link">Alexis
													Clark</a>
											</h5>
											<p>Traveler</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Newsfeed Common Side Bar Right
          ================================================= -->
				<div class="col-md-2 static">
					<div class="suggestions" id="sticky-sidebar">
						<h4 class="grey">Who to Follow</h4>
						<div class="follow-user">
							<img src="images/user-11.jpg" alt=""
								class="profile-photo-sm pull-left" />
							<div>
								<h5>
									<a href="timeline.html">Diana Amber</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
						<div class="follow-user">
							<img src="images/user-12.jpg" alt=""
								class="profile-photo-sm pull-left" />
							<div>
								<h5>
									<a href="timeline.html">Cris Haris</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
						<div class="follow-user">
							<img src="images/user-13.jpg" alt=""
								class="profile-photo-sm pull-left" />
							<div>
								<h5>
									<a href="timeline.html">Brian Walton</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
						<div class="follow-user">
							<img src="images/user-14.jpg" alt=""
								class="profile-photo-sm pull-left" />
							<div>
								<h5>
									<a href="timeline.html">Olivia Steward</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
						<div class="follow-user">
							<img src="images/user-15.jpg" alt=""
								class="profile-photo-sm pull-left" />
							<div>
								<h5>
									<a href="timeline.html">Sophia Page</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer
    ================================================= -->
	<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="footer-wrapper">
				<div class="col-md-3 col-sm-3">
					<a href=""><img src="images/logo-black.png" alt=""
						class="footer-logo" /></a>
					<ul class="list-inline social-icons">
						<li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
						<li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
						<li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
						<li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
						<li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-2">
					<h6>For individuals</h6>
					<ul class="footer-links">
						<li><a href="">Signup</a></li>
						<li><a href="">login</a></li>
						<li><a href="">Explore</a></li>
						<li><a href="">Finder app</a></li>
						<li><a href="">Features</a></li>
						<li><a href="">Language settings</a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-2">
					<h6>For businesses</h6>
					<ul class="footer-links">
						<li><a href="">Business signup</a></li>
						<li><a href="">Business login</a></li>
						<li><a href="">Benefits</a></li>
						<li><a href="">Resources</a></li>
						<li><a href="">Advertise</a></li>
						<li><a href="">Setup</a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-2">
					<h6>About</h6>
					<ul class="footer-links">
						<li><a href="">About us</a></li>
						<li><a href="">Contact us</a></li>
						<li><a href="">Privacy Policy</a></li>
						<li><a href="">Terms</a></li>
						<li><a href="">Help</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-3">
					<h6>Contact Us</h6>
					<ul class="contact">
						<li><i class="icon ion-ios-telephone-outline"></i>+1 (234)
							222 0754</li>
						<li><i class="icon ion-ios-email-outline"></i>info@thunder-team.com</li>
						<li><i class="icon ion-ios-location-outline"></i>228 Park Ave
							S NY, USA</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<p>Thunder Team � 2016. All rights reserved</p>
	</div>
	</footer>

	<!--preloader-->
	<div id="spinner-wrapper">
		<div class="spinner"></div>
	</div>

	<!-- Scripts
    ================================================= -->
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.sticky-kit.min.js"></script>
	<script src="js/jquery.scrollbar.min.js"></script>
	<script src="js/script.js"></script>

</body>
</html>
ml>