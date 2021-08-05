<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 펜션</title>

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
        <section class="contents">
            <section class="content1">
                <div id="imgs">
                    <img width="100%" class="img1" src="/imgs/test06_banner1.jpg" alt="img1">
                    <img width="100%" class="d-none img2" src="/imgs/test06_banner2.jpg" alt="img2">
                    <img width="100%" class="d-none img3" src="/imgs/test06_banner3.jpg" alt="img3">
                    <img width="100%" class="d-none img4" src="/imgs/test06_banner4.jpg" alt="img4">
                </div>
            </section>
            <section class="content2 d-flex">
                <article class="d-flex justify-content-center align-items-center col-4 bg-color-gar">
                    <div class="font-size-40 text-white">실시간 <br> 예약 하기</div>
                </article>
                <article class="col-5 bg-color-yeangar">
                    <div class="d-flex mt-4">
                        <div class="mr-4">
                            <span class="check">예약 확인</span>
                        </div>
                    </div>
                    <div class="d-flex mt-2 mr-4 justify-content-end">
                        <div class="color-whilt mr-3 mt-2">이름 :</div>
                        <div><input type="text" id="name" class="form-control"></div>
                    </div>
                    <div class="d-flex mt-4 mr-4 justify-content-end">
                        <div class="color-whilt mt-2 mr-3">전화번호 :</div>
                        <div><input type="text" id="phoneNumber" class="form-control"></div>
                    </div>
                    <div class="d-flex justify-content-end mt-2">
                        <button id="memberBtn" type="button" class="btn btn-success">조회 하기</button>
                    </div>
                </article>
                <article class="col-3 bg-color-gar d-flex justify-content-center align-items-center">
                    <div>
                        <h4 class="color-whilt">예약문의 :</h4>
                        <h1 class="color-whilt">010-</h1>
                        <h1 class="color-whilt">000-1111</h1>
                    </div>
                </article>
            </section>
        </section>
        <jsp:include page="bookingFooter.jsp" />
    </div>

    <script>
        $(document).ready(function () {

            var i = 1;
            var time = setTimeout(function changeImg(j) {
                var img = ".img" + i;
                $(img).addClass('d-none');
                i++;
                if (i > 4) {
                    i = 1;
                }
                var newImg = ".img" + i;
                $(newImg).removeClass('d-none');

                console.log(img);
                console.log(newImg);

                time = setTimeout(changeImg, 3000, i);
            }, 3000);

			$('#memberBtn').on('click', function() {
				let name = $('#name').val().trim();
				if (name == '') {
					alert("이름을 입력하세요");
					return;
				}
				
				let phoneNumber = $('#phoneNumber').val().trim();
				if (phoneNumber == '') {
					alert("전화번호를 입력하세요");
					return;
				}
				
				$.ajax({
					type:'POST',
			        url:"/lesson06/bookingCheck",
			        data: {'name' : name},
			        success : function(booking) {
			        	if (booking.name == name && booking.phoneNumber == phoneNumber) {
			        		alert("이름 : " + booking.name + "\n 날짜 : " + booking.date + "\n 일수 : " + booking.day + "\n 인원 : " + booking.headcount + "\n 상태 : " + booking.state);
			        	} else {
			        		alert("이름이나 전화번호를 정확히 입력했는지 확인하세요");
			        	}
			        }, error : function(e) {
			        	alert("error : " + e);
			        }
				});
			});
            
        });
    </script>

</body>
</html>