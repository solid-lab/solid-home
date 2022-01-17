<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"> <!-- Resource style -->
	<link rel="stylesheet" href="css/admin.css"> <!-- Resource style -->

	<title> 솔리드 관리자페이지 </title>
</head>
<body>


	<main class="cd-main-content">

		<%@ include file="header.jsp"%>

		<div class="content-wrapper">
			<div class="titleNav">
			    Notice
			</div>
			<!--content S-->
			<div class="wrap">
				<div class="over_hi" style="margin-top:60px;">
					<form id="updateFrm" method="post" action="insertNotice.jsp">
							<input type="hidden" name="nt_no" value="">
								<table class="adminTable">
									<tr>
											<th style="width:200px">상단 고정여부</th>
											<td class="left">
												<input type="checkbox" value="1" name="hold"> 고정
											</td>
									</tr>
									<tr>
											<th style="width:200px">제목</th>
											<td class="left">
													<input type="text" name="title" id="title" value="">
											</td>
									</tr>
                  <tr>
											<th style="width:200px">내용</th>
											<td class="left">
													<textarea id="content" name="content" rows="8" cols="80"></textarea>
											</td>
									</tr>
								</table>
						</form>

						<div class="right">
								<input type="button" value="목록으로" class="common-del" onclick="location.href='notice.jsp'" />
								<input type="button" value="작성하기" class="common-del" onclick="insertNotice()"/>
						</div>

				</div>
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/jquery.menu-aim.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
<script type="text/javascript" src="../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<script>
function insertNotice(){
	// oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	var content = $("#content").val();
 if ($("#title").val()=="") {
		alert("제목을 입력해주세요");
		$("#title").focus();
 	}else if( content == ""  || content == null || content == '&nbsp;' || content == '<p>&nbsp;</p>')  {
		alert("내용을 입력해주세요");
		$("#content").focus();
	}else {
		$("#updateFrm").submit();
	}
}
</script>

<%-- <script>
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({oAppRef: oEditors, elPlaceHolder: "content", sSkinURI: "../se2/SmartEditor2Skin.html", fCreator: "createSEditor2"});

	function pasteHTML(filepath) {
		var sHTML = '<img src="../se2/upload/' + filepath + '">';
		oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
	}

</script> --%>

</body>
</html>
