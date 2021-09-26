<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
 		<title>Insert title here</title>
	</head>
	<body>
		<!--wrapper start-->
		<div class="wrapper">
			<!--header menu start-->
			<div class="header">
				<div class="header-menu">
					<div class="title">Group <span>1</span></div>
					<div class="sidebar-btn">
						<i class="fas fa-bars"></i>
					</div>
					<ul>
						<li><a href="#"><i class="fas fa-search"></i></a></li>
						<li><a href="#"><i class="fas fa-bell"></i></a></li>
						<li><a href="#"><i class="fas fa-power-off"></i></a></li>
					</ul>
				</div>
			</div>
			<!--header menu end-->
			<!--sidebar start-->
			<div class="sidebar">
				<div class="sidebar-menu">
					<center class="profile">
						<img src="./assets/img/images.png" alt="">
						<p>D-D-T</p>
					</center>
					<li class="item">
						<a href="dashboard.jsp" class="menu-btn">
							<i class="fas fa-desktop"></i><span>Dashboard</span>
						</a>
					</li>
					<li class="item" id="profile">
						<a href="#profile" class="menu-btn">
							<i class="fas fa-user-circle"></i><span>Member <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
							<a href="members.jsp" class="card-btn"><i class="fas fa-image"></i><span>Profile</span></a>
							<a href="#"><i class="fas fa-address-card"></i><span>Info</span></a>
						</div>
					</li>
					<li class="item" id="messages">
						<a href="#messages" class="menu-btn">
							<i class="fas fa-envelope"></i><span>Messages <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
							<a href="#"><i class="fas fa-envelope"></i><span>New</span></a>
							<a href="#"><i class="fas fa-envelope-square"></i><span>Sent</span></a>
							<a href="#"><i class="fas fa-exclamation-circle"></i><span>Spam</span></a>
						</div>
					</li>
					<li class="item" id="settings">
						<a href="#settings" class="menu-btn">
							<i class="fas fa-cog"></i><span>Settings <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
							<a href="#"><i class="fas fa-lock"></i><span>Password</span></a>
							<a href="#"><i class="fas fa-language"></i><span>Language</span></a>
						</div>
					</li>
					<li class="item">
						<a href="#" class="menu-btn">
							<i class="fas fa-info-circle"></i><span>About</span>
						</a>
					</li>
				</div>
			</div>
	</body>	
			<script type="text/javascript">
		$(document).ready(function(){
			$(".sidebar-btn").click(function(){
				$(".wrapper").toggleClass("collapse");
			});
		});
		$(document).ready(function(){
			//toggle sub-menus
			$(".card-btn").click(function(){
				$(this).next(".card").slideToggle();
			});

			//toggle more-menus
			$(".more-btn").click(function(){
				$(this).next(".more-menu").slideToggle();
			});
		});
		</script>
</html>