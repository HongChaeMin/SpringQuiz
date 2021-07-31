<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/store_style.css">

</head>
<body>

	<div id="wrap" class="container">
		<jsp:include page="storeHead.jsp" />
		<section class="contents">
			<div class="display-4 mt-1 ml-2 mb-2">우리 동네 가게</div>
			<c:forEach var="store" items="${stores}">
				<a href="/lesson05/quiz06/reviews?storeId=${store.id}&storeName=${store.name}" class="text-dark">
					<div class="border border-info p-3 d-flex flex-column rounded">
						<div><h4>${store.name}</h4></div>
						<div>전화 번호 : ${store.phoneNumber}</div>
						<div>주소 : ${store.address}</div>
					</div>
				</a>
				<br>
			</c:forEach>
		</section>
		<jsp:include page="storeFooter.jsp" />
	</div>

</body>
</html>