<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약목록</title>

	<link rel="stylesheet" type="text/css" href="/css/booking_style.css">

    <!-- jQuery가 datepicker 라이브러리 위에 있어야 한다. (데이터피커가 jquery를 사용하기 때문) -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <!-- datepicker 라이브러리 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <!-- bootstrap CDN link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div id="wrap" class="container">
        <jsp:include page="bookingHeader.jsp" />
        <section>
        	<h3 class="ml-5 mt-3 font-weigth-bold">예약 목록 보기</h3>
        	<table class="table">
        		<thead>
        			<tr>
        				<th>이름</th>
        				<th>예약 날짜</th>
        				<th>숙박 일수</th>
        				<th>숙박 인원</th>
        				<th>전화번호</th>
        				<th>예약 상태</th>
        				<th></th>
        			</tr>
        		</thead>
        		<tbody>
        			<c:forEach var="booking" items="${bookingList}">
        				<tr>
        					<td>${booking.name}</td>
        					<td><fmt:formatDate value="${booking.date}" pattern="yyyy년 M월 d일" /></td>
        					<td>${booking.day}</td>
        					<td>${booking.headcount}</td>
        					<td>${booking.phoneNumber}</td>
        					<td>
        						<c:choose>
										<c:when test="${booking.state eq '확정'}">
											<span class="text-success">${booking.state}</span>
										</c:when>
										<c:when test="${booking.state eq '대기중'}">
											<span class="text-info">${booking.state}</span>
										</c:when>
										<c:otherwise>
											<span class="text-danger">${booking.state}</span>
										</c:otherwise>
									</c:choose>
        					</td>
        					<td><button type="button" class="booking-btn btn btn-danger" data-booking-id="${booking.id}">삭제</button></td>
        				</tr>
        			</c:forEach>
        		</tbody>
        	</table>
        </section>
        <jsp:include page="bookingFooter.jsp" />
    </div>
    
    <script>
		$(document).ready(function() {
			$('.booking-btn').on('click', function() {
				
				var bookingId = $(this).data('booking-id');
				
				$.ajax({
					type:'post'
					, url:'/lesson06/delete_booking'
					, data: {"booking_id": bookingId}
					, success: function(data) {
						if (data.result === true) {
							location.reload();
						} else {
							alert("삭제 실패했습니다. 관리자에게 문의해주세요.");
						}
					}, error: function(e) {
						alert("error: " + e);
					}
				});
			});
			
		});
	</script>
    
</body>
</html>