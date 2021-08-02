<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가하기</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
		<b>제목</b>
		<input type="text" class="form-control" id="name">
		<b>주소</b>
		<input type="text" class="form-control" id="url"><br>
		<input type="button" id="addBtn" class="btn btn-success" value="추가">
	</div>
	
	<script>
		$(document).ready(function() {
			$('#addBtn').on('click', function(e) {
				var name = $('#name').val().trim();
				if(name == '') {
					alert("제목을 입력하세요");
					return;
				}
				
				var url = $('#url').val().trim();
				if(url == '' || !url.startsWith('http') & !url.startsWith('https')) {
					alert("주소를 입력하거나 주소가 http, https로 시작해야 합니다");
					return;
				}
				
				$.ajax({
					type:'POST',
			        url:"/lesson06/favoriteAddData",
			        data: {'name':name, 'url':url},
			        success : function(data) {
			        	location.href = "/lesson06/favoriteAddAfter";
			        }, error : function(e) {
			        	alert("error : " + e);
			        }
				});
			});
		});
	</script>
</body>
</html>