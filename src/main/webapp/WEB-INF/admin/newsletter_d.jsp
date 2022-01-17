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

String nl_no = request.getParameter("nl_no");
String nl_title = "";
String nl_content = "";
String nl_src = "";
String nl_thum_s = "";
String nl_thum_o = "";

try{

			SQL = "select * from newsletter where nl_no = ?";/**/
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, nl_no);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				nl_title = rs.getString("nl_title");
				nl_content = rs.getString("nl_content").replace("<br />", "\r\n");
				nl_src = rs.getString("nl_src");
				nl_thum_s = rs.getString("nl_thum_s");
				nl_thum_o = rs.getString("nl_thum_o");
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
			    Newsletter
			</div>
			<!--content S-->
			<div class="wrap">
				<div class="over_hi" style="margin-top:60px;">
						<form id="insertFrm" method="post" action="updateNewsletter.jsp" enctype="multipart/form-data">
							<input type="hidden" name="nl_no" value="<%=nl_no %>">
								<table class="adminTable">
									<tr>
											<th style="width:200px">썸네일</th>
											<td class="left">
												<input type="file" name="file"0 id="file" value=""><br /><br />
												현재 썸네일 :
												<% if(nl_thum_s.equals("")) { %>
												<a>기본 썸네일 이미지입니다</a>
												<% }else{ %>
												<a href="../upload/<%=nl_thum_s %>" download><%=nl_thum_o %></a>
												<% } %>
											</td>
									</tr>
									<tr>
											<th style="width:200px">제목</th>
											<td class="left">
													<input type="text" name="title" id="title" value="<%=nl_title %>">
											</td>
									</tr>
                  <tr>
											<th style="width:200px">내용</th>
											<td class="left">
													<textarea name="content" id="content" rows="8" cols="80"><%=nl_content %></textarea>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">출처</th>
											<td class="left">
													<input type="text" name="src" id="src" value="<%=nl_src %>">
											</td>
									</tr>
								</table>
						</form>

						<div class="right">
								<input type="button" value="목록으로" class="common-del" onclick="location.href='newsletter.jsp'" />
								<input type="button" value="수정하기" class="common-del" onclick="updateNewsletter()"/>
						</div>

				</div>
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/jquery.menu-aim.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
<script type="text/javascript" src="../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<script>
function updateNewsletter(){
	//oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

 if ($("#title").val()=="") {
		alert("제목을 입력해주세요");
		$("#title").focus();
 	}else if($("#content").val()=="")  {
		alert("내용을 입력해주세요");
		$("#content").focus();
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
