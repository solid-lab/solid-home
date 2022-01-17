<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" rel="stylesheet">

    <script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/common.js"></script>
</head>

<body>
    <div id="wrap">

        <!-- header -->
        <%@include file="header.jsp"%>


        <!-- sub intro -->
        <div id="sub_intro">
            <img src="images/sub1_intro.jpg" alt="img">

            <div class="sub1_introtext_box">
                <div class="sub1_introtext">
                    <div class="s1_t1" data-aos="fade-up" data-aos-duration="1500">
                        Sole + Link = <span> S·O·L·i·N·K</span>
                    </div>

                    <div class="s1_t2" data-aos="fade-up" data-aos-duration="2000">
                        <span>Solink는 모든 IT인프라를 하나로 통합관리 합니다.</span>
                        솔리드는 고객중심의 차세대 통합관제시스템을 지향합니다
                    </div>

                    <div class="s1_t3" data-aos="fade-up" data-aos-duration="3000">
                        <ul>
                            <li>
                                <img src="images/sub1_intro_shape01.png" alt="img">
                            </li>
                            <li>
                                <img src="images/sub1_intro_shape02.png" alt="img">
                            </li>
                            <li>
                                <img src="images/sub1_intro_shape03.png" alt="img">
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="scroll">
                    <p>SCROLL</p>
                    <div class="bar"></div>
                </div>
            </div>
        </div>


        <!-- sub route -->
        <div class="route" id="sticky">
            <div class="main_center">
                <div class="home" onclick="location='index.jsp'">
                    <i class="xi-home"></i>
                </div>
                <div class="r_select01">
                    <div class="select_title">
                        <p>Solutions</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li class="title_on"><a href="sub1.jsp">Solutions</a></li>
                        <li><a href="sub2.jsp">Company</a></li>
                        <li><a href="sub3_1.jsp">PR</a></li>
                        <li><a href="sub4.jsp">Support</a></li>
                    </ul>
                </div>
                <div class="r_select01">
                    <div class="select_title">
                        <p>SMS</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li><a href="sub1.jsp">About SOLiNK</a></li>
                        <li><a href="sub1_1.jsp">EMS</a></li>
                        <li><a href="sub1_2.jsp">NMS</a></li>
                        <li class="title_on"><a href="sub1_3.jsp">SMS</a></li>
                        <li><a href="sub1_4.jsp">IPT/IPCC</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- sub content -->
        <div id="sub_content">
            <div class="sub1_content">
                <!-- SMS -->
                <div id="sms_section" class="p_b">
                    <img src="images/sub1_bg.png" alt="img">
                    <div class="s_01">
                        <div class="main_center">
                            <div class="sec_title01">
                                Our <span>Solution</span>
                            </div>
                            <div class="sec_title02">
                                <strong>SMS</strong>
                                <div class="blue_circle"></div>
                            </div>

                            <div class="sec_context">
                                Windows, Linux, UNIX OS의 Agent 및 Agentless 방식을 모두 지원하며 <br>
                                서버 CPU, Memory, Disk, Interface, Process 에 대한 구성/성능/장애 모니터링 기능을 제공합니다. <br>
                                서버 위젯 뷰를 통한 주요정보의 시각화 기능을 제공하며 <br>
                                서버 성능 및 감시프로세스 등 관리대상 서버의 운영상황을 안정적으로 모니터링 합니다.
                            </div>
                        </div>
                    </div>

                    <div class="s_02">
                        <div class="main_center">
                            <div class="section_title">
                                <div class="t_img">
                                    <div class="t_img_p">
                                        SMS 특징
                                        <img src="images/comma.png" alt="icon">
                                    </div>
                                </div>
                            </div>

                            <div class="rolling_sec">
                                <ul>
                                    <li>
                                        <img src="images/sms_icon01.png" alt="icon">
                                        <p>다양한 OS 대응</p>
                                    </li>
                                    <li>
                                        <img src="images/sms_icon02.png" alt="icon">
                                        <p>Agent & Agentless 지원</p>
                                    </li>
                                    <li>
                                        <img src="images/sms_icon03.png" alt="icon">
                                        <p>서버 프로세스 모니터링</p>
                                    </li>
                                    <li>
                                        <img src="images/sms_icon04.png" alt="icon">
                                        <p>다양한 형태의 서버로그 감시</p>
                                    </li>
                                    <li>
                                        <img src="images/sms_icon05.png" alt="icon">
                                        <p>유연한 감시 정책 설정</p>
                                    </li>
                                    <li>
                                        <img src="images/sms_icon06.png" alt="icon">
                                        <p>VM 기반 서버 모니터링</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="s_03">
                        <div class="main_center">
                            <div class="section_title">
                                <div class="t_img">
                                    <div class="t_img_p">
                                        SMS 주요기능
                                        <img src="images/comma.png" alt="icon">
                                    </div>
                                </div>
                            </div>

                            <div class="nms_box">
                                <ul>
                                    <li>
                                        <div class="nms_number">
                                            01
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/nms_icon07.png" alt="img">
                                            <p>위젯뷰</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            02
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/sms_icon07.png" alt="img">
                                            <p>서버 구성관리</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            03
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/nms_icon09.png" alt="img">
                                            <p>서버 성능관리</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            04
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/sms_icon08.png" alt="img">
                                            <p>프로세스 관리</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            05
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/sms_icon09.png" alt="img">
                                            <p>장애 및 서버로그</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            06
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/nms_icon12.png" alt="img">
                                            <p>보고서</p>
                                        </div>
                                    </li>
                                </ul>

                                <div class="nms_img">
                                    <img src="images/sms_img.jpg" alt="img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- footer -->
        <%@include file="footer.jsp"%>

    </div>


    <!-- sub1 slide -->
    <script>
        $(document).ready(function () {
            $('.rolling_sec ul').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                dots: false,
                arrows: true
            });
        });
    </script>

    <!-- aos -->
    <script>
        AOS.init();
    </script>

    <script>
    $(window).scroll(function() {
      if ($(window).scrollTop() >= 800 ) {
        $('#sticky').addClass("fixed");
      }else{
        $('#sticky').removeClass("fixed");
      }
    });
    </script>
</body>

</html>
