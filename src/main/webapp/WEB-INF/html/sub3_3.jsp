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
ResultSet rs3 = null;
Statement stmt = con.createStatement();
String SQL = null;
String SQL2 = null;
String SQL3 = null;

final int rowSize = 12;/* 한 페이지에 출력될 게시물 수 */
final int block = 5;/* 한 화면에 출력될 페이지 개수 */

int pg = 1;/* 현재 페이지 넘버 초기화 */

String keyword = "";
if(request.getParameter("keyword")!=null){
	keyword=request.getParameter("keyword");
}

String sel = "";
if(request.getParameter("sel")!=null) {
	sel = request.getParameter("sel");
}

/* 현재 페이지 넘버가 파라미터에 있으면 변, 없으면 1 */
if(request.getParameter("pg")!=null){
  pg=Integer.parseInt(request.getParameter("pg"));
}
if(request.getParameter("pg")==null)
pg=1;

/* 가져올 게시물 범위 설정, pg=1이면 번호 0부터 가져옴 */
int start = ((pg-1) * rowSize);/**/

if(start==1){
start=0;
}

int total=0;
int allPage = 0;

int startPage = ((pg-1)/block*block)+1;/* 화면에 보이는 페이지 개수중 첫번째 */
int endPage = ((pg-1)/block*block)+block;/* 화면에 보이는 페이지 개수중 마지막 */

try{

		if(keyword.equals("")){
			SQL = "select * from media where m_delete = 0 order by m_no desc limit "+start+", " + rowSize;/**/
			SQL2 = "select count(*) cnt from media where m_delete = 0";
		}else{
				SQL = "select * from media where m_delete = 0 and m_title like '%"+keyword+"%' order by m_no desc limit "+start+", " + rowSize;/**/
				SQL2 = "select count(*) cnt from media where m_delete = 0 and m_title like '%"+keyword+"%'";
    }

	PreparedStatement pstmt = con.prepareStatement(SQL);
	PreparedStatement pstmt2 = con.prepareStatement(SQL2);
	rs = pstmt.executeQuery();
	rs2=	pstmt2.executeQuery();

  if(rs2.next()){
    total = rs2.getInt(1);
  }

	/* 나머지 처리를 해서 전체 페이지 개수 구함 */
  allPage = (int)Math.ceil(total/(double)rowSize);

  if(endPage > allPage) {
    endPage = allPage;
  }

}catch(Exception e){
  out.print(e);
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
                        <p>Media</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
											<li onclick="location='sub3_1.jsp#sub_content'">Notice</li>
											<li onclick="location='sub3_2.jsp#sub_content'">Newsletter</li>
											<li class="title_on" onclick="location='sub3_3.jsp#sub_content'">Media</li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- sub content -->
        <div id="sub_content">
            <div class="notice_box">
                <div class="sub2_title">
                    <img src="images/nms_img02.png" alt="icon">
                    <p>Media</p>
                </div>

								<script>
                  $(function(){
                    $('#search_btn').click(function(){
                      console.log("??");
                      $('#frm_search').submit();
                    })
                  })
                </script>

                <div class="sub_center02">
                    <div class="notice_input">
                        <p>총 게시물 <span><%=total%></span>개</p>
												<form action="sub3_3.jsp" method="get" name="frm_search" id="frm_search">
                        <div class="input_box">
													<!--
													내용이 없어서 뺐음
                            <div class="select_box">
                                <i class="xi-angle-down"></i>
                                <select>
                                    <option value="">전체</option>
                                    <option value="">제목</option>
                                    <option value="">내용</option>
                                </select>
                            </div>
													-->
													<input type="text" name="keyword" id="keyword" placeholder="검색어를 입력하세요.">
													<input type="button" id="search_btn" value="검색">
                        </div>
                    </div>

                    <ul class="media_list">

											<% if(total == 0) { %>
											<table>
											<tr><td><p>글이 없습니다.</p></td></tr>
										  </table>
											<% } %>

											<%
											 int count = total - ((pg - 1) * rowSize);

											 while(rs.next()) {
												 int m_no = rs.getInt("m_no");
												 String m_title = rs.getString("m_title");
												 String m_thum_o = rs.getString("m_thum_o");
												 String m_thum_s = rs.getString("m_thum_s");
												 String m_url = rs.getString("m_url");
												 String m_add_dt = rs.getString("m_add_dt").substring(0, 11);

											%>


                        <li onclick="location='sub3_3_d.jsp?m_no=<%=m_no %>#sub_content'">
                            <div class="media_thumb">
															<!-- 썸네일이 없으면 기본 이미지 출력, 있으면 저장된 이미지 출력-->
															<% if(m_thum_o.trim().isEmpty()) { %>
																<img src="images/news_thumb.jpg" alt="img">
															<% }else{ %>
																<img src="../upload/<%=m_thum_s %>" alt="img">
															<% } %>
                            </div>
                            <div class="media_content">
                                <p><%=m_title %></p>
                                <div class="upload"><%=m_add_dt %></div>
                            </div>
                        </li>

												<% count--; } %>

                    </ul>

                    <div class="page_btn">
											<% if(pg>block){ %>
											<a href="sub3_3.jsp?pg=<%=startPage-1%>&&keyword=<%=keyword%>"><</a></li>
											<%
											} for(int i=startPage; i<= endPage; i++){
														if(i==pg){
											%>
											<a class="num"><%=i%></a>
											<% }else{ %>
											<a href="sub3_3.jsp?pg=<%=i%>&&keyword=<%=keyword%>"><%=i%></a></li>
											<% }
											}
											if(endPage<allPage){
											%>
											<a href="sub3_3.jsp?pg=<%=endPage+1%>&&keyword=<%=keyword%>">></a></li>
											<%
											}
											%>
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
