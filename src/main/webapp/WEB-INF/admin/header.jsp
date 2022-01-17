<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%

int in_ad_no = 0;
if(session.getAttribute("ad_no") != null){
  in_ad_no = (int)session.getAttribute("ad_no");
}else{
  %>
  <script>
  	alert('세션이 만료되었습니다.\n로그인을 해주시기 바랍니다.');
  	location.href = "admin.jsp"
  </script>
  <%
}%>
<header class="cd-main-header">
<a href="#0" class="cd-logo">
  솔리드 관리자
  <%-- <img src="image/logo.png" alt="Logo"> --%>
</a>



<a href="#0" class="cd-nav-trigger">Menu<span></span></a>

<!--회원정보 수정 S-->
<nav class="cd-nav">
  <ul class="cd-top-nav">
    <li class="has-children account">
      <a href="#0">
        <img src="image/cd-avatar.png" alt="avatar">
          ${sessionScope.ad_name}

      </a>
      <ul>
        <li><a href="adminReset.jsp">비밀번호 변경</a></li>
        <li><a href="logoutProc.jsp">Logout</a></li>
      </ul>
    </li>
  </ul>
</nav>
<!--회원정보 수정 E-->

</header> <!-- .cd-main-header -->

<nav class="cd-side-nav">
  <ul>
    <li class="cd-label">Main</li>

    <li class="has-children overview">
    <a href="notice.jsp">Notice</a>

    <%-- <ul>
      <li><a href="menu01.jsp">신재생에너지</a></li>
      <li><a href="menu02.jsp">IT (Display&반도체)</a></li>
      <li><a href="menu03.jsp">생활용품</a></li>
    </ul> --%>

    </li>

    <li class="has-children overview">
    <a href="newsletter.jsp">Newsletter</a>

    <%-- <ul>
      <li><a href="main_1_d.jsp">추천상품</a></li>
      <li><a href="main_2_d.jsp">제철상품</a></li>
    </ul> --%>

    </li>

    <li class="has-children overview">
    <a href="media.jsp">Media</a>

    <%-- <ul>
      <li><a href="main_1_d.jsp">추천상품</a></li>
      <li><a href="main_2_d.jsp">제철상품</a></li>
    </ul> --%>

    </li>

    <li class="has-children overview">
    <a href="contact.jsp">Contact</a>

    <%-- <ul>
      <li><a href="main_1_d.jsp">추천상품</a></li>
      <li><a href="main_2_d.jsp">제철상품</a></li>
    </ul> --%>

    </li>
  </ul>
</nav>
