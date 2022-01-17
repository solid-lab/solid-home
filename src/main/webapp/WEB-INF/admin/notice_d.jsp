<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
// DecimalFormat df = new DecimalFormat("###,###.####");
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

String  nt_no = request.getParameter("nt_no");
String	nt_title = "";
String  nt_content = "";
String  nt_add_dt = "";
int  nt_top = 0;
int  nt_delete = 0;


try{

  SQL = "select * from notice where nt_no = ?";/**/
  PreparedStatement pstmt = con.prepareStatement(SQL);
  pstmt.setString(1, nt_no);
  rs = pstmt.executeQuery();

  if (rs.next()) {
    nt_no = rs.getString("nt_no");
    nt_title = rs.getString("nt_title");
    nt_content = rs.getString("nt_content");
    nt_add_dt = rs.getString("nt_add_dt").substring(0, 11);
    nt_top = rs.getInt("nt_top");
    nt_delete = rs.getInt("nt_delete");
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
			    Notice
			</div>
			<!--content S-->
			<div class="wrap">
				<div class="over_hi" style="margin-top:60px;">
						<form id="insertFrm" method="post" action="updateNotice.jsp">
							<input type="hidden" name="nt_no" value="<%=nt_no %>">
								<table class="adminTable">
									<tr>
											<th style="width:200px">상단 고정여부</th>
											<td class="left">
												<input type="checkbox" value="1" name="checkbox" <% if(nt_top == 1) { %>checked = "checked" <% } %>> 고정
											</td>
									</tr>
									<tr>
											<th style="width:200px">제목</th>
											<td class="left">
												<input type="text" id="nt_title" name="nt_title" value="<%=nt_title %>">
											</td>
									</tr>
                  <tr>
											<th style="width:200px">내용</th>
											<td class="left">
												<textarea id="content" name="content"><%=nt_content %></textarea>
											</td>
									</tr>
								</table>
						</form>

						<div class="right">
								<input type="button" value="목록으로" class="common-del" onclick="location.href='notice.jsp'" />
								<input type="button" value="수정하기" class="common-del" onclick="updateNotice()"/>
						</div>

				</div>
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/jquery.menu-aim.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
<script type="text/javascript" src="../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<script>
function updateNotice(){
	//oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

 if ($("#title").val()=="") {
		alert("제목을 입력해주세요");
		$("#title").focus();
 	}else if(content == ""  || content == null || content == '&nbsp;' || content == '<p>&nbsp;</p>')  {
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
