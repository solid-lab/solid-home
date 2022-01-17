<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

int ad_no = session.getAttribute("ad_no") == null ? 0 : (int)session.getAttribute("ad_no");
if(ad_no ==0){
	%>
  <script>
  	alert('세션이 만료되었습니다.\n다시로그인해주세요');
  	location.href = "admin.jsp"
  </script>
  <%
}

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

  String title = multi.getParameter("title");
  // id 세션값
  //String hold = multi.getParameter("hold")==null ? "0" : multi.getParameter("hold");
  String youtubeUrl = multi.getParameter("youtubeUrl");

  String ID = "";
  String pattern = "(?<=watch\\?v=|/videos/|embed\\/|youtu.be\\/|\\/v\\/|\\/e\\/|watch\\?v%3D|watch\\?feature=player_embedded&v=|%2Fvideos%2F|embed%\u200C\u200B2F|youtu.be%2F|%2Fv%2F)[^#\\&\\?\\n]*";

  Pattern compiledPattern = Pattern.compile(pattern);
  Matcher matcher = compiledPattern.matcher(youtubeUrl);
  if (matcher.find()) {
       ID = matcher.group();
  }

  uploadFile1 = multi.getFilesystemName("file");
  originFile1 = multi.getFilesystemName("file");
  //uploadFile2 = multi.getFilesystemName("file2");
  //originFile2 = multi.getFilesystemName("file2");


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

SQL = "insert into media (m_thum_s, m_thum_o, m_title, m_url) values(?,?,?,?)";
pstmt = con.prepareStatement(SQL);
pstmt.setString(1, newFileName1);
pstmt.setString(2, originFile1);
pstmt.setString(3, title);
pstmt.setString(4, ID);
pstmt.executeUpdate();

}catch(Exception e){
  out.print(e);
}
%>
<script>
alert('작성 완료 되었습니다.');
location.href='media.jsp';
</script>
