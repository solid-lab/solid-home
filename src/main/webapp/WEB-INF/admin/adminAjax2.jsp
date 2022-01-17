<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String id = request.getParameter("id");
%>
<div class="remove">
  <div class="loginText">
    <i class="xi-angle-left" onclick="Start()"></i>
    <input type="text" value="<%=id%>" name="ad_id" id="user_id" style="outline:none" readonly>
  </div>
  <input type="password" class="login_input" id="ad_pw" name="ad_pw" onkeydown="EnterFilter2();" placeholder="비밀번호를 입력해주세요.">
    <button type="button" onclick="goAjaxPw()" class="goAjaxPw">
      <i class="xi-arrow-right"></i>
    </button>
</div>
