<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.regex.Matcher" %>
<%@page import="java.util.regex.Pattern" %>
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
  // 실제 저장할 파일명
  String newFileName1 = "";
  // 원본 파일명
  String originFile1 = "";

  int read = 0;

  byte[] buf = new byte[1024];

  long currentTime = System.currentTimeMillis();
  SimpleDateFormat simDf = new SimpleDateFormat("yyyy-MM-dd_HH_mm_ss");

  MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "utf-8", new DefaultFileRenamePolicy());

  String nl_no = multi.getParameter("nl_no");
  String title = multi.getParameter("title");
  String content = multi.getParameter("content");
  String src = multi.getParameter("src");

  uploadFile1 = multi.getFilesystemName("file");
  originFile1 = multi.getFilesystemName("file");

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

    if(uploadFile1 != null){
      SQL = "update newsletter set nl_thum_s = ?, nl_thum_o =? where nl_no= ?";
      pstmt = con.prepareStatement(SQL);
      pstmt.setString(1, newFileName1);
      pstmt.setString(2, originFile1);
      pstmt.setString(3, nl_no);
      pstmt.executeUpdate();
    }

  SQL = "update newsletter set nl_title=?, nl_content=?, nl_src=? where nl_no = ?";
  pstmt = con.prepareStatement(SQL);
  pstmt.setString(1, title);
  pstmt.setString(2, content);
  pstmt.setString(3, src);
  pstmt.setString(4, nl_no);
  pstmt.executeUpdate();
}catch(Exception e){
  out.print(e);
}
%>
<script>
alert('수정 완료되었습니다.');
location.href='newsletter.jsp';
</script>
