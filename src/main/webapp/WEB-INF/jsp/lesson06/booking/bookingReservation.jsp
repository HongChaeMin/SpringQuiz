<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>

	<link rel="stylesheet" type="text/css" href="/css/booking_style.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        

    <!-- datepicker 라이브러리 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div id="wrap" class="container">
        <jsp:include page="bookingHeader.jsp" />
        <section class="d-flex justify-content-center">
        	<div class="w-40">
        		<h3 class="mt-3">예약하기</h3>
        		<strong>이름</strong><input id="name" class="form-control">
        		<strong>예약날짜</strong><input id="date" class="form-control">
        		<strong>숙박일수</strong>
        		<select id="day" class="form-control">
        			<option selected>선택</option>
        			<option>1</option>
        			<option>2</option>
        			<option>3</option>
        			<option>4</option>
        			<option>5</option>
        			<option>6</option>
        			<option>7</option>
        			<option>8</option>
        			<option>9</option>
        			<option>10</option>
        		</select>
        		<strong>숙박인원</strong>
        		<select id="headcount" class="form-control">
        			<option selected>선택</option>
        			<option>1</option>
        			<option>2</option>
        			<option>3</option>
        			<option>4</option>
        			<option>5</option>
        			<option>6</option>
        			<option>7</option>
        			<option>8</option>
        			<option>9</option>
        			<option>10</option>
        		</select>
        		<strong>전화번호</strong><input id="phoneNumber" class="form-control">
        		<br>
        		<input type="submit" id="addBtn" class="btn btn-warning col-12" value="추가">
        	</div>
        </section>
        <jsp:include page="bookingFooter.jsp" />
    </div>
    
    <script>
    $(document).ready(function() {
    	
    	$('#date').datepicker();
		
		$('#addBtn').on('click', function(e) {
			e.preventDefault();
			
			let name = $('#name').val().trim();
			if (name == '') {
				alert("이름을 입력하세요");
				return;
			}
			
			let date = $('#date').val().trim();
			if (date == '') {
				alert("날짜를 선택하세요");
				return;
			}
			
			let day = $('#day').val().trim();
			if (isNaN(day)) {
				alert("숙박 일수를 선택해주세요");
				return;
			}
			
			let headcount = $('#headcount').val().trim();
			if (isNaN(headcount)) {
				alert("숙박 인원을 선택해주세요");
				return;
			}
			
			let phoneNumber = $('#phoneNumber').val().trim();
			if (phoneNumber == '') {
				alert("전화번호를 입력하세요");
				return;
			}
			
			$.ajax({
				type:'POST',
		        url:"/lesson06/booking_add_data",
		        data: {'name' : name, 'date' : date, 'day' : day, 'headcount' : headcount, 'phoneNumber' : phoneNumber},
		        success : function(data) {
		        	alert('예약 성공');
		        	location.href = "/lesson06/bookingMain";
		        }, error : function(e) {
		        	alert("error : " + e);
		        }
			});
		});
		
	});
    </script>

</body>
</html>