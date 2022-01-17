<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.security.*"%>
<%@ page import="org.json.simple.JSONObject"%>

<% request.setCharacterEncoding("utf-8");%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/solid";
String mysql_id = "";
String mysql_pw = "";

JSONObject jobj = new JSONObject();
Connection con = DriverManager.getConnection(url, mysql_id, mysql_pw);
ResultSet rs = null;
Statement stmt = con.createStatement();
PreparedStatement pstmt = null;
String SQL = null;

ResultSet my_rs = null;
Statement my_stmt = con.createStatement();
PreparedStatement my_pstmt = null;
String my_SQL = null;

String id = String.valueOf(request.getParameter("id"));
String pw = request.getParameter("pw");

int ad_no = 0 ;
String ad_name = "";
String SHA = "";

try{
  MessageDigest sh = MessageDigest.getInstance("SHA-256");
  sh.update(pw.getBytes());
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
  SQL = "select * from admin where BINARY ad_id=? and ad_pw=?";
  pstmt = con.prepareStatement(SQL);
  pstmt.setString(1, id);
  pstmt.setString(2, SHA);
  rs = pstmt.executeQuery();

  if(rs.next()){
    ad_no = rs.getInt("ad_no");
    ad_name = rs.getString("ad_name");
  }

  if(ad_no>0){
    jobj.put("state", "true");
    session.setAttribute("ad_no", ad_no);
    session.setAttribute("ad_name", ad_name);
  }else{
    jobj.put("state", "false");
    jobj.put("state", SQL);
  }


}catch(Exception e){
  out.print(e);
}
response.setContentType("application/json");
out.print(jobj.toJSONString()); // json 형식으로 출력
%>
