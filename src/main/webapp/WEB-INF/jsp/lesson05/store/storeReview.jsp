<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${storeName}</title>

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
			<span class="display-4 mt-1 ml-2">${storeName} - 리뷰</span>
			<c:forEach var="review" items="${reviews}">
					<div class="border border-info p-3 d-flex flex-column rounded">
						<div class="d-flex">
							<h5>${review.userName}</h5>
						</div>
						<div class="text-secondary"><fmt:formatDate value="${review.updatedAt}" pattern="yyyy년 MM월 dd일" /></div>
						<div><h6>${review.review}</h6></div>
						<div><span class="badge badge-secondary">${review.menu}</span></div>
					</div>
				<br>
			</c:forEach>
		</section>
		<jsp:include page="storeFooter.jsp" />
	</div>

</body>
</html>