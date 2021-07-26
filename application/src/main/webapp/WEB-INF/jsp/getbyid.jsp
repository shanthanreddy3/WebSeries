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
<div class=" col-md-4">
<form action="/series/id/" >
    <label style="margin-top:20px;" for="id" class="form-label">Enter Id</label>
    <input type="text" class="form-control" id="id" name="id" aria-describedby="emailHelp">
    <button  style="margin-top:10px;" type="submit"  class="btn btn-primary" >Submit</button></form>

  </div>
  <div class=" col-md-4">
<form action="/series/name/" >
    <label style="margin-top:20px;" for="name" class="form-label">Enter Name</label>
    <input type="text" class="form-control" id="name" name="name" >
    <button  style="margin-top:10px;" type="submit"  class="btn btn-primary" >Submit</button></form>

  </div>
</div>

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
    <tr>
      <th scope="row">${data.id}</th>
      <td>${data.name}</td>
      <td>${data.seasons}</td>
      <td>${data.episodes}</td>
      <td>${data.rating}</td>
         <td><a class="btn btn-success" href="/updateseries/${data.id }">Update</a>  </td>
      <td>
        <a class="btn btn-danger" href="/delete/${data.id}">Delete</a>
      </td>
    </tr>

  </tbody>
</table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>