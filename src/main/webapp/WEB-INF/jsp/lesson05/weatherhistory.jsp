<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기상청</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/weatherhistory_style.css">

</head>
<body>

	<div id="warp">
		<div class="d-flex contents">
			<header class="col-2">
				<jsp:include page="weatherhistoryHeader.jsp" />
			</header>
			<section class="content col-10">
				<h2 class="mb-3">과거 날씨</h2>
				<table class="table">
					<thead>
						<tr>
							<th>날짜</th>
							<th>날씨</th>
							<th>기온</th>
							<th>강수량</th>
							<th>미세먼지</th>
							<th>풍속</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="weather" items="${weatherhistory}">
							<tr>
								<td><fmt:formatDate value="${weather.date}" pattern="yyyy년 M월 d일" /></td>
								<td>
									<c:choose>
										<c:when test="${weather.weather eq '맑음'}">
											<img alt="맑음" src="/imgs/sunny.jpg">
										</c:when>
										<c:when test="${weather.weather eq '구름조금'}">
											<img alt="구름조금" src="/imgs/partlyCloudy.jpg">
										</c:when>
										<c:when test="${weather.weather eq '흐림'}">
											<img alt="흐림" src="/imgs/cloudy.jpg">
										</c:when>
										<c:otherwise>
											<img alt="비" src="/imgs/rainy.jpg">
										</c:otherwise>
									</c:choose>
								
								</td>
								<td><fmt:formatNumber value="${weather.temperatures}" type="number" pattern="##.#Cº" /></td>
								<td><fmt:formatNumber value="${weather.precipitation}" type="number" pattern="##.#mm" /></td>
								<td>${weather.microDust}</td>
								<td><fmt:formatNumber value="${weather.windSpeed}" type="number" pattern="##.#km/h" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
		</div>
		<footer class="d-flex">
			<jsp:include page="weatherhistoryFooter.jsp" />
		</footer>
	</div>

</body>
</html>