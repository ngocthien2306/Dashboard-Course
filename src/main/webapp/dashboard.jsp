<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*, com.controller.*" %>
<%@page import="com.model.*, com.Dao.*" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Dashboard</title>
  <link rel="stylesheet" href="css/dash.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
</head>

<body>
  <c:import url="general\header.jsp"></c:import>
  <div class="container-dashboard">
    <div class="dashboard-left">
      <c:forEach var="theEx" items="${list_exercise}">
        <div class="dashboard">
          <div class="header-dash">
            <span class="title-header">${theEx.header}</span>
          </div>
          <div class="content-dash">
            <h3 class="title-dash">${theEx.title}</h3>
            <div class="message-content">
              <span class="message-dash">${theEx.description}</span>
            </div>
            <div class="link-dash">
              <ul class="link-list">
                <li class="link-item"><a href="${theEx.linkfolder}">Go to exercise</a></li>
                <li class="link-item"><a href="${theEx.linkcode}">Code</a></li>
                <li class="link-item"><a href=""> <label for="${theEx.click}">Comment</label></a></li>
              </ul>
            </div>
            <input type="checkbox" id="${theEx.click}">
            <div class="comment">
              <form action="exercise" method="get">
                <div class="comment-content">
                  <input type="hidden" name="command" value="UPDATE" />
                  <input type="hidden" name="eid" value="${theEx.id}" />
                  <textarea class="comment-control-text" rows="5" name="comment" placeholder="Comment here....">${theEx.comment}</textarea>
                  <div class="evaluate">
                  	<input class="comment-control_0" type="text" name="score" value="${theEx.score}" placeholder="Score"> 
                  	<input class="comment-control_0" type="text" name="level" value="" placeholder="Completion level 1-100"> 
                  </div>

                </div>
                <div class="commnet-footer">
                  <button class="comment-control btn">POST</button>
                </div>
              </form>
            </div>
            <div class="progress">
              <div class="progress-bar" role="progressbar" style="width: 88%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
    <div class="dashboard-right">

    </div>
  </div>

</body>

</html>