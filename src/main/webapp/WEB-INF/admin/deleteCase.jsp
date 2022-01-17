<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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

String[] ca_no = request.getParameterValues("ca_no");

try{

  for (int i=0; i < ca_no.length; i++) {
    SQL = "update contact set c_delete = 1 where c_no = ?";
    pstmt = con.prepareStatement(SQL);
    pstmt.setString(1, ca_no[i]);
    pstmt.executeUpdate();
  }

}catch(Exception e){
  out.print(e);
}
%>
<script>
  alert('삭제가 완료되었습니다.');
  location.href='contact.jsp';
</script>
