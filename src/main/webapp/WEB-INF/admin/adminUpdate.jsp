<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.security.*"%>
<% request.setCharacterEncoding("utf-8");%>
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


int ad_no = session.getAttribute("ad_no") == null ? 0 : (int)session.getAttribute("ad_no");;
String str = request.getParameter("pw");
String SHA = "";


try{
   MessageDigest sh = MessageDigest.getInstance("SHA-256");
   sh.update(str.getBytes());
   byte byteData[] = sh.digest();
   StringBuffer sb = new StringBuffer();
   for(int i = 0 ; i < byteData.length ; i++){
    sb.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
   }
   SHA = sb.toString();

  }catch(NoSuchAlgorithmException e){
   e.printStackTrace();
   SHA = null;
  }

try{

  SQL = "update admin set ad_pw=? where ad_no = ? ";
  pstmt = con.prepareStatement(SQL);
  pstmt.setString(1, SHA);
  pstmt.setInt(2, ad_no);
  pstmt.executeUpdate();

}catch(Exception e){
  out.print(e);
}
%>

<%if( str != "" || str != null){%>
<script>
alert('회원정보가 변경되었습니다.');
location.href='admin.jsp';

</script>
<%}%>
