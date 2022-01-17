<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>

<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/solid";
String mysql_id = "";
String mysql_pw = "";
Connection con = DriverManager.getConnection(url,mysql_id,mysql_pw);
ResultSet rs = null;
ResultSet rs2 = null;
Statement stmt = con.createStatement();
String SQL = null;
String SQL2 = null;

String m_no = request.getParameter("m_no");
String m_title = "";
String m_url = "";
String m_thum_o = "";
String m_thum_s = "";

try{

			SQL = "select * from media where m_no = ?";/**/
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, m_no);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				m_title = rs.getString("m_title");
				m_url = rs.getString("m_url");
				m_thum_s = rs.getString("m_thum_s");
				m_thum_o = rs.getString("m_thum_o");
			}

}catch(Exception e){
  out.print(e);
}
%>
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
						<form id="insertFrm" method="post" action="updateMedia.jsp" enctype="multipart/form-data">
							<input type="hidden" name="m_no" value="<%=m_no %>">
								<table class="adminTable">
                  <tr>
											<th style="width:200px">썸네일</th>
											<td class="left">
													<input type="file" name="file" id="file" value=""><br /><br />
													현재 썸네일 : <a href="../upload/<%=m_thum_s %>" download><%=m_thum_o %></a>
											</td>
									</tr>
									<tr>
											<th style="width:200px">영상 URL (유튜브)</th>
											<td class="left">
													<input type="text" name="youtubeUrl" id="youtubeUrl" value="https://youtu.be/<%=m_url %>">
											</td>
									</tr>
									<tr>
											<th style="width:200px">제목</th>
											<td class="left">
													<input type="text" name="title" id="title" value="<%=m_title %>">
											</td>
									</tr>
								</table>
						</form>

						<div class="right">
								<input type="button" value="목록으로" class="common-del" onclick="location.href='media.jsp'" />
								<input type="button" value="수정하기" class="common-del" onclick="updateMedia()"/>
						</div>

				</div>
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/jquery.menu-aim.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
<script type="text/javascript" src="../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<script>
function updateMedia(){
	//oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

 if ($("#title").val()=="") {
		alert("제목을 입력해주세요");
		$("#title").focus();
 	}else if($("#youtubeUrl").val()=="")  {
		alert("URL을 입력해주세요");
		$("#youtubeUrl").focus();
	}else if($("#file").val()=="")  {
		alert("썸네일을 첨부해주세요");
		$("#file").focus();
	}else{
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
