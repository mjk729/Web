<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 화면</title>
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
        
        if (unitArray[i].equals("yard")) {
            double yardValue = num / 91.44;
            unitString += yardValue + yard_unit + "<br>";
        }
        
        if (unitArray[i].equals("feet")) {
            double feetValue = num / 30.48;
            unitString += feetValue + feet_unit + "<br>";
        }
        
        if (unitArray[i].equals("meter")) {
            double meterValue = num / 100;
            unitString += meterValue + meter_unit + "<br>";
        }
    }
%>

<h1>변환 결과</h1>
<h2><%= num %>cm</h2>
<hr>
<h2><%= unitString %><br></h2>
	
</body>
</html>