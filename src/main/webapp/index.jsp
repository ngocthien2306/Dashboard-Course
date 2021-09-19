<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>Dashboard</title>
		<link rel="stylesheet" href="main.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
	</head>
	<body>
			<c:import url="general\header.jsp"></c:import>
			<!--sidebar end-->
			<!--main container start-->
			<div class="container">
			
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
