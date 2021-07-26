<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Web Series</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<style type="text/css">
.roo{
 margin-left: 200px;
}
.hoo{
 margin-left: 200px;
}
</style>

</head>
<body>

<%@ include file="navbar.jsp" %>
<div class="container">

<form class="row g-3" action="/addSeries" method="post">
  <div class="col-md-5 roo">
    <label style="margin-top: 20px;" for="id" class="form-label">Id</label>
    <input type="text" class="form-control" name="id" id="id" required>
  </div>
   <div class="col-md-7"></div>
  <div style="margin-top: 0px;" class="col-md-5 hoo">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name" id="name" required>
  </div>
  <div class="col-md-7"></div>
  <div style="margin-top: 0px;" class="col-md-5 hoo">
    <label for="seasons" class="form-label">Seasons</label>
    <input type="text" class="form-control" name="seasons" id="seasons" required>
  </div>
  <div class="col-md-7"></div>
  <div style="margin-top: 0px;" class="col-md-5 hoo">
    <label for="epi" class="form-label">Episodes</label>
    <input type="text" class="form-control" name="episodes" id="epi" required>
  </div>
  <div class="col-md-7"></div>
  <div style="margin-top: 0px;" class="col-md-5 hoo">
    <label for="rating" class="form-label">Rating</label>
    <input type="text" class="form-control" name="rating" id="rating" required>
  </div>
 <div class="col-md-7"></div>
  <div style="margin-top: 0px;" class="col-md-5 hoo">
    <button type="submit" class="btn btn-primary">Add Series</button>
  </div>
</form>

<div style="margin-left:550px;">
 <h5>${ data }</h5>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>