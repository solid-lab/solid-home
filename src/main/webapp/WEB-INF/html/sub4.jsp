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

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/common.js"></script>
</head>

<body>
    <div id="wrap">

        <!-- header -->
        <%@include file="header.jsp"%>


        <!-- sub intro -->
        <div id="sub_intro" class="sub_intro02">
            <img src="images/sub4_intro.jpg" alt="img">
            <p>SUPPORT</p>
        </div>


        <!-- sub route -->
        <div class="route" id="sticky">
            <div class="main_center">
                <div class="home" onclick="location='index.jsp'">
                    <i class="xi-home"></i>
                </div>
                <div class="r_select01 r_select03">
                    <div class="select_title">
                        <p>Support</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li><a href="sub1.jsp">Solutions</a></li>
                        <li><a href="sub2.jsp">Company</a></li>
                        <li><a href="sub3_1.jsp">PR</a></li>
                        <li class="title_on"><a href="sub4.jsp">Support</a></li>
                    </ul>
                </div>
                <div class="r_select01 r_select02">
                    <div class="select_title">
                        <p>Contact</p>
                        <i class="xi-angle-down-thin"></i>
                    </div>
                    <ul>
                        <li class="title_on"><a href="sub4.jsp">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- sub content -->
        <div id="sub_content">
            <div class="notice_box">
                <div class="sub2_title">
                    <img src="images/nms_img02.png" alt="icon">
                    <p>Contact us</p>
                    <span>
                        아래 양식을 기입하여 문의를 남겨 주시면, 담당 전문가가 작성하신 정보로 연락드리겠습니다. <br>
                        접수된 문의는 순차적으로 처리되며, 빠르고 정확한 답변을 위해 최선을 다하겠습니다.
                    </span>
                </div>

                <div class="sub_center01">
                    <div class="contact_us_box">
                        <ul>
                            <li>
                                <p>* 표시는 필수 항목입니다.</p>
                            </li>
                            <li>
                              <form id="insertFrm" method="post" action="insertContact.jsp" enctype="multipart/form-data">
                                <input type="hidden" name="terms" class="termshidden" id="termshidden" value="n">
                                <div class="contect_content">
                                    <p class="t_p">문의종류 <span>*</span></p>
                                    <div class="radio_box" id="radio_box">
                                        <label for="radio_g">
                                            <input type="radio" name="radio" id="radio_g" value="일반">
                                            <p>일반문의</p>
                                        </label>
                                        <label for="radio_e">
                                            <input type="radio" name="radio" id="radio_e" value="견적">
                                            <p>견적문의</p>
                                        </label>
                                        <label for="radio_etc">
                                            <input type="radio" name="radio" id="radio_etc" value="기타">
                                            <p>기타</p>
                                        </label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="input_box2">
                                    <div class="c_input">
                                        <p class="t_p">이름 <span>*</span></p>
                                        <input type="text" name="username" id="username">
                                    </div>
                                    <div class="c_input">
                                        <p class="t_p">소속/직책 <span>*</span></p>
                                        <input type="text" name="role" id="role" placeholder="ex) (주)솔리드 / 팀장">
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="input_box2">
                                    <div class="c_input">
                                        <p class="t_p">연락처 <span>*</span></p>
                                        <div class="phone_input" id="phone_input">
                                            <div class="p_select">
                                                <i class="xi-angle-down"></i>
                                                <select name="p1" id="p1">
                                                    <option value="010">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                </select>
                                            </div>
                                            -
                                            <input type="text" name="p2" id="p2" maxlength="4">
                                            -
                                            <input type="text" name="p3" id="p3" maxlength="4">
                                        </div>
                                    </div>
                                    <div class="c_input">
                                        <p class="t_p">이메일</p>
                                        <input type="text" name="email" id="email" maxlength="249">
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="contect_content">
                                    <p class="t_p">제목 <span>*</span></p>
                                    <input type="text" name="title" id="title" maxlength="249">
                                </div>
                            </li>
                            <li>
                                <div class="contect_content">
                                    <p class="t_p">내용 <span>*</span></p>
                                    <textarea name="content" id="content"></textarea>
                                </div>
                            </li>
                            <li>
                                <div class="input_box2">
                                    <div class="c_input">
                                        <p class="t_p">첨부파일1 : </p>
                                        <div class="file_box">
                                            <div class="file" onclick="document.getElementById('file1').click();">
                                                <input type="file" name="file1" id="file1" style="display:none;"
                                                      onchange="document.getElementById('txt1').innerHTML=getfilename(this.value);">
                                                파일선택
                                            </div>
                                            <p id='txt1'>선택된 파일 없음</p>
                                        </div>
                                    </div>
                                    <div class="c_input">
                                        <p class="t_p">첨부파일2 : </p>
                                        <div class="file_box">
                                            <div class="file" onclick="document.getElementById('file2').click();">
                                                <input type="file" name="file2" id="file2" style="display:none;"
                                                  onchange="document.getElementById('txt2').innerHTML=getfilename(this.value);">
                                                파일선택
                                            </div>
                                            <p id="txt2">선택된 파일 없음</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>


                        <script>
                        // 동의여부는 hidden으로 보냄
                        let flag = false;

                        function changeterms(){
                          // 동의 버튼이 1개라 flag로 value 설정
                          flag = !flag;
                          if(flag){
                            document.getElementById("termshidden").value = "y"
                          }else{
                            document.getElementById("termshidden").value = "n"
                          }
                        }

                        function getfilename(fileName){
                          // 경로명에서 파일 이름만 빼옴
                          var fileLength = fileName.length;
                          var lastDot = fileName.lastIndexOf('\\');
                          var filename = fileName.substring(lastDot+1, fileLength);

                        return filename;

                        }
                        </script>


                        <div class="agree_box">
                            <p>개인정보 수집동의</p>
                            <div class="agree_con">
                              개인정보 수집 및 이용에 대한 안내<br>
                              당 사는 당 사 홈페이지를 통해 문의를 접수하신 기업 및 개인을 대상으로 아래와 같이 개인정보를 수집하고 있습니다.<br>
                              <br>
                              &nbsp;&nbsp; 1. 수집 개인정보 항목 : 성명, 업체명, 연락처, 이메일<br>
                              &nbsp;&nbsp; 2. 개인정보의 수집 및 이용목적 : 상담문의에 따른 본인확인 및 원활한 의사소통 경로 확보<br>
                              &nbsp;&nbsp; 3. 개인정보의 이용기간 : 이용목적이 달성되면 지체없이 파기<br>
                              <br>
                              그 밖의 사항은 관련법을 준수합니다.<br>
                              <br>
                              본 내용은 2022년01월20일부터 적용됩니다.<br>
                              <br>
                              개인정보 담당 및 관리 책임자<br>
                              성명 : 김병오<br>
                              연락처 : 070-8277-4971<br>
                              이메일 : kingfive6@solidcompanay.co.kr
                            </div>
                            <div class="check_section">
                                <i class="xi-check-circle-o" onclick="changeterms()"></i>
                                <p>[필수] 개인정보 취급 방침에 동의합니다.</p>
                            </div>
                        </div>

                        <div class="inquiry_btn">
                            <input type="button" value="문의하기" onclick="InsertContact()">
                        </div>
                    </div>
                </div>
              </form>
            </div>
        </div>



        <!-- footer -->
        <%@include file="footer.jsp"%>

    </div>

    <script>
    function InsertContact(){
    	// oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

      var content = $("#content").val();
      var username = $("#username").val();
      var role = $("#role").val();
      var p2 = $("#p2").val();
      var p3 = $("#p3").val();
      var email = $("#email").val();
      var title = $("#title").val();
      var content = $("#content").val();

      var radiolist = $('input[name=radio]:checked').val();

     if (radiolist == ""  || radiolist == null) {
    		alert("문의 종류를 선택해주세요");
    		$("#radio_box").focus();
     	}else if( username == ""  || username == null || username == '&nbsp;' || username == '<p>&nbsp;</p>')  {
    		alert("이름을 입력해주세요");
        $("#username").focus();
      }else if( role == ""  || role == null || role == '&nbsp;' || role == '<p>&nbsp;</p>')  {
    		alert("소속/직책을 입력해주세요");
        $("#role").focus();
      }else if( p2 == ""  || p2 == null || p2 == '&nbsp;' || p2 == '<p>&nbsp;</p>')  {
    		alert("연락처를 입력해주세요");
        $("#p2").focus();
      }else if( p3 == ""  || p3 == null || p3 == '&nbsp;' || p3 == '<p>&nbsp;</p>')  {
        alert("연락처를 입력해주세요");
        $("#p3").focus();
      }else if( title == ""  || title == null || title == '&nbsp;' || title == '<p>&nbsp;</p>')  {
    		alert("제목을 입력해주세요");
    		$("#title").focus();
      }else if( content == ""  || content == null || content == '&nbsp;' || content == '<p>&nbsp;</p>')  {
    		alert("내용을 입력해주세요");
    		$("#content").focus();
      }else if($("#termshidden").val()=="n") {
    		alert("개인정보 수집 및 이용안내에 동의해주세요");
    	}else {
    		$("#insertFrm").submit();
    	}
    }
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
