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
			    Media
			</div>
			<!--content S-->
			<div class="wrap">
				<div class="over_hi" style="margin-top:60px;">
						<form id="insertFrm" method="post" action="insertMedia.jsp" enctype="multipart/form-data">
							<input type="hidden" name="m_no" value="">
								<table class="adminTable">
                  <tr>
											<th style="width:200px">썸네일</th>
											<td class="left">
													<input type="file" name="file" id="file" value="">
											</td>
									</tr>
									<tr>
											<th style="width:200px">영상 URL</th>
											<td class="left">
													<input type="text" name="youtubeUrl" id="youtubeUrl" value="">
											</td>
									</tr>
									<tr>
											<th style="width:200px">제목</th>
											<td class="left">
													<input type="text" name="title" id="title" value="">
											</td>
									</tr>
								</table>
						</form>

						<div class="right">
								<input type="button" value="목록으로" class="common-del" onclick="location.href='media.jsp'" />
								<input type="button" value="작성하기" class="common-del" onclick="insertMedia()"/>
						</div>

				</div>
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/jquery.menu-aim.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
<script type="text/javascript" src="../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<script>
function insertMedia(){
	//oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

 if ($("#title").val()=="") {
		alert("제목을 입력해주세요");
		$("#title").focus();
 	}else if($("#youtubeUrl").val()=="")  {
		alert("동영상 URL을 입력해주세요");
		$("#youtubeUrl").focus();
	}else if($("#file").val()=="")  {
		alert("썸네일을 첨부해주세요");
		$("#file").focus();
	}else {
		$("#insertFrm").submit();
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
