<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1 class="ml-3">길이 변환</h1>
		<form action="/jsp/test/test05_result.jsp" method="post">
			<div class="d-flex col-3 align-items-end">
				<input type="text" class="form-control" name="num">cm
				
			</div>
			<div class="d-flex col-3 align-items-end">
				<label><b>인치</b><input type="checkbox" name="unit"value="inch"></label> 
				<label class="ml-2"><b>야드</b><input type="checkbox" name="unit" value="yard"></label> 
				<label class="ml-2"><b>피트</b><input type="checkbox" name="unit" value="feet"></label> 
				<label class="ml-2"><b>미터</b><input type="checkbox" name="unit" value="meter"></label>
			</div>
			<button type="submit" class="btn btn-primary ml-3">변환</button>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>