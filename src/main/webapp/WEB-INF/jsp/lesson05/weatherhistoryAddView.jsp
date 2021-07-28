<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 추가</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        

    <!-- datepicker 라이브러리 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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
				<h2 class="mb-3">날씨 입력</h2>
				<form method="post" action="/lesson05/weatherhistoryAdd">
					<label class="col-6"><b>날짜</b><input id="dp" name="date" type="text" class="form-control"></label>
					<label class="col-6">
						<b>날씨</b>
						 <select name="weather" name="weather" class="form-control">
						 	<option>맑음</option>
						 	<option>조금흐림</option>
						 	<option>흐림</option>
						 	<option>비</option>
						 </select>
					</label>
					<label class="col-6">
						<b>미세먼지</b> <br>
						 <select name="microDust" name="microDust" class="form-control">
						 	<option>좋음</option>
						 	<option>보통</option>
						 	<option>나쁨</option>
						 	<option>최악</option>
						 </select>
					</label>
					<div class="input-group mb-3 col-6">
						<b>기온</b> <br>
  						<input type="text" class="form-control" name="temperatures">
  						<div class="input-group-append">
    						<span class="input-group-text">ºC</span>
  						</div>
					</div>
					<div class="input-group mb-3 col-6">
						<b>강수량</b> <br>
  						<input type="text" class="form-control" name="precipitation">
  						<div class="input-group-append">
    						<span class="input-group-text">mm</span>
  						</div>
					</div>
					<div class="input-group mb-3 col-6">
						<b>풍속</b> <br>
  						<input type="text" class="form-control" name="windSpped">
  						<div class="input-group-append">
    						<span class="input-group-text">km/h</span>
  						</div>
					</div>
					<p>
						<input type="submit" class="btn btn-success" value="저장">
					</p>
				</form>
			</section>
		</div>
		<footer class="d-flex">
			<jsp:include page="weatherhistoryFooter.jsp" />
		</footer>
	</div>

	<script>
		$(document).ready(function () {
			$('#dp').datepicker();
        });
    </script>

</body>
</html>