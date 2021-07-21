<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 추가</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<h1 class="display-4">판매자 추가</h1>
		
		<form method="post" action="/lesson04/quiz01/addSeller">
			<label class="col-6"><b>닉네임</b> <input type="text" name="nickname" class="form-control" placeholder="닉네임을 입력하세요"></label><br>
			<label class="col-6"><b>프로필 사진 url</b> <input type="text" name="profileImageUrl" class="form-control" placeholder="프로필 사진(url)을 입력하세요"></label><br>
			<label class="col-6"><b>온도</b> <input type="text" name="temperature" class="form-control" placeholder="온도를 입력하세요"></label><br>
			<p>
				<input type="submit" class="btn btn-success" value="추가">
			</p>
		</form>
	</div>

</body>
</html>
