<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

	<h2>1. JSTL core 변수</h2>
	
	<c:set var="num1" value="36" />
	<c:set var="num2">3</c:set>
	
	<h4>첫번째 숫자 : ${num1}</h4>
	<h4>두번째 숫자 : <c:out value="${num2}"/></h4>
	
	<h2>2. JSTL core 연산</h2>
	
	<h4>더하기 : ${num1 + num2}</h4>
	<h4>빼기 : ${num1 - num2}</h4>
	<h4>곱하기 : ${num1 * num2}</h4>
	<h4>나누기 : ${num1 / num2}</h4>

	<h2>3. JSTL core out</h2>
	<c:out value="<title>core out</title>" />
	
	<h2>4. JSTL core if</h2>
	
	<c:if test="${(num1 + num2) / 2 >= 10}">
		<h4>${(num1 + num2) / 2}</h4>
	</c:if>

	<h2>5. JSTL core if</h2>
	
	<c:if test="${num1 * num2 >= 100}">
		<c:out value="<script>alert('너무 큰 수 입니다')</script>" escapeXml="false"/>
	</c:if>

</body>
</html>