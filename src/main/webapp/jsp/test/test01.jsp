<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 연습문제 1</title>
</head>
<body>
	<!--  1번 -->
	<% int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	double avg;
	for(int i =0;i<scores.length;i++){
			sum += scores[i];
		}
		avg = sum / scores.length;
		%>
	<h2>점수 평균은 <%= avg %>입니다.</h2>
	
	<!--  2번 -->
	<% List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"}); 
	
	int score = 100;
	for(int i=0;i<scoreList.size();i++){
		if(scoreList.get(i).equals("X")){
			score -= 10;
		}
	}
	%>
	<h2>채점 결과는 <%= score %>입니다.</h2>
	
	
	<!--  3번 -->
	
	<%! 
		public int getSum(int a){
		int sum2 = 0;
		for(int i = 1; i < (a+1) ; i++){
			sum2 += i;
		}
		return sum2;
	}
	%>
	
	<h2>1에서 50까지의 합은 <%= getSum(50) %>입니다.</h2>
	
	<!--  4번 -->
	
	
	
</body>
</html>