<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%
request.setCharacterEncoding("utf-8");
DecimalFormat df = new DecimalFormat("###,###.####");%>

<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/solid";
String mysql_id = "";
String mysql_pw = "";
Connection con = DriverManager.getConnection(url,mysql_id,mysql_pw);
ResultSet rs = null;
ResultSet rs2 = null;
ResultSet rs3 = null;
ResultSet rs4 = null;
ResultSet rs5 = null;
Statement stmt = con.createStatement();
String SQL = null;
String SQL2 = null;
String SQL3 = null;
String SQL4 = null;
String SQL5 = null;

final int rowSize = 10;/**/
final int block = 5;

int pg = 1;

String keyword = "";
if(request.getParameter("keyword")!=null){
	keyword=request.getParameter("keyword");
}

if(request.getParameter("pg")!=null){
  pg=Integer.parseInt(request.getParameter("pg"));
}
if(request.getParameter("pg")==null)
pg=1;

int start = ((pg-1) * 10);/**/

if(start==1){
start=0;
}

int end = 10;
int total=0;
int allPage = 0;

int startPage = ((pg-1)/block*block)+1;
int endPage = ((pg-1)/block*block)+block;

try{

		if(keyword.equals("")){
			SQL = "select * from contact where c_delete = 0 order by c_no desc limit "+start+", 10";/**/
			SQL2 = "select count(*) from contact where c_delete = 0";
		}else{
			SQL = "select * from contact where c_title like '%"+keyword+"%' and c_delete = 0 order by c_no desc limit "+start+", 10";/**/
			SQL2 = "select count(*) from contact where c_delete = 0 and c_title like '%"+keyword+"%'";
		}

	PreparedStatement pstmt = con.prepareStatement(SQL);
	PreparedStatement pstmt2 = con.prepareStatement(SQL2);
	rs = pstmt.executeQuery();
	rs2=	pstmt2.executeQuery();

  if(rs2.next()){
    total = rs2.getInt(1);
  }

  allPage = (int)Math.ceil(total/(double)rowSize);

  if(endPage > allPage) {
    endPage = allPage;
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
				Contact
			</div>
			<!--content S-->
			<div class="wrap">
				<div class="mar-10t">
					<table class="popTable">
						<form id="search" method="get" action="contact.jsp">
						<tr>
							<td>
								<input type="text" name="keyword" value="<%=keyword%>">
								<div class="search" onclick="search()"><button>검색</button></div>
							</td>
						</tr>
					</form>

					</table>
					<%-- <div class="center">
						<button type="button" name="button" class="f_btn01">검색</button>
						<button type="button" name="button" class="f_btn02">초기화</button>
					</div> --%>
				</div>

					<div class="over_hi" style="margin-top:60px;">
						<form id="deleteFrm" method="post" action="deleteCase.jsp">
						<table class="adminTable">
							<colgroup>
								<col style="width:5%;"/>
								<col style="width:5%;"/>
								<col style="width:10%;"/>
                <col style="width:10%;"/>
                <col style="width:35%;"/>
                <col style="width:10%;"/>
                <col style="width:15%;"/>
                <col style="width:10%;"/>
							</colgroup>
							<tr>
								<th><input type="checkbox" id="checkall" ></th>
								<th>No</th>
								<th>문의종류</th>
                <th>이름</th>
                <th>제목</th>
                <th>소속/직책</th>
                <th>연락처</th>
								<th>문의날짜</th>
							</tr>
							<% if(total == 0) { %>
							<tr>
							 <td colspan="8">글이 없습니다.</td>
						 </tr>
							<% } %>

							<%
							 int count = total - ((pg - 1) * rowSize);

							 while(rs.next()) {
								 int c_no = rs.getInt("c_no");
								 String c_type = rs.getString("c_type");
								 String c_name = rs.getString("c_name");
								 String c_role = rs.getString("c_role");
								 String c_phone = rs.getString("c_phone");
								 String c_title = rs.getString("c_title");
								 String c_content = rs.getString("c_content");
								 String c_add_dt = rs.getString("c_add_dt").substring(0, 11);
								 int c_delete = rs.getInt("c_delete");
							%>

              <tr>
								<td><input type="checkbox" value="<%=c_no %>" name="ca_no"></td>
								<td><%=count%></td>
                <td class="center"><%=c_type %></td>
                <td class="center"><%=c_name %></td>
                <td class="center"><a href="contact_d.jsp?c_no=<%=c_no %>"><%=c_title %></a></td>
                <td class="center"><%=c_role %></td>
                <td class="center"><%=c_phone %></td>
								<td class="center"><%=c_add_dt %></td>
							</tr>

              <%-- <tr>
								<td><input type="checkbox" value="" name="nt_no"></td>
								<td>1</td>
                <td class="center"><a href="case_d.jsp">대구엑스코 제2전시장</a></td>
                <td class="center">대구광영시 북구</td>
                <td class="center">2020-02-28</td>
                <td class="center">관리자</td>
								<td class="center">2021-00-00</td>
							</tr> --%>
							<% count--; } %>
						</table>
					</form>
					</div>
					<ul class="center pageing">
						<% if(pg>block){ %>
						<li class="num"><a href="contact.jsp?pg=1&&keyword=<%=keyword%>">《</a></li>
						<li class="num"><a href="contact.jsp?pg=<%=startPage-1%>&&keyword=<%=keyword%>">〈</a></li>
						<%
						} for(int i=startPage; i<= endPage; i++){
									if(i==pg){
						%>
						<li class="num_on"><a><%=i%></a></li>
						<% }else{ %>
						<li class="num"><a href="contact.jsp?pg=<%=i%>&&keyword=<%=keyword%>"><%=i%></a></li>
						<% }
						}
						if(endPage<allPage){
						%>
						<li class="num"><a href="contact.jsp?pg=<%=endPage+1%>&&keyword=<%=keyword%>">〉</a></li>
						<li class="num"><a href="contact.jsp?pg=<%=allPage%>&&keyword=<%=keyword%>">》</a></li>
						<%
						}
						%>
					</ul>

					<div class="right">
	          <input type="button" value="삭제" class="common-del" onclick="deleteCase();"/>
	        </div>


		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/jquery.menu-aim.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
<script>
$(document).ready(function(){
	$("#checkall").click(function(){
		if ($("#checkall").prop("checked")) {
			$("input[name=ca_no]").prop("checked", true);
		}else {
			$("input[name=ca_no]").prop("checked", false);
		}
	});
});

function deleteCase(){
	var result =0;
	$("input[name=ca_no]").each(function(){
		if ($(this).is(":checked")) {
			result = 1;
		}
	});
	if (result== 0) {
		alert("삭제하실 글을 선택해주세요");
	}else {
		$("#deleteFrm").submit();
	}
};
</script>

</body>
</html>