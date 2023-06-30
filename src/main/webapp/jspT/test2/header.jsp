<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header class="d-flex">
		<div class="logo d-flex align-items-center">
			<h1 class="text-success">Melong</h1>
		</div>
		<div class="search d-flex align-items-center mt-2">
		<form action="/jspT/test2/test02_result.jsp" method="post">
			<div class="input-group mb-3 col-12">
		    <input type="text" class="form-control" name="title">
  			<div class="input-group-append">
   	 		<button class="btn btn-success" type="submit">검색</button>
  		</div>
		</div>
  		</form>
		</div>
		</header>
</body>
</html>