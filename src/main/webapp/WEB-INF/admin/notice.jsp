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
			SQL = "select * from notice where nt_delete = 0 order by nt_top desc, nt_no desc limit "+start+", 10";/**/
			SQL2 = "select count(*) from notice where nt_delete = 0";
		}else{
			SQL = "select * from notice where nt_title like '%"+keyword+"%' and nt_delete = 0 order by nt_top desc, nt_no desc limit "+start+", 10";/**/
			SQL2 = "select count(*) from notice where nt_delete = 0 and nt_title like '%"+keyword+"%'";
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

	<title> ????????? ?????????????????? </title>
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
				<div class="mar-10t">
					<table class="popTable">
						<form id="search" method="get" action="notice.jsp">
						<tr>
							<td>
								<input type="text" name="keyword" value="<%=keyword%>">
								<div class="search" onclick="search()"><button>??????</button></div>
							</td>
						</tr>
					</form>

					</table>
					<%-- <div class="center">
						<button type="button" name="button" class="f_btn01">??????</button>
						<button type="button" name="button" class="f_btn02">?????????</button>
					</div> --%>
				</div>

					<div class="over_hi" style="margin-top:60px;">
						<form id="deleteFrm" method="post" action="deleteNotice.jsp">
						<table class="adminTable">
							<colgroup>
								<col style="width:5%;"/>
								<col style="width:8%;"/>
								<col style="width:60%;"/>
                <col style="width:10%;"/>
								<col style="width:12%;"/>
							</colgroup>
							<tr>
								<th><input type="checkbox" id="checkall" ></th>
								<th>No</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????????</th>
							</tr>
							<% if(total == 0) { %>
							<tr>
							 <td colspan="5">?????? ????????????.</td>
						 </tr>
							<% } %>


							<%
							 int count = total - ((pg - 1) * rowSize);

							 while(rs.next()) {
								 int nt_no = rs.getInt("nt_no");
								 String nt_title = rs.getString("nt_title");
								 String nt_add_dt = rs.getString("nt_add_dt").substring(0, 11);
								 int nt_delete = rs.getInt("nt_delete");
								 int nt_top = rs.getInt("nt_top");

								 if(nt_top == 1){
							%>

							<tr>
								<td><input type="checkbox" value="<%=nt_no%>" name="ca_no"></td>
								<td class="fix">??????</td>
								<td class="center"><a href="notice_d.jsp?nt_no=<%=nt_no %>"><%=nt_title %></a></td>
								<td class="center">?????????</td>
								<td class="center"><%=nt_add_dt %></td>
							</tr>

							<% } else { %>

              <tr>
								<td><input type="checkbox" value="<%=nt_no%>" name="ca_no"></td>
								<td><%=count%></td>
								<td class="center"><a href="notice_d.jsp?nt_no=<%=nt_no %>"><%=nt_title %></a></td>
								<td class="center">?????????</td>
								<td class="center"><%=nt_add_dt %></td>
							</tr>

							<% }count--; } %>
						</table>
					</form>
					</div>
					<ul class="center pageing">
						<% if(pg>block){ %>
						<li class="num"><a href="notice.jsp?pg=1&&keyword=<%=keyword%>">???</a></li>
						<li class="num"><a href="notice.jsp?pg=<%=startPage-1%>&&keyword=<%=keyword%>">???</a></li>
						<%
						} for(int i=startPage; i<= endPage; i++){
									if(i==pg){
						%>
						<li class="num_on"><a><%=i%></a></li>
						<% }else{ %>
						<li class="num"><a href="notice.jsp?pg=<%=i%>&&keyword=<%=keyword%>"><%=i%></a></li>
						<% }
						}
						if(endPage<allPage){
						%>
						<li class="num"><a href="notice.jsp?pg=<%=endPage+1%>&&keyword=<%=keyword%>">???</a></li>
						<li class="num"><a href="notice.jsp?pg=<%=allPage%>&&keyword=<%=keyword%>">???</a></li>
						<%
						}
						%>
					</ul>

					<div class="right">
	          <input type="button" value="??????" class="common-del" onclick="deleteNotice();"/>
						<input type="button" value="?????????" class="common-del" onclick="location.href='notice_w.jsp'"/>
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

function deleteNotice(){
	var result =0;
	$("input[name=ca_no]").each(function(){
		if ($(this).is(":checked")) {
			result = 1;
		}
	});
	if (result== 0) {
		alert("???????????? ?????? ??????????????????");
	}else {
		$("#deleteFrm").submit();
	}
};
</script>

</body>
</html>
