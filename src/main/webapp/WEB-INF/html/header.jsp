<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header id="header">
    <div class="h_01">
        <div class="main_center">
            <a href="index.jsp">
                <img src="images/logo.png" alt="iogo">
            </a>

            <ul class="mainmenu">
                <li>
                    <p onclick="location='sub1.jsp'">Solutions</p>
                    <div class="menu_bar"></div>
                </li>
                <li>
                    <p onclick="location='sub2.jsp'">Company</p>
                    <div class="menu_bar"></div>
                </li>
                <li>
                    <p onclick="location='sub3_1.jsp'">PR</p>
                    <div class="menu_bar"></div>
                </li>
                <li>
                    <p onclick="location='sub4.jsp'">Support</p>
                    <div class="menu_bar"></div>
                </li>
            </ul>
        </div>
    </div>

    <div class="h_02">
        <div class="main_center">
            <nav id="lnb">
                <ul class="submenu">
                  <li><a href="sub1.jsp#ems_section" onclick="change_inner_text('EMS')">EMS</a></li>
                  <li><a href="sub1.jsp#nms_section" onclick="change_inner_text('NMS')">NMS</a></li>
                  <li><a href="sub1.jsp#sms_section" onclick="change_inner_text('SMS')">SMS</a></li>
                  <li><a href="sub1.jsp#ipt_section" onclick="change_inner_text('IPT/IPCC')">IPT/IPCC</a></li>
                </ul>
                <ul class="submenu">
                  <li><a href="sub2.jsp#aboutus" onclick="change_inner_text('About us')">About us</a></li>
                  <li><a href="sub2.jsp#history" onclick="change_inner_text('연혁 및 인증')">연혁 및 인증</a></li>
                  <li><a href="sub2.jsp#business" onclick="change_inner_text('사업분야&파트너')">사업분야&파트너</a></li>
                  <li><a href="sub2.jsp#recruit" onclick="change_inner_text('인재채용')">인재채용</a></li>
                  <li><a href="sub2.jsp#location" onclick="change_inner_text('Location')">Location</a></li>
                </ul>
                <ul class="submenu">
                    <li onclick="location='sub3_1.jsp#sub_content'">Notice</li>
                    <li onclick="location='sub3_2.jsp#sub_content'">Newsletter</li>
                    <li onclick="location='sub3_3.jsp#sub_content'">Media</li>
                </ul>
                <ul class="submenu">
                    <li onclick="location='sub4.jsp'">Contact</li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<div id="m_header">
    <div class="m_h01">
        <div class="sub_center02">
            <a href="index.jsp">
                <img src="images/logo.png" alt="logo">
            </a>

            <i class="xi-bars"></i>
        </div>
    </div>

    <div class="m_h02">
        <ul class="m_main">
            <li>
                <a href="#">Solutions</a>

                <ul class="m_sub">
                    <li onclick="location='sub1.jsp'">About SOLiNK</li>
                    <li><a href="sub1.jsp#ems_section" onclick="change_inner_text('EMS')">EMS</a></li>
                    <li><a href="sub1.jsp#nms_section" onclick="change_inner_text('NMS')">NMS</a></li>
                    <li><a href="sub1.jsp#sms_section" onclick="change_inner_text('SMS')">SMS</a></li>
                    <li><a href="sub1.jsp#ipt_section" onclick="change_inner_text('IPT/IPCC')">IPT/IPCC</a></li>
                </ul>
            </li>
            <li>
                <a href="#">Company</a>

                <ul class="m_sub">
                  <li><a href="sub2.jsp#aboutus" onclick="change_inner_text('About us')">About us</a></li>
                  <li><a href="sub2.jsp#history" onclick="change_inner_text('연혁 및 인증')">연혁 및 인증</a></li>
                  <li><a href="sub2.jsp#business" onclick="change_inner_text('사업분야&파트너')">사업분야&파트너</a></li>
                  <li><a href="sub2.jsp#recruit" onclick="change_inner_text('인재채용')">인재채용</a></li>
                  <li><a href="sub2.jsp#location" onclick="change_inner_text('Location')">Location</a></li>
                </ul>
            </li>
            <li>
                <a href="#">PR</a>

                <ul class="m_sub">
                    <li onclick="location='sub3_1.jsp'">Notice</li>
                    <li onclick="location='sub3_2.jsp'">Newsletter</li>
                    <li onclick="location='sub3_3.jsp'">Media</li>
                </ul>
            </li>
            <li>
                <a href="#">Support</a>

                <ul class="m_sub">
                    <li onclick="location='sub4.jsp'">Contact</li>
                </ul>
            </li>
        </ul>
    </div>
</div>
