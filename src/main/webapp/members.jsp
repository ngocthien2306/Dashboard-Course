<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Member</title>
		<link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
	</head>
	<body>	
				<c:import url="general\header.jsp"></c:import>
			<div class="container">
						<div class="card" id="card-btn">
							<div class="card-image loading">
								<img src="./assets/img/Dat.jpg" alt="">
							</div>
							<div class="card-info">
								<h3 class="card-title loading"><span>Ngo Minh Dat</span></h3>
								<p class="card-description loading"><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>
								<br>
								<hr>
								<div class="card-mediaIcons">
									<a href="#" class="loading"><i class="fab fa-facebook-f"></i></a>
									<a href="#" class="loading"><i class="fab fa-github"></i></a>
									<a href="#" class="loading"><i class="fas fa-envelope"></i></a>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-image loading"><img src="./assets/img/Duong.png" alt=""></div>
							<div class="card-info">
								<h3 class="card-title loading"><span>Le Ho Hai Duong</span></h3>
								<p class="card-description loading"><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>
								<br>
								<hr>
								<div class="card-mediaIcons">
									<a href="#" class="loading"><i class="fab fa-facebook-f"></i></a>
									<a href="#" class="loading"><i class="fab fa-github"></i></a>
									<a href="#" class="loading"><i class="fas fa-envelope"></i></a>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-image loading"><img src="./assets/img/images.png" alt=""></div>
							<div class="card-info">
								<h3 class="card-title loading"><span>Nguyen Ngoc Thien</span></h3>
								<p class="card-description loading"><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>
								<br>
								<hr>
								<div class="card-mediaIcons">
									<a href="#" class="loading"><i class="fab fa-facebook-f"></i></a>
									<a href="#" class="loading"><i class="fab fa-github"></i></a>
									<a href="#" class="loading"><i class="fas fa-envelope"></i></a>
								</div>
							</div>
						</div>
					</div>
			</div>
		<!--wrapper end-->

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
	</body>
</html>