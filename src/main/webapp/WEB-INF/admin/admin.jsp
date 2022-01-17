<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>솔리드 관리자페이지 </title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
	<meta name="format-detection" content="telephone=no, address=no, email=no" />
	<link rel="stylesheet" type="text/css" href="css/adminHeader.css">
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<!---------------------------body s------------------------------->
	<section class="login_sec">
		<div class="wrap">
				<div class="RLogin">
					<%-- <div class="positionBar"></div> --%>
					<div class="LoginTitle">
						솔리드 관리자페이지
					</div>
					<div class="ajax">
					</div>
			</div>
		</div>
	</section>
	<!---------------------------body e------------------------------->

	<script>

	function EnterFilter1() {
				if (event.key == "Enter") {
					$('.goAjaxId').click();
				}
}

function EnterFilter2() {
			if (event.key == "Enter") {
				$('.goAjaxPw').click();
			}
}

	</script>

		<script>
		$(function(){
			Start();
		})
		function Start(){
			$.ajax({
				url: 'adminAjax1.jsp',
				dataType: 'HTML',
				type: 'POST',
				success: function (data) {
					$(".remove").fadeOut("normal", function() { $(this).remove(); });
					$(".ajax").css("opacity", 0);
					setTimeout(function(){
						$(".ajax").animate({opacity: '1'}, 300).append(data);
					}, 400);
				 }
			})
		}

			function goAjaxId(){
				if( $('#ad_id').val() == "") {
					$('#ad_id').css("border-bottom","2px solid red");
					$('#ad_id').addClass("yap");
					$('#ad_id').attr("placeholder","아이디를 입력해주세요.");
					setTimeout(function(){
						$('#ad_id').removeClass("yap");
					}, 1000);
				}else{

				$.ajax({
					url: 'adminAjax2.jsp',
					data:{
						id : $('#ad_id').val()
					},
					dataType: 'HTML',
					type: 'POST',
					success: function (data) {
						$(".remove").fadeOut("normal", function() { $(this).remove(); });
						$(".ajax").css("opacity", 0);
						setTimeout(function(){
							$(".ajax").animate({opacity: '1'}, 300).append(data);
						}, 400);
					 }
				})

				}
			}

			function goAjaxPw(){
				if( $('#ad_pw').val() == "") {
					$('#ad_pw').css("border-bottom","2px solid red");
					$('#ad_pw').addClass("yap");
					$('#ad_pw').attr("placeholder","비밀번호를 입력해주세요.");
					setTimeout(function(){
						$('#ad_pw').removeClass("yap");
					}, 1000);
				}else{

				$.ajax({
					url: 'adminAjaxLogin.jsp',
					data:{
						id : $('#user_id').val(),
						pw : $('#ad_pw').val()
					},
					dataType: 'JSON',
					type: 'POST',
					success: function (data) {
						if (data.state == "true") {
								alert("로그인 되었습니다.");
								window.location.href = 'notice.jsp';
						} else {
								alert("아이디 또는 비밀번호를 다시 확인하세요.");
						}
					 }
				})

				}
			}

		</script>
</body>
</html>
