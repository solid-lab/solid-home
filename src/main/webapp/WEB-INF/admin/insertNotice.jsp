<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/solid";
String mysql_id = "";
String mysql_pw = "";
Connection con = DriverManager.getConnection(url, mysql_id, mysql_pw);
ResultSet rs = null;
Statement stmt = con.createStatement();
PreparedStatement pstmt = null;
String SQL = null;

String hold = request.getParameter("hold") == null ? "0" : request.getParameter("hold");
String title = request.getParameter("title");
String content = request.getParameter("content");

int ad_no = session.getAttribute("ad_no") == null ? 0 : (int)session.getAttribute("ad_no");

if(ad_no == 0){
%>
<script>
alert("세션이 만료되었습니다.\n다시로그인해주세요.");
window.location.href='admin.jsp';
</script>
<%}

try{

  SQL = "insert notice (nt_top,nt_title,nt_content) values(?,?,?)";
  pstmt = con.prepareStatement(SQL);
  pstmt.setString(1, hold);
  pstmt.setString(2, title);
  pstmt.setString(3, content);
  pstmt.executeUpdate();

}catch(Exception e){
  out.print(e);
}
%>
<script>
  alert('작성 완료 되었습니다.');
  location.href='notice.jsp';
</script>
