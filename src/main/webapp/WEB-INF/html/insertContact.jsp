<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
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

try{

  int maxSize = 10 * 1024 * 1024;

  // 웹서버 컨테이너 경로
  String root = request.getSession().getServletContext().getRealPath("/");
  PrintWriter writer;

  // 파일 저장 경로(ex : /home/tour/web/ROOT/upload)
  String savePath = root + "../upload/";
  // 업로드 파일명
  String uploadFile1 = "";
	String uploadFile2 = "";

  // 실제 저장할 파일명
  String newFileName1 = "";
	String newFileName2 = "";

  // 원본 파일명
  String originFile1 = "";
	String originFile2 = "";

  int read = 0;

  byte[] buf = new byte[1024];

  long currentTime = System.currentTimeMillis();
  SimpleDateFormat simDf = new SimpleDateFormat("yyyy-MM-dd_HH_mm_ss");

  MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "utf-8", new DefaultFileRenamePolicy());

	String type = multi.getParameter("radio");
	String username = multi.getParameter("username");
  String role = multi.getParameter("role");
  // id 세션값
  //String hold = multi.getParameter("hold")==null ? "0" : multi.getParameter("hold");
  String p1 = multi.getParameter("p1");
	String p2 = multi.getParameter("p2");
	String p3 = multi.getParameter("p3");

	String phone = p1 + "-" + p2 + "-" + p3;

  String email = multi.getParameter("email");
	String title = multi.getParameter("title");
	String content = multi.getParameter("content");

	String agree = multi.getParameter("terms");

  uploadFile1 = multi.getFilesystemName("file1");
  originFile1 = multi.getFilesystemName("file1");
  uploadFile2 = multi.getFilesystemName("file2");
  originFile2 = multi.getFilesystemName("file2");


	if(uploadFile1 != null){
    newFileName1 = simDf.format(new Date(currentTime)) +UUID.randomUUID().toString().replaceAll("-", "")+ uploadFile1.substring(uploadFile1.lastIndexOf("."));

    File oldFile = new File(savePath + uploadFile1);
    File newFile = new File(savePath + newFileName1);

    if(!oldFile.renameTo(newFile)){

        FileInputStream fin = new FileInputStream(oldFile);
        FileOutputStream fout = new FileOutputStream(newFile);
        read = 0;

        while((read=fin.read(buf,0,buf.length))!=-1){
            fout.write(buf, 0, read);
        }

        fin.close();
        fout.close();
        oldFile.delete();
    }
  }

	if(uploadFile2 != null){
    newFileName2 = simDf.format(new Date(currentTime)) +UUID.randomUUID().toString().replaceAll("-", "")+ uploadFile2.substring(uploadFile2.lastIndexOf("."));

    File oldFile = new File(savePath + uploadFile2);
    File newFile = new File(savePath + newFileName2);

    if(!oldFile.renameTo(newFile)){

        FileInputStream fin = new FileInputStream(oldFile);
        FileOutputStream fout = new FileOutputStream(newFile);
        read = 0;

        while((read=fin.read(buf,0,buf.length))!=-1){
            fout.write(buf, 0, read);
        }

        fin.close();
        fout.close();
        oldFile.delete();
    }
  }

SQL = "insert into contact (c_file1_s, c_file1_o, c_file2_s, c_file2_o, c_type, c_name, c_role, c_phone, c_email, c_title, c_content, c_agree) values(?,?,?,?,?,?,?,?,?,?,?,?)";
pstmt = con.prepareStatement(SQL);
pstmt.setString(1, newFileName1);
pstmt.setString(2, originFile1);
pstmt.setString(3, newFileName2);
pstmt.setString(4, originFile2);
pstmt.setString(5, type);
pstmt.setString(6, username);
pstmt.setString(7, role);
pstmt.setString(8, phone);
pstmt.setString(9, email);
pstmt.setString(10, title);
pstmt.setString(11, content);
pstmt.setString(12, agree);
pstmt.executeUpdate();

}catch(Exception e){
  out.print(e);
}
%>
<script>
alert('작성 완료 되었습니다.');
location.href='sub4.jsp';
</script>
