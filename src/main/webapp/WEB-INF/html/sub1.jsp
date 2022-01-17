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
                <div class="r_select01 r_select03">
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
                <%-- <div class="r_select01">
                    <div class="select_title">
                        <p>About SOLiNK</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li class="title_on"><a href="sub1.jsp">About SOLiNK</a></li>
                        <li><a href="sub1_1.jsp">EMS</a></li>
                        <li><a href="sub1_2.jsp">NMS</a></li>
                        <li><a href="sub1_3.jsp">SMS</a></li>
                        <li><a href="sub1_4.jsp">IPT/IPCC</a></li>
                    </ul>
                </div> --%>
                <div class="r_select01 r_select02">
                    <div class="select_title">
                        <p id="change_text">EMS</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li><a href="#ems_section" onclick="change_inner_text('EMS')">EMS</a></li>
                        <li><a href="#nms_section" onclick="change_inner_text('NMS')">NMS</a></li>
                        <li><a href="#sms_section" onclick="change_inner_text('SMS')">SMS</a></li>
                        <li><a href="#ipt_section" onclick="change_inner_text('IPT/IPCC')">IPT/IPCC</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- sub content -->
        <div id="sub_content">
            <div class="sub1_content">

                <!-- EMS -->
                <div id="ems_section">
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

                <!-- NMS -->
                <div id="nms_section">
                    <img src="images/sub1_bg.png" alt="img">
                    <div class="s_01">
                        <div class="main_center">
                            <div class="sec_title01">
                                Our <span>Solution</span>
                            </div>
                            <div class="sec_title02">
                                <strong>NMS</strong>
                                <div class="blue_circle"></div>
                            </div>

                            <div class="sec_context">
                                Network Swich, B/B, L4, L3, L2 등 다양한 밴더의 네트워크 장비와 <br>
                                F/W, VPN, UTM 외 각종 보안장비에 대한 구성/성능/장애 모니터링 기능을 제공합니다. <br>
                                SNMP 및 ICMP, API, CLI 등 다양한 프로토콜을 지원하고 토폴로지 및 임계치 기반의 장애 모니터링을 제공합니다. <br>
                                장비 및 회선인터페이스 성능 및 비교분석 정보를 제공하며 위젯 뷰를 통한 주요 현황정보를 모니터링 합니다.
                            </div>
                        </div>
                    </div>

                    <div class="s_02">
                        <div class="main_center">
                            <div class="section_title">
                                <div class="t_img">
                                    <div class="t_img_p">
                                        NMS 특징
                                        <img src="images/comma.png" alt="icon">
                                    </div>
                                </div>
                            </div>

                            <div class="rolling_sec">
                                <ul>
                                    <li>
                                        <img src="images/nms_icon01.png" alt="icon">
                                        <p>초단위 성능 모니터링</p>
                                    </li>
                                    <li>
                                        <img src="images/nms_icon02.png" alt="icon">
                                        <p>수집서버 병렬확장 지원</p>
                                    </li>
                                    <li>
                                        <img src="images/nms_icon03.png" alt="icon">
                                        <p>장애시 서비스 영향 분석</p>
                                    </li>
                                    <li>
                                        <img src="images/nms_icon04.png" alt="icon">
                                        <p>L4세션 분석 및 <br>
                                            컨피그 백업 관리</p>
                                    </li>
                                    <li>
                                        <img src="images/nms_icon05.png" alt="icon">
                                        <p>유연한 이벤트 <br>
                                            정책 설정 관리</p>
                                    </li>
                                    <li>
                                        <img src="images/nms_icon06.png" alt="icon">
                                        <p>신속한 조회 및 <br>
                                            강력한 검색 필터</p>
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
                                        NMS 주요기능
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
                                            <img src="images/nms_icon08.png" alt="img">
                                            <p>장비 구성관리</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            03
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/nms_icon09.png" alt="img">
                                            <p>장비 성능관리</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            04
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/nms_icon10.png" alt="img">
                                            <p>랙실장 관리</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nms_number">
                                            05
                                        </div>
                                        <div class="nms_li">
                                            <img src="images/nms_icon11.png" alt="img">
                                            <p>장애관리</p>
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
                                    <img src="images/nms_img.jpg" alt="img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- SMS -->
                <div id="sms_section">
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
                arrows: true,
                autoplay: true,
                autoplaySpeed: 3000
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
