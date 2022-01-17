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
                        <p>EMS</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li><a href="sub1.jsp">About SOLiNK</a></li>
                        <li class="title_on"><a href="sub1_1.jsp">EMS</a></li>
                        <li><a href="sub1_2.jsp">NMS</a></li>
                        <li><a href="sub1_3.jsp">SMS</a></li>
                        <li><a href="sub1_4.jsp">IPT/IPCC</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- sub content -->
        <div id="sub_content">
            <div class="sub1_content">
                <!-- EMS -->
                <div id="ems_section" class="p_b">
                    <img src="images/sub1_bg.png" alt="img">
                    <div class="s_01">
                        <div class="main_center">
                            <div class="sec_title01">
                                Our <span>Solution</span>
                            </div>
                            <div class="sec_title02">
                                <strong>EMS</strong>
                                <div class="blue_circle"></div>
                            </div>

                            <div class="sec_context">
                                IT Infra 내 서버, 네트워크, 보안, 전산설비 등 다양한 이기종 장비의 통합 모니터링 환경을 제공합니다. <br>
                                Solink-EMS 는 모니터링 통합 프레임워크 기반으로 <br>
                                모든 IT 인프라의 통합 장애 이벤트 관리 및 체계적이고 일원화된 장애대응 프로세스를 제공합니다. <br>
                                또한, 수집된 구성/성능/장애 데이터의 비교 분석 및 보고서를 제공하고 <br>
                                일, 주, 월, 년 성능 통계 및 추이 데이터를 제공하여 향 후 IT 인프라의 확장을 위한 객관적 지표를 제시합니다.
                            </div>
                        </div>
                    </div>

                    <div class="s_02">
                        <div class="main_center">
                            <div class="section_title">
                                <div class="t_img">
                                    <div class="t_img_p">
                                        EMS 특장점
                                        <img src="images/comma.png" alt="icon">
                                    </div>
                                </div>
                            </div>

                            <div class="rolling_sec">
                                <ul>
                                    <li>
                                        <img src="images/ems_icon01.png" alt="icon">
                                        <p>최적의 DB 구성</p>
                                        <span>시계열 데이터 분석</span>
                                    </li>
                                    <li>
                                        <img src="images/ems_icon02.png" alt="icon">
                                        <p>이벤트 통합</p>
                                        <span>장애 연관관계 분석</span>
                                    </li>
                                    <li>
                                        <img src="images/ems_icon03.png" alt="icon">
                                        <p>반응형Web 매니저 적용</p>
                                        <span>HTML5</span>
                                    </li>
                                    <li>
                                        <img src="images/ems_icon04.png" alt="icon">
                                        <p>통합관제 대시보드</p>
                                        <span>사용자별 위젯뷰, 관제 대시보드</span>
                                    </li>
                                    <li>
                                        <img src="images/ems_icon05.png" alt="icon">
                                        <p>통합 보고서</p>
                                        <span>기간/성능/장애 보고서</span>
                                    </li>
                                    <li>
                                        <img src="images/ems_icon06.png" alt="icon">
                                        <p>마이크로서비스 기반</p>
                                        <span>Frontend – Backend 구조</span>
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
                                        기대효과
                                        <img src="images/comma.png" alt="icon">
                                    </div>
                                </div>
                            </div>

                            <ul>
                                <li>
                                    <div class="icon_box">
                                        <img src="images/ems_icon07.png" alt="icon">

                                        <p>장애감시</p>
                                    </div>

                                    IT 통합관제 및 안정적 시스템 운영
                                </li>
                                <img src="images/sub1_arrow.png" alt="icon">
                                <li>
                                    <div class="icon_box">
                                        <img src="images/ems_icon08.png" alt="icon">

                                        <p>상황전파</p>
                                    </div>

                                    신속한 장애인지 및 전파
                                </li>
                                <img src="images/sub1_arrow.png" alt="icon">
                                <li>
                                    <div class="icon_box">
                                        <img src="images/ems_icon09.png" alt="icon">

                                        <p>대응/조치</p>
                                    </div>

                                    정확한 장애 대응/조치
                                </li>
                                <img src="images/sub1_arrow.png" alt="icon">
                                <li>
                                    <div class="icon_box">
                                        <img src="images/ems_icon10.png" alt="icon">

                                        <p>모니터링</p>
                                    </div>

                                    장애 원인 분석
                                </li>
                                <img src="images/sub1_arrow.png" alt="icon">
                                <li>
                                    <div class="icon_box">
                                        <img src="images/ems_icon11.png" alt="icon">

                                        <p>장애 보고</p>
                                    </div>

                                    ONE STOP 장애보고 체계
                                </li>
                            </ul>

                            <div class="ems_box">
                                <ul>
                                    <li>
                                        <div class="li_title">
                                            <div class="circle_icon">
                                                <img src="images/ems_icon12.png" alt="icon">
                                            </div>

                                            <p>IT 관리업무의 <span>편의성 향상</span></p>
                                        </div>

                                        <div class="li_con">
                                            <img src="images/ems_img.png" alt="img">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="li_title">
                                            <div class="circle_icon">
                                                <img src="images/ems_icon13.png" alt="icon">
                                            </div>

                                            <p>인프라 운영 <span>효율성 증가</span></p>
                                        </div>

                                        <div class="li_con">
                                            <div class="l_t">
                                                <div class="circle2"></div>
                                                <p>쾌적한 관제환경 제공</p>
                                            </div>
                                            <div class="l_t">
                                                <div class="circle2"></div>
                                                <p>관제의 신뢰성 증대</p>
                                            </div>
                                            <div class="l_t">
                                                <div class="circle2"></div>
                                                <p>안전성 향상</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="li_title">
                                            <div class="circle_icon">
                                                <img src="images/ems_icon14.png" alt="icon">
                                            </div>

                                            <p>장애관리의 <span>신속성 확보</span></p>
                                        </div>

                                        <div class="li_con">
                                            <div class="l_t">
                                                <div class="circle2"></div>
                                                <p>초단위 장애관제</p>
                                            </div>
                                            <div class="l_t">
                                                <div class="circle2"></div>
                                                <p>신속정확한 장애원인파악</p>
                                            </div>
                                            <div class="l_t">
                                                <div class="circle2"></div>
                                                <p>입체적인 장애분석</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
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
