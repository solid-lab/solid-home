<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
// DecimalFormat df = new DecimalFormat("###,###.####");
%>

<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/solid";
String mysql_id = "";
String mysql_pw = "";
Connection con = DriverManager.getConnection(url,mysql_id,mysql_pw);
ResultSet rs = null;
ResultSet rs2 = null;
Statement stmt = con.createStatement();
String SQL = null;
String SQL2 = null;

String  nl_no = request.getParameter("nl_no");
String	nl_title = "";
String  nl_content = "";
String  nl_add_dt = "";
String nl_src = "";
String nl_thum_s = "";
int nl_delete = 0;


try{

  SQL = "select * from newsletter where nl_no = ?";
  PreparedStatement pstmt = con.prepareStatement(SQL);
  pstmt.setString(1, nl_no);
  rs = pstmt.executeQuery();

  if (rs.next()) {
    nl_no = rs.getString("nl_no");
    nl_title = rs.getString("nl_title");
    nl_content = rs.getString("nl_content").replace("\r\n", "<br />");
    nl_add_dt = rs.getString("nl_add_dt").substring(0, 11);
    nl_src = rs.getString("nl_src");
    nl_thum_s = rs.getString("nl_thum_s");
    nl_delete = rs.getInt("nl_delete");
  }


}catch(Exception e){
  out.print(e);
}

  if(nl_delete == 1){
    out.println("<script>");
    out.println("alert('존재하지 않는 게시글 입니다');");
    out.println("history.back();");
    out.println("</script>");
    out.close();
  }

%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=11" />
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
    <title>솔리드</title>

    <link rel="stylesheet" href="css/defult.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/sub.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <link rel="stylesheet" type="text/css" href="css/slick-theme.css">

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/common.js"></script>

    <style>
        /* tablet */
        @media screen and (min-width: 768px) and (max-width: 1024px){

            html,
            body {
                height: 100%;
            }

            #wrap {
                display: flex;
                flex-direction: column;
                height: 100%;
            }

            #footer {
                margin-top: auto;
            }
        }
    </style>
</head>

<body>
    <div id="wrap">

        <!-- header -->
        <%@include file="header.jsp"%>


        <!-- sub intro -->
        <div id="sub_intro" class="sub_intro02">
            <img src="images/sub3_intro.jpg" alt="img">
            <p>PR</p>
        </div>


        <!-- sub route -->
        <div class="route" id="sticky">
            <div class="main_center">
                <div class="home" onclick="location='index.jsp'">
                    <i class="xi-home"></i>
                </div>
                <div class="r_select01 r_select03">
                    <div class="select_title">
                        <p>PR</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li><a href="sub1.jsp">Solutions</a></li>
                        <li><a href="sub2.jsp">Company</a></li>
                        <li class="title_on"><a href="sub3_1.jsp">PR</a></li>
                        <li><a href="sub4.jsp">Support</a></li>
                    </ul>
                </div>
                <div class="r_select01 r_select02">
                    <div class="select_title">
                        <p>Newsletter</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                      <li onclick="location='sub3_1.jsp#sub_content'">Notice</li>
                      <li class="title_on" onclick="location='sub3_2.jsp#sub_content'">Newsletter</li>
                      <li onclick="location='sub3_3.jsp#sub_content'">Media</li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- sub content -->
        <div id="sub_content">
            <div class="notice_box">
                <div class="sub2_title">
                    <img src="images/nms_img02.png" alt="icon">
                    <p>Newsletter</p>
                </div>

                <div class="sub_center02">
                    <ul class="notice_d">
                        <li>
                            <div class="notice_title">
                                <p><%=nl_title %></p>
                                <div class="upload"><%=nl_add_dt %></div>
                            </div>
                        </li>
                        <li style="border-bottom: 0;">
                            <div class="notice_con">
                                <div class="new_d_img">
                                  <!-- 썸네일이 없으면 기본 이미지 출력, 있으면 저장된 이미지 출력-->
                                  <% if(nl_thum_s.trim().isEmpty()) { %>
                                    <img src="images/news_thumb.jpg" alt="img">
                                  <% }else{ %>
                                    <img src="../upload/<%=nl_thum_s %>" alt="img">
                                  <% } %>
                                </div>
                                <%=nl_content %>
                            </div>
                        </li>
                        <li>
                            <div class="source">
                                출처 : <%=nl_src %>
                            </div>
                        </li>
                    </ul>

                    <div class="inquiry_btn">
                        <input type="button" value="목록으로" onclick="location='sub3_2.jsp#sub_content'">
                    </div>
                </div>
            </div>
        </div>


        <!-- footer -->
        <%@include file="footer.jsp"%>

    </div>

    <script>
    $(window).scroll(function() {
      if ($(window).scrollTop() >= 500 ) {
        $('#sticky').addClass("fixed");
      }else{
        $('#sticky').removeClass("fixed");
      }
    });
    </script>
</body>

</html>
