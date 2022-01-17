<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


		<link rel="stylesheet" type="text/css" href="css/admin.css">
		<link rel="stylesheet" type="text/css" href="css/reset.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->

	<title> Likes It </title>

	<style>

	/*login*//*login*/
	.center{
		text-align: center;
	}
	.login_sec {
		position: absolute;
		width: 100%;
		height: 100%;
		background-color: #545454;
		margin: 0;
	}

	.login_logo {
		border: 1px solid #d7d7d7;
		width: 450px;
		margin: 220px auto 0;
		padding: 25px 0 20px;
		background-color: #ffff;
	}

	.login_border {
		border: 1px solid #d7d7d7;
		width: 400px;
		margin: 1% auto 40%;
		padding: 25px 25px 25px;
	}


	.login_input {
		width: 400px;
		padding: 8px;
		margin-top: 10px;

		border: 1px solid #118ccf;
	}

	.login_but {
		width: 418px;
		padding: 8px;
		margin-top: 10px;

		border: 1px solid #118ccf;
		background-color: #118ccf;
		color: #fff;
		font-size: 18px;

	}

	.small_login_title_p {
		margin: 0;
		font-size: 18px;
		color: #118ccf;
	}

	.login_title_p {
		font-size: 30px;
		margin: 0;
	}

	.small_login_title_gray {
		font-size: 14px;
		color: #afafaf;
		margin: 10px 0 30px;
	}

	.left_p {
		margin: 0 0 5px;
	}

	.right_p {
		margin: 2px 0 5px;
		font-size: 14px;
		color: #afafaf;
	}

	.left_p1 {
		margin: 10px 0 0;
	}

	.right_p1 {
		margin: 11px 0 0;
		font-size: 14px;

	}

	.right_p1 > a,
	.right_p > a {
		color: #afafaf;
	}


	</style>
</head>
<body>
	<section class="login_sec">
		<div class="wrap">
			<div class="center login_logo">

				<p class="center small_login_title_p">Changing password</p>
				<p class="center login_title_p">
					비밀번호 변경
				</p>
				<p class="center small_login_title_gray">
					관리자페이지 비밀번호 변경입니다.
				</p>

				<form action="adminUpdate.jsp" method="post" id="memberfrm" name="memberfrm">
					<input type="password" class="login_input" name="pw" id="pw" placeholder="변경비밀번호">
					<input type="password" class="login_input" id="pw2" name="pw2" placeholder="변경비밀번호 확인">
				</form>
        <button class="write_btn login_but" onclick="joincheck()">수정하기</button>

			</div>
		</div>

	</section>

  <script>
  	function joincheck() {

  		  if($("#pw").val() == ""){
  				alert("변경하실 비밀번호를 입력해주세요.");
          $("#pw").focus();
  			}else if($("#pw2").val() == ""){
          alert("변경하실 비밀번호 확인을 입력해주세요.");
          $("#pw2").focus();
  			}else if($("#pw2").val() != $("#pw").val()){
          alert("비밀번호가 일치하지 않습니다.");
  			}else{

  	      if (confirm("수정하시겠습니까?") == true) { //확인
  	        $("#memberfrm").submit();
  	      } else { //취소
  	        return;
  	      }
  	    }

  	}
  	</script>


</body>
</html>
