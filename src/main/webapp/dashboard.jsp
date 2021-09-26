<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Dashboard</title>
<link rel="stylesheet" href="dash.css">
<link rel="stylesheet" href="main.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	charset="utf-8"></script>
</head>
<body>
	<c:import url="general\header.jsp"></c:import>
	<div class="container-dashboard">
		<div class="dashboard-left">
			<div class="dashboard">
				<div class="header-dash">
					<span>Chapter 4 exercise 1</span>
				</div>
				<div class="content-dash">
					<h3 class="title-dash">Survey</h3>
					<div class="message-content">
						<span class="message-dash"></span>
					</div>
					<div class="link-dash">
						<ul class="link-list">
							<li class="link-item"><a href="_ch04ex01/index.html">Go to exercise</a></li>
							<li class="link-item"><a href="#">Code</a></li>
							<li class="link-item"><a href="#">Comment</a></li>
						</ul>
					</div>
					<div class="progress">
						<div class="progress-bar" role="progressbar" style="width: 100%;"
							aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
			</div>
			<div class="dashboard">
				<div class="header-dash">
					<span>Homeword 2</span>
				</div>
				<div class="content-dash">
					<h3 class="title-dash">Create JSP file</h3>
					<div class="message-content">
						<span class="message-dash"> Some quick example text to
							build on the card title and make up the bulk of the card's
							content. </span>
					</div>
					<div class="link-dash">
						<ul class="link-list">
							<li class="link-item"><a href="#">Go to exercise</a></li>
							<li class="link-item"><a href="#">Code</a></li>
							<li class="link-item"><a href="#">Comment</a></li>
						</ul>
					</div>
					<div class="progress">
						<div class="progress-bar" role="progressbar" style="width: 36%;"
							aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
			</div>
			<div class="dashboard">
				<div class="header-dash">
					<span>Homeword 3</span>
				</div>
				<div class="content-dash">
					<h3 class="title-dash">Create JSP file</h3>
					<div class="message-content">
						<span class="message-dash"> Some quick example text to
							build on the card title and make up the bulk of the card's
							content. </span>
					</div>
					<div class="link-dash">
						<ul class="link-list">
							<li class="link-item"><a href="#">Go to exercise</a></li>
							<li class="link-item"><a href="#">Code</a></li>
							<li class="link-item"><a href="#">Comment</a></li>
						</ul>
					</div>
					<div class="progress">
						<div class="progress-bar" role="progressbar" style="width: 70%;"
							aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
			</div>
			<div class="dashboard">
				<div class="header-dash">
					<span>Homeword 4</span>
				</div>
				<div class="content-dash">
					<h3 class="title-dash">Create JSP file</h3>
					<div class="message-content">
						<span class="message-dash"> Some quick example text to
							build on the card title and make up the bulk of the card's
							content. </span>
					</div>
					<div class="link-dash">
						<ul class="link-list">
							<li class="link-item"><a href="#">Go to exercise</a></li>
							<li class="link-item"><a href="#">Code</a></li>
							<li class="link-item"><a href="#">Comment</a></li>
						</ul>
					</div>
					<div class="progress">
						<div class="progress-bar" role="progressbar" style="width: 59%;"
							aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="dashboard-right">
			<p>Anything in here</p>
		</div>
	</div>
</body>
</html>