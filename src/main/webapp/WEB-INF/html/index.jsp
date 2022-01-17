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
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <link rel="stylesheet" type="text/css" href="css/slick-theme.css">

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/common.js"></script>
    <script src="js/particles.js"></script>
</head>

<body>
    <div id="wrap">

        <!-- header -->
        <%@include file="header.jsp"%>


        <!-- main slide -->
        <div class="visual">
            <ul class="slider1">
                <li class="v_0">
                    <div class="slide_box">
                        <img src="images/slide01.jpg" alt="img">
                    </div>

                    <div class="slide_text">
                        <div class="main_center">
                            <div class="bar_text">
                                Build your infrastructure solid <br>
                                with Solid's Solution
                            </div>

                            <p>Solid의 솔루션으로 인프라를 견고하게 구축하십시오.</p>
                        </div>
                    </div>
                </li>
                <li class="v_1">
                    <div class="slide_box">
                        <img src="images/slide02.jpg" alt="img">
                    </div>

                    <div class="slide_text">
                        <div class="main_center">
                            <div class="bar_text">
                                Integrate IT infrastructure management <br>
                                with solutions from Solid
                            </div>

                            <p>Solid의 솔루션으로 IT 인프라 관리를 통합하십시오.</p>
                        </div>
                    </div>
                </li>
                <li class="v_2">
                    <div class="slide_box">
                        <img src="images/slide03.jpg" alt="img">
                    </div>

                    <div class="slide_text">
                        <div class="main_center">
                            <div class="bar_text">
                                Be with Experts <br>
                                in “Solid”
                            </div>

                            <p>솔리드의 전문가들과 함께 하십시오.</p>
                        </div>
                    </div>
                </li>
            </ul>

            <div class="blue_bar_box">
                <div class="main_center">
                    <div class="blue_bar"></div>
                </div>
            </div>

            <div class="animation">
                <img src="images/slide_center.png" alt="img">
            </div>

            <div id="particles-js"></div>

            <div class="scroll">
                <p>SCROLL</p>
                <div class="bar"></div>
            </div>
        </div>


        <!-- main content -->
        <div id="main_content">
            <div class="main_center">
                <div class="section_text">
                    <div class="sec_title01">
                        Our <span>Solution</span>
                    </div>
                    <div class="sec_title02">
                        <strong>SOLINK</strong> Framework <div class="blue_circle"></div>
                    </div>

                    <div class="sec_context">
                        “SOLiNK” 는 <br>
                        마이크로서비스 기반의 독립개체형 서비스 구조를 제공하며 <br>
                        시계열 데이터베이스 기반의 최신 IT 기술이 집약된 <br>
                        자체개발 통합 IT관리 플랫폼입니다.
                    </div>
                </div>

                <div class="section_ul">
                    <ul>
                        <li onclick="location='sub1_1.jsp'">
                            <div class="img_section">
                                <div class="bar2"></div>

                                <img src="images/ems_icon.png" alt="icon">
                            </div>

                            <div class="category_title">EMS</div>

                            <div class="view_more">
                                <img src="images/view_icon.png" alt="icon">
                                <p>view more</p>
                            </div>
                        </li>
                        <li onclick="location='sub1_2.jsp'">
                            <div class="img_section">
                                <div class="bar2"></div>

                                <img src="images/nms_icon.png" alt="icon">
                            </div>

                            <div class="category_title">NMS</div>

                            <div class="view_more">
                                <img src="images/view_icon.png" alt="icon">
                                <p>view more</p>
                            </div>
                        </li>
                        <li onclick="location='sub1_3.jsp'">
                            <div class="img_section">
                                <div class="bar2"></div>

                                <img src="images/sms_icon.png" alt="icon">
                            </div>

                            <div class="category_title">SMS</div>

                            <div class="view_more">
                                <img src="images/view_icon.png" alt="icon">
                                <p>view more</p>
                            </div>
                        </li>
                        <li onclick="location='sub1_4.jsp'">
                            <div class="img_section">
                                <div class="bar2"></div>

                                <img src="images/ipcc.png" alt="icon">
                            </div>

                            <div class="category_title">IPCC/IPT</div>

                            <div class="view_more">
                                <img src="images/view_icon.png" alt="icon">
                                <p>view more</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- footer -->
        <%@include file="footer.jsp"%>
    </div>


    <!-- main slide -->
    <script>
        $(document).ready(function () {
            $('.slider1').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                dots: true,
                arrows: false,
                fade: true,
                autoplay: true,
                autoplaySpeed: 4000,
                pauseOnHover: false,
                responsive: [{
                    breakpoint: 768,
                    settings: {
                        arrows: false,
                        slidesToShow: 1
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        arrows: false,
                        slidesToShow: 1
                    }
                }
                ]
            });
        });
    </script>


    <!-- 지구 animation -->
    <script>
        $(document).ready(function () {
            particlesJS("particles-js", {
                "particles": {
                    "number": {
                        "value": 380, "density": { "enable": true, "value_area": 800 }
                    },
                    "shape": {
                        "type": "circle", "stroke": { "width": 0, "color": "#000000" },
                        "image": { "src": "img/github.svg", "width": 100, "height": 100 }
                    },
                    "opacity": {
                        "value": 0.5, "random": false,
                        "anim": { "enable": false, "speed": 1, "opacity_min": 0.1, "sync": false }
                    },
                    "size": {
                        "value": 1, "random": true,
                        "anim": { "enable": false, "speed": 40, "size_min": 0.1, "sync": false }
                    },
                    "line_linked": { "enable": true, "distance": 150, "color": "#AFCAD6", "opacity": 0.4, "width": 1 },
                    "move": {
                        "enable": true, "speed": 3, "direction": "none", "random": false, "straight": false, "out_mode": "out", "bounce": false,
                        "attract": { "enable": false, "rotateX": 600, "rotateY": 1200 }
                    }
                },
                "interactivity": {
                    "detect_on": "canvas",
                    "events": {
                        "onhover": { "enable": true, "mode": "grab" },
                        "resize": true
                    },
                    "modes": {
                        "grab": { "distance": 140, "line_linked": { "opacity": 1 } },
                        "bubble": { "distance": 400, "size": 40, "duration": 2, "opacity": 8, "speed": 3 },
                        "repulse": { "distance": 200, "duration": 0.4 },
                        "push": { "particles_nb": 4 },
                        "remove": { "particles_nb": 2 }
                    }
                },
                "retina_detect": true
            });
        });
        function draw() {
            con.clearRect(0, 0, WIDTH, HEIGHT);
            for (var e = 0; e < pxs.length; e++) {
                pxs[e].fade();
                pxs[e].move();
                pxs[e].draw()
            }
        }
        function Circle() {
            WIDTH = 950;
            HEIGHT = 800;
            this.s = {
                ttl: 8e3,
                xmax: 5,
                ymax: 2,
                rmax: 10,
                rt: 1,
                xdef: 960,
                ydef: 540,
                xdrift: 4,
                ydrift: 4,
                random: true,
                blink: true
            };
            this.reset = function () {
                this.x = this.s.random ? WIDTH * window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 : this.s.xdef;
                this.y = this.s.random ? HEIGHT * window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 : this.s.ydef;
                this.r = (this.s.rmax - 1) * window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 + 1;
                this.dx = window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 * this.s.xmax * (window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 < .5 ? -1 : 1);
                this.dy = window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 * this.s.ymax * (window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 < .5 ? -1 : 1);
                this.hl = this.s.ttl / rint * (this.r / this.s.rmax);
                this.rt = window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 * this.hl;
                this.s.rt = window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 + 1;
                this.stop = window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 * .2 + .4;
                this.s.xdrift *= window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 * (window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 < .5 ? -1 : 1);
                this.s.ydrift *= window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 * (window.crypto.getRandomValues(new Uint32Array(1)) / 4294967296 < .5 ? -1 : 1)
            };
            this.fade = function () {
                this.rt += this.s.rt
            };
            this.draw = function () {
                if (this.s.blink && (this.rt <= 0 || this.rt >= this.hl)) this.s.rt = this.s.rt * -1;
                else if (this.rt >= this.hl) this.reset();
                var e = 1 - this.rt / this.hl;
                con.beginPath();
                con.arc(this.x, this.y, this.r, 0, Math.PI * 2, true);
                con.closePath();
                var t = this.r * e;
                g = con.createRadialGradient(this.x, this.y, 0, this.x, this.y, t <= 0 ? 1 : t);
                g.addColorStop(0, "rgba(255,255,255," + e + ")");
                g.addColorStop(this.stop, "rgba(255,255,255," + e * .6 + ")");
                g.addColorStop(1, "rgba(255,255,255,0)");
                con.fillStyle = g;
                con.fill()
            };
            this.move = function () {
                WIDTH = window.innerWidth;
                HEIGHT = window.innerHeight;
                this.x += this.rt / this.hl * this.dx;
                this.y += this.rt / this.hl * this.dy;
                if (this.x > WIDTH || this.x < 0) this.dx *= -1;
                if (this.y > HEIGHT || this.y < 0) this.dy *= -1
            };
            this.getX = function () {
                return this.x
            };
            this.getY = function () {
                return this.y
            }
        }
        var WIDTH;
        var HEIGHT;
        var canvas;
        var con;
        var g;
        var pxs = new Array;
        var rint = 60;
        $(document).ready(function () {
            WIDTH = "100%";
            HEIGHT = "100%";
            WIDTH = $('.s05right').width();
            HEIGHT = $('.s05right').height();
            canvas = document.getElementById("pixie");
            $(canvas).attr("width", WIDTH).attr("height", HEIGHT);
            con = canvas.getContext("2d");
            for (var e = 0; e < 100; e++) {
                pxs[e] = new Circle;
                pxs[e].reset()
            }
            setInterval(draw, rint)
        });
    </script>
</body>

</html>
