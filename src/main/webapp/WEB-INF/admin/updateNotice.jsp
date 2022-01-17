<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

String nt_no = request.getParameter("nt_no");
String nt_top = request.getParameter("nt_top");
String nt_title = request.getParameter("nt_title");
String content = request.getParameter("content");
String checkbox = request.getParameter("checkbox");

try{
  if(checkbox != null) {
    SQL = "update notice set nt_top=1, nt_title=?, nt_content=? where nt_no = ?";
    } else {
    SQL = "update notice set nt_top=0, nt_title=?, nt_content=? where nt_no = ?";
  }
  pstmt = con.prepareStatement(SQL);
  pstmt.setString(1, nt_title);
  pstmt.setString(2, content);
  pstmt.setString(3, nt_no);
  pstmt.executeUpdate();
}catch(Exception e){
  out.print(e);
}
%>
<script>
alert('수정 완료되었습니다.');
location.href='notice.jsp';
</script>
