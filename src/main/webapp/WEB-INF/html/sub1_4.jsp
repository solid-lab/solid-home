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
                        <p>IPT/IPCC</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li><a href="sub1.jsp">About SOLiNK</a></li>
                        <li><a href="sub1_1.jsp">EMS</a></li>
                        <li><a href="sub1_2.jsp">NMS</a></li>
                        <li><a href="sub1_3.jsp">SMS</a></li>
                        <li class="title_on"><a href="sub1_4.jsp">IPT/IPCC</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- sub content -->
        <div id="sub_content">
            <div class="sub1_content">
                <!-- IPT/IPCC -->
                <div id="ipt_section" class="p_b">
                    <img src="images/sub1_bg.png" alt="img">
                    <div class="s_01">
                        <div class="main_center">
                            <div class="sec_title01">
                                Our <span>Solution</span>
                            </div>
                            <div class="sec_title02">
                                <strong>IPT/IPCC</strong>
                                <div class="blue_circle"></div>
                            </div>

                            <div class="sec_context">
                                CISCO, Avaya 밴더에 대응한 IPT/IPCC 통합모니터링을 제공하며 <br>
                                PBX, Voice/Media Gataway, IVR, CTI, 녹취서버 등 IPT/IPCC 를 구성하는 <br>
                                다양한 서버군 및 서드파티 장비에 대한 서비스 관점 통합 모니터링 기능을 제공합니다. <br>
                                관리대상 장비의 라이선스 현황 점유 현황을 분석하여 가용성을 확보하며, 콜 통계시스템 연동을 통한 <br>
                                IPT/IPCC 망에 대한 강력한 단일시스템 모니터링 체계를 구성합니다.
                            </div>
                        </div>
                    </div>

                    <div class="s_02">
                        <div class="main_center">
                            <div class="section_title">
                                <div class="t_img">
                                    <div class="t_img_p">
                                        IPT/IPCC 특징
                                        <img src="images/comma.png" alt="icon">
                                    </div>
                                </div>
                            </div>

                            <div class="rolling_sec">
                                <ul>
                                    <li>
                                        <img src="images/ipt_icon01.png" alt="icon">
                                        <p>콜플로우 통합 분석 <br>
                                            E1 상태 모니터링</p>
                                    </li>
                                    <li>
                                        <img src="images/ipt_icon02.png" alt="icon">
                                        <p>라이선스, 채널 점유 분석</p>
                                    </li>
                                    <li>
                                        <img src="images/ipt_icon03.png" alt="icon">
                                        <p>콜통계 시스템 연동</p>
                                    </li>
                                    <li>
                                        <img src="images/ipt_icon04.png" alt="icon">
                                        <p>IVR, CTI, 녹취 등 <br>
                                            3rd party 서버 대응</p>
                                    </li>
                                    <li>
                                        <img src="images/ipt_icon05.png" alt="icon">
                                        <p>수집정보의 신속한 <br>
                                            이벤트 감지 설정 관리</p>
                                    </li>
                                    <li>
                                        <img src="images/ipt_icon06.png" alt="icon">
                                        <p>IPT 전화기 라이선스 및 <br>
                                            동작 상태 모니터링</p>
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
                                        IPT/IPCC 주요기능
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
                                            <img src="images/ipt_icon07.png" alt="img">
                                            <p>콜플로우 대시보드</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            02
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/ipt_icon08.png" alt="img">
                                            <p>PBX, IP Phone 모니터링</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            03
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/ipt_icon09.png" alt="img">
                                            <p>게이트웨이 모니터링</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            04
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/ipt_icon10.png" alt="img">
                                            <p>IVR, CTI, 녹취누락 모니터링 </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            05
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/ipt_icon11.png" alt="img">
                                            <p>3rd party 서버 모니터링</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            06
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/ipt_icon12.png" alt="img">
                                            <p>수집정보 이벤트 알람 관리</p>
                                        </div>
                                    </li>
                                </ul>

                                <div class="nms_img">
                                    <img src="images/ipt_img.jpg" alt="img">
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
