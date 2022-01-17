<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
ResultSet rs3 = null;
Statement stmt = con.createStatement();
String SQL = null;
String SQL2 = null;
String SQL3 = null;

String c_no = request.getParameter("c_no");
String c_type = "";
String c_name = "";
String c_role = "";
String c_phone = "";
String c_email = "";
String c_title = "";
String c_content = "";
String c_file1_s = "";
String c_file2_s = "";
String c_file1_o = "";
String c_file2_o = "";
int c_delete = 0;


try{

    SQL = "select * from contact where c_no = ?";
    PreparedStatement pstmt = con.prepareStatement(SQL);
    pstmt.setString(1, c_no);
    rs = pstmt.executeQuery();

    if (rs.next()) {
			 c_no = rs.getString("c_no");
			 c_type = rs.getString("c_type");
			 c_name = rs.getString("c_name");
			 c_role = rs.getString("c_role");
			 c_phone = rs.getString("c_phone");
			 c_email = rs.getString("c_email");
			 c_title = rs.getString("c_title");
			 c_content = rs.getString("c_content").replace("\r\n", "<br />");
		 	 c_file1_s = rs.getString("c_file1_s");
			 c_file2_s = rs.getString("c_file2_s");
       c_file1_o = rs.getString("c_file1_o");
			 c_file2_o = rs.getString("c_file2_o");
		 	 c_delete = rs.getInt("c_delete");
    }

}catch(Exception e){
  out.print(e);
}


if(c_delete == 1){
  out.println("<script>");
  out.println("alert('존재하지 않는 게시글 입니다');");
  out.println("history.back();");
  out.println("</script>");
  out.close();
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
			    Contact
			</div>
			<!--content S-->
			<div class="wrap">
				<div class="over_hi" style="margin-top:60px;">
						<form id="insertFrm" method="post" action="insertCase.jsp" enctype="multipart/form-data">
							<input type="hidden" name="nt_no" value="">
								<table class="adminTable">
                  <tr>
											<th style="width:200px">제목</th>
											<td class="left">
													<p><%=c_title %></p>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">문의종류</th>
											<td class="left">
													<p><%=c_type %> 문의</p>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">이름</th>
											<td class="left">
													<p><%=c_name %></p>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">소속/직책</th>
											<td class="left">
													<p><%=c_role %></p>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">연락처</th>
											<td class="left">
													<p><%=c_phone %></p>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">이메일</th>
											<td class="left">
													<p><%=c_email %></p>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">내용</th>
											<td class="left">
													<p>
                            <%=c_content %>
                          </p>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">첨부파일1</th>
											<td class="left">
													<p>
                          <% if(c_file1_s.equals("")) { %>
                          <a>-</a>
                          <% }else{ %>
													<a href="../upload/<%=c_file1_s %>" download><%=c_file1_o%></a>
                          <% } %>
												  </p>
											</td>
									</tr>
                  <tr>
											<th style="width:200px">첨부파일2</th>
											<td class="left">
                        <p>
                        <% if(c_file2_s.equals("")) { %>
                        <a>-</a>
                        <% }else{ %>
                        <a href="../upload/<%=c_file2_s %>" download><%=c_file2_o%></a>
                        <% } %>
                        </p>
											</td>
									</tr>
								</table>
						</form>

						<div class="right">
								<input type="button" value="목록으로" class="common-del" onclick="location.href='contact.jsp'" />
						</div>

				</div>
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/jquery.menu-aim.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
<script type="text/javascript" src="../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<script>
function insertCase(){
	//oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

 if ($("#title").val()=="") {
		alert("제목을 입력해주세요");
		$("#title").focus();
 	}else if($("#use").val()=="")  {
		alert("용도를 입력해주세요");
		$("#use").focus();
	}else if($("#ca_dt").val()=="")  {
		alert("준공일을 입력해주세요");
		$("#ca_dt").focus();
	}else if($("#place").val()=="")  {
		alert("위치를 입력해주세요");
		$("#place").focus();
	}else if($("#capacity").val()=="")  {
		alert("용량을 입력해주세요");
		$("#capacity").focus();
	}else if($("#lang").val()==""){
		alert("언어를 선택해주세요");
		$("#lang").focus();
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
