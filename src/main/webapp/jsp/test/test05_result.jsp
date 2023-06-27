<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 화면</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>

	<%
    double num = Integer.parseInt(request.getParameter("num"));  
    String inch_unit = " in";
    String yard_unit = " yd";
    String feet_unit = " ft";
    String meter_unit = " m";
    String unitString = "";

    String[] unitArray = request.getParameterValues("unit");
    for (int i = 0; i < unitArray.length; i++) {
        if (unitArray[i].equals("inch")) {
            double inchValue = num / 2.54;
            unitString += inchValue + inch_unit + "<br>";
        }
        
        else if (unitArray[i].equals("yard")) {
            double yardValue = num / 91.44;
            unitString += yardValue + yard_unit + "<br>";
        }
        
        else if (unitArray[i].equals("feet")) {
            double feetValue = num / 30.48;
            unitString += feetValue + feet_unit + "<br>";
        }
        
        else {
            double meterValue = num / 100;
            unitString += meterValue + meter_unit + "<br>";
        }
    }
%>
	<div class="container">
<h1>변환 결과</h1>
<h2><%= num %>cm</h2>
<hr>
<h2><%= unitString %></h2>
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