<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Web Series</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>

<%@ include file="navbar.jsp" %>
<div class="container">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Seasons</th>
      <th scope="col">Episodes</th>
      <th scope="col">Rating</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach  var="i" items="${ data }">
    <tr>
      <th scope="row">${i.id}</th>
      <td>${i.name}</td>
      <td>${i.seasons}</td>
      <td>${i.episodes}</td>
      <td>${i.rating}</td>
         <td><a class="btn btn-success" href="/updateseries/${i.id }">Update</a>  </td>
      <td>
        <a class="btn btn-danger" href="/delete/${i.id}">Delete</a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>