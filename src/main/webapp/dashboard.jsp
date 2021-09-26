<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Dashboard</title>
<link rel="stylesheet" href="css/dash.css">
<link rel="stylesheet" href="css/main.css">
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
					<span>Chap 4 exercise 1</span>
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
							<li class="link-item"><a href="_ch04ex01/index.html">Go
									to exercise</a></li>
							<li class="link-item"><a href="#">Code</a></li>
							<li class="link-item"><a href="#"> <label for="click">Comment</label></a></li>
						</ul>
					</div>
					<input type="checkbox" id="click">
					<div class="comment">

						<div class="comment-content">
							<textarea class="comment-control-text" rows="5" name="name"
								placeholder="Comment here...."></textarea>
							<input class="comment-control" type="text" name="" value=""
								placeholder="Score">
						</div>
						<div class="commnet-footer">
							<button class="comment-control btn" type="submit" name="button">Post</button>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar" role="progressbar" style="width: 25%;"
							aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
			</div>
			<div class="dashboard">
				<div class="header-dash">
					<span>Chap 5 exercise 1/span> 
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
							<li class="link-item"><a href="_ch05ex01/index.jsp">Go
									to exercise</a></li>
							<li class="link-item"><a href="#">Code</a></li>
							<li class="link-item"><a href="#"> <label for="click">Comment</label></a></li>
						</ul>
					</div>
					<input type="checkbox" id="click">
					<div class="comment">

						<div class="comment-content">
							<textarea class="comment-control-text" rows="5" name="name"
								placeholder="Comment here...."></textarea>
							<input class="comment-control" type="text" name="" value=""
								placeholder="Score">
						</div>
						<div class="commnet-footer">
							<button class="comment-control btn" type="submit" name="button">Post</button>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar" role="progressbar" style="width: 25%;"
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
							<li class="link-item"><a href="#"> <label for="click">Comment</label></a></li>
						</ul>
					</div>
					<input type="checkbox" id="click">
					<div class="comment">

						<div class="comment-content">
							<textarea class="comment-control-text" rows="5" name="name"
								placeholder="Comment here...."></textarea>
							<input class="comment-control" type="text" name="" value=""
								placeholder="Score">
						</div>
						<div class="commnet-footer">
							<button class="comment-control btn" type="submit" name="button">Post</button>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar" role="progressbar" style="width: 25%;"
							aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
