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

<script>
function change_inner_text(txt){
  // change_text : 바꿀 텍스트
  // (txt) : 가져온 텍스트
    var changethis = document.getElementById("change_text");
    changethis.innerText = txt;
}
</script>

<body>
    <div id="wrap">

        <!-- header -->
        <%@include file="header.jsp"%>


        <!-- sub intro -->
        <div id="sub_intro">
            <img src="images/sub2_intro.jpg" alt="img">

            <div class="sub2_introtext_box">
                <div class="sub2_introtext">
                    <div class="s2_t1" data-aos="fade-up" data-aos-duration="1000">
                        COMPANY
                    </div>
                    <div class="bar3" data-aos="fade-up" data-aos-duration="1500"></div>
                    <div class="s2_t2" data-aos="fade-up" data-aos-duration="2000">
                        신뢰와 비전이 있는 <span>“Solid”</span>한 기업
                    </div>
                    <div class="s2_t3" data-aos="fade-up" data-aos-duration="3000">
                        주식회사 솔리드는 10년 이상의 IT 인프라 통합모니터링 시스템 컨설팅 및 <br>
                        구축 경험을 바탕으로 설립된 IT 매니지먼트 전/문/가/그/룹 입니다.
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
                <div class="r_select01 r_select03">
                    <div class="select_title">
                        <p>Company</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li><a href="sub1.jsp">Solutions</a></li>
                        <li class="title_on"><a href="sub2.jsp">Company</a></li>
                        <li><a href="sub3_1.jsp">PR</a></li>
                        <li><a href="sub4.jsp">Support</a></li>
                    </ul>
                </div>
                <div class="r_select01 r_select02">
                    <div class="select_title">
                        <p id="change_text">About us</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li><a href="#aboutus" onclick="change_inner_text('About us')">About us</a></li>
                        <li><a href="#history" onclick="change_inner_text('연혁 및 인증')">연혁 및 인증</a></li>
                        <li><a href="#business" onclick="change_inner_text('사업분야&파트너')">사업분야&파트너</a></li>
                        <li><a href="#recruit" onclick="change_inner_text('인재채용')">인재채용</a></li>
                        <li><a href="#location" onclick="change_inner_text('Location')">Location</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- sub content -->
        <div id="sub_content">
            <div class="sub1_content">

                <!-- about us -->
                <div id="aboutus">
                    <div class="sub2_title">
                        <img src="images/nms_img02.png" alt="icon">
                        <p>About us</p>
                        <span>오늘도 다양한 분야의 많은 고객사가 솔리드의 솔루션을 현장에서 경험하고 있습니다.</span>
                    </div>

                    <div class="about_us_con">
                        <div class="sub_center01">
                            <ul>
                                <li>
                                    <div class="a_u_text">
                                        IT 운영 고객의 통합 관제 Needs 를 정확히 파악하고 있으며 <br>
                                        변화하는 IT환경에 발 맞추어 다양한 신기술을 검증하고 접목시켜 <br>
                                        고객사의 IT 현장에 유연하게 대응하는 <br>
                                        차세대 EMS 통합관제시스템을 개발하였습니다. <br>
                                        이를 바탕으로 신속성, 효율성, 안정성 중심의 최적의 솔루션을 제공 합니다.
                                    </div>
                                </li>
                                <li>
                                    <div class="a_u_img">
                                        <img src="images/sub2_1_img01.jpg" alt="img">
                                    </div>
                                </li>
                                <li>
                                    <div class="a_u_img">
                                        <img src="images/sub2_1_img02.jpg" alt="img">
                                    </div>
                                </li>
                                <li>
                                    <div class="a_u_text">
                                        좀 더 편리하고 쉽고 직관적인 방법으로 <br>
                                        IT 구성/성능/장애 정보를 통합하고 가시화 하여, <br>
                                        IT 실무담당자가 안정적인 IT서비스 제공에 집중할 수 있도록 하는 것이 <br>
                                        기업의 궁극적 가치이고 목표입니다.
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="about_us_con2">
                        <div class="sub_center01">
                            <p>Core Value</p>

                            <ul>
                                <li>
                                    <img src="images/about_icon01.png" alt="icon">
                                    <p>소통</p>
                                </li>
                                <li>
                                    <img src="images/about_icon02.png" alt="icon">
                                    <p>열정</p>
                                </li>
                                <li>
                                    <img src="images/about_icon03.png" alt="icon">
                                    <p>책임</p>
                                </li>
                                <li>
                                    <img src="images/about_icon04.png" alt="icon">
                                    <p>성실</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- history -->
                <div id="history">
                    <div class="sub2_title">
                        <img src="images/nms_img02.png" alt="icon">
                        <p>연혁 및 인증</p>
                        <span>지나온 발자취와 함께 지속적인 성장으로 변화하는 주식회사 솔리드를 만나보세요.</span>
                    </div>

                    <div class="sub_center02">
                        <div class="history_box">
                            <img src="images/c_shape01.png" alt="icon">

                            <div class="left_history">
                                <div class="year_section">
                                    <p>2022</p>
                                    <img src="images/c_shape02.png" alt="icon">
                                </div>
                            </div>

                            <div class="right_history">
                                <div class="year_section">
                                    <img src="images/c_shape02.png" alt="icon">
                                    <p>2021</p>
                                </div>

                                <div class="history_con" data-aos="fade-up" data-aos-duration="1500">
                                    <div class="h_c">
                                        <div class="month">12</div>
                                        <p>전국은행연합회 SOLINK-NMS 납품</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">12</div>
                                        <p>카카오뱅크 SOLINK-SMS 납품</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">11</div>
                                        <p>동국제강 4개 공장 SOLINK-NMS 납품</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">11</div>
                                        <p>하나금융투자 SOLINK-EMS 납품</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">10</div>
                                        <p>ETRI 한국전자통신연구원 SOLINK-NMS 납품</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">10</div>
                                        <p>2021년 기술평가 우수기업 인증 (발급기관 : 나이스평가정보(주))</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">08</div>
                                        <p>소프트웨어사업자 등록 (발급기관 : 한국소프트웨어산업협회장)</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">06</div>
                                        <p>SOLINK-EMS 통합관제시스템 출시</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">04</div>
                                        <p>Micro Focus GOLD PARTNER 인증</p>
                                    </div>
                                    <div class="h_c">
                                        <div class="month">01</div>
                                        <p>기업부설연구소 인정 (발급기관 : 한국산업기술진흥협회)</p>
                                    </div>
                                </div>
                            </div>

                            <div class="left_history">
                                <div class="year_section">
                                    <p>2020</p>
                                    <img src="images/c_shape02.png" alt="icon">
                                </div>

                                <div class="history_con" data-aos="fade-up" data-aos-duration="1500">
                                    <div class="h_c">
                                        <p>
                                            사옥이전 <br>
                                            (본사 소재지 : 경기 부천시 양지로205 서영아너시티2차 1012~1014호)
                                        </p>
                                        <div class="month">12</div>
                                    </div>
                                    <div class="h_c">
                                        <p>벤처기업인증 (발급기관 : 기술보증기금)</p>
                                        <div class="month">09</div>
                                    </div>
                                    <div class="h_c">
                                        <p>Micro Focus 공인 파트너 등록</p>
                                        <div class="month">08</div>
                                    </div>
                                    <div class="h_c">
                                        <p>사옥이전 (본사 소재지 : 서울 금천구 가산동 삼성해링턴타워 907호)</p>
                                        <div class="month">02</div>
                                    </div>
                                </div>
                            </div>

                            <div class="right_history">
                                <div class="year_section">
                                    <img src="images/c_shape02.png" alt="icon">
                                    <p>2019</p>
                                </div>

                                <div class="history_con" data-aos="fade-up" data-aos-duration="1500">
                                    <div class="h_c">
                                        <div class="month">12</div>
                                        <p>(주)솔리드 법인설립 (본사소재지 : 서울 금천구 가산동 IT캐슬2차 11층)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- business -->
                <div id="business">
                    <div class="sub2_title">
                        <img src="images/nms_img02.png" alt="icon">
                        <p>사업분야 & 파트너</p>
                        <span>(주)솔리드는 다년간의 IT 매니지먼트 경험과 파트너사 협업 시너지를 통해 빠르게 성장해 나아가고 있습니다.</span>
                    </div>

                    <div class="business_box">
                        <div class="sub_center01">
                            <div class="b_b01">
                                <div class="section_title">
                                    <div class="t_img">
                                        <div class="t_img_p">
                                            사업영역
                                            <img src="images/comma.png" alt="icon">
                                        </div>
                                    </div>
                                </div>

                                <ul>
                                    <li>
                                        <div class="business_icon">
                                            <img src="images/business_icon01.png" alt="icon">
                                        </div>
                                        <img src="images/business_icon05.png" alt="icon">

                                        <div class="business_t">
                                            <p>IT Infra Monitoring</p>

                                            <div class="b_t">
                                                <div class="blue_circle"></div>
                                                <p>Solink S/W 개발 및 공급</p>
                                            </div>
                                            <div class="b_t">
                                                <div class="blue_circle"></div>
                                                <p>구축 및 유지보수</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="business_icon">
                                            <img src="images/business_icon02.png" alt="icon">
                                        </div>
                                        <img src="images/business_icon05.png" alt="icon">

                                        <div class="business_t">
                                            <p>IPT/IPCC Monitoring</p>

                                            <div class="b_t">
                                                <div class="blue_circle"></div>
                                                <p>
                                                  콜인프라 통합 모니터링 시스템<br>
                                                  개발 및 공급
                                                </p>
                                            </div>
                                            <div class="b_t">
                                                <div class="blue_circle"></div>
                                                <p>
                                                    국내 유일의 콜센터 전용 모니터링 툴
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="business_icon">
                                            <img src="images/business_icon03.png" alt="icon">
                                        </div>
                                        <img src="images/business_icon05.png" alt="icon">

                                        <div class="business_t">
                                            <p>IT Consulting</p>

                                            <div class="b_t">
                                                <div class="blue_circle"></div>
                                                <p>통합관제 환경 분석</p>
                                            </div>
                                            <div class="b_t">
                                                <div class="blue_circle"></div>
                                                <p>통합관제 시스템 적용 설계</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="business_icon">
                                            <img src="images/business_icon04.png" alt="icon">
                                        </div>
                                        <img src="images/business_icon05.png" alt="icon">

                                        <div class="business_t">
                                            <p>3<sup>rd</sup> party solution</p>
                                            <div class="b_t">
                                                <div class="blue_circle"></div>
                                                <p>
                                                    IT Automation, ITSM, ITAM, <br>
                                                    APM, DPM, WPM, AI 위협탐지<br>
                                                    솔루션 공급 및 구축, 기술지원
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="b_b02">
                                <div class="section_title">
                                    <div class="t_img">
                                        <div class="t_img_p">
                                            파트너
                                            <img src="images/comma.png" alt="icon">
                                        </div>
                                    </div>
                                </div>

                                <ul>
                                    <li>
                                        <img src="images/partner_img01.jpg" alt="logo">

                                        <div class="partner_text">
                                            IPT/IPCC 전문회사 <br>
                                            콜센터 모니터링 시스템 총판
                                        </div>
                                    </li>
                                    <li>
                                        <img src="images/partner_img02.jpg" alt="logo">

                                        <div class="partner_text">
                                            Max-us 웹성능모니터링 <br>
                                            시스템 제조 및 공급
                                        </div>
                                    </li>
                                    <li>
                                        <img src="images/partner_img03.jpg" alt="logo">

                                        <div class="partner_text">
                                            ITSM, ITAM, <br>
                                            IT Automation
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- recruit -->
                <div id="recruit">
                    <div class="sub2_title">
                        <img src="images/nms_img02.png" alt="icon">
                        <p>인재 채용</p>
                        <div class="bar4"></div>
                        <div class="recruit_t">
                            모든 <span>발전과 혁신의 출발</span>은 <br>
                            <span>기본에 충실</span>하는 것에서부터 시작됩니다.
                        </div>
                        <span>10년 이상의 IT 인프라 통합모니터링 시스템 컨설팅 및 구축 경험을 바탕으로 설립된 IT 매니지먼트 전/문/가/그/룹 입니다. <br>
                            주식회사 솔리드와 함께 꿈을 실현할 우수한 인재를 찾고 있습니다. </span>
                    </div>

                    <div class="recruit_btn">
                        <a href="https://www.jobkorea.co.kr/company/45514645/Recruit" target="_blank">채용공고 바로가기</a>
                    </div>

                    <div class="recruit_box">
                        <div class="sub_center01">
                            <div class="recruit_title">
                                <div class="bar5"></div>
                                <p>인재상</p>
                            </div>

                            <ul>
                                <li>
                                    <img src="images/nms_img02.png" alt="icon">
                                    <p>소통</p>
                                    <span>
                                        주위 환경과 소통, <br>
                                        화합하고자 하는 자세를 가진 인재
                                    </span>
                                </li>
                                <li>
                                    <img src="images/nms_img02.png" alt="icon">
                                    <p>열정</p>
                                    <span>
                                        꿈을 실현하기 위해 <br>
                                        열정을 가지고 일에 몰두하는 인재
                                    </span>
                                </li>
                                <li>
                                    <img src="images/nms_img02.png" alt="icon">
                                    <p>책임</p>
                                    <span>
                                        업무의 시작부터 끝까지 맡은바 <br>
                                        직무를 책임있게 수행하는 인재
                                    </span>
                                </li>
                                <li>
                                    <img src="images/nms_img02.png" alt="icon">
                                    <p>성실</p>
                                    <span>
                                        끊임없이 한 발 한 발 <br>
                                        꾸준히 나아가며 도전하는 인재
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- location -->
                <div id="location" class="p_b">
                    <div class="sub2_title">
                        <img src="images/nms_img02.png" alt="icon">
                        <p>Location</p>
                    </div>

                    <div class="location_box">
                        <div class="sub_center01">
                            <div class="map_box">
                                <div id="daumRoughmapContainer1641197887165"
                                    class="root_daum_roughmap root_daum_roughmap_landing"></div>

                                <script charset="UTF-8" class="daum_roughmap_loader_script"
                                    src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                                <script charset="UTF-8">
                                    new daum.roughmap.Lander({
                                        "timestamp": "1641197887165",
                                        "key": "28o4s",
                                        "mapWidth": "640",
                                        "mapHeight": "360"
                                    }).render();
                                </script>
                            </div>

                            <div class="logo_address">
                                <div class="logo_sec">
                                    <img src="images/location_logo.png" alt="logo">
                                </div>
                                <div class="address_sec">
                                    <div class="a_s">
                                        <div class="a_s_t">
                                            주소
                                        </div>
                                        <div class="a_s_c">
                                            경기 부천시 양지로 205 서영아너시티2차 10층 1012~1014호
                                        </div>
                                    </div>
                                    <div class="a_s">
                                        <div class="a_s_t">
                                            TEL
                                        </div>
                                        <div class="a_s_c">
                                            070-8277-4971
                                        </div>
                                    </div>
                                    <div class="a_s">
                                        <div class="a_s_t">
                                            FAX
                                        </div>
                                        <div class="a_s_c">
                                            070-8277-0703
                                        </div>
                                    </div>
                                    <div class="a_s">
                                        <div class="a_s_t">
                                            버스이용시
                                        </div>
                                        <div class="a_s_c">
                                            <div class="normal">일반</div>
                                            2, 66, 10, 56-2
                                        </div>
                                    </div>
                                    <div class="a_s">
                                        <div class="a_s_t">
                                            지하철이용시
                                        </div>
                                        <div class="a_s_c">
                                            <div class="line line_b">1</div> 역곡역 하차 후 마을버스 이용
                                        </div>
                                    </div>
                                    <div class="a_s">
                                        <div class="a_s_t">
                                            &nbsp;
                                        </div>
                                        <div class="a_s_c">
                                            <div class="line line_b">1</div> 오류역, <div class="line line_c">7</div> 천왕역 하차 후 버스 이용
                                        </div>
                                    </div>
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
