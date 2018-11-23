<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    <!-- SNS LINK -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <meta property="og:description" content="" />
    <!--// SNS LINK -->

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3a1f9029-2dc0-42ff-bbc3-227a8384a395" /><title>�Ѽܵ��ö� > �α���</title>
    
    <link rel="icon" href="image/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/min.css" />
<!--[if gte IE 9 ]><link rel="stylesheet" href="/assets/css/ui.ie9.css" type="text/css" /><![endif]-->

<style>
    .file_input {
        font-size:45px;
        position:absolute;
        top:0;
        right:0;
        bottom:0;
        left:0;
        margin:0;
        padding:0;
        border:0;
        z-index:-1;
        opacity: 0;
        filter: alpha(opacity=0);
        -ms-filter: "alpha(opacity=0)";
        -khtml-opacity:0;
        -moz-opacity:0;
    }
</style>

<script type="text/javascript" src="./js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="./js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="./js/jquery.cookie.js"></script>
<script type="text/javascript" src="./js/ui.common.js"></script>
<script type="text/javascript" src="./js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="./js/TweenMax.min.js"></script>

<script type="text/javascript" src="./js/tss.js"></script>
<script type="text/javascript" src="./js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="./js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="./js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="./js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="./js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="./js/fileupload/jquery.fileupload.js"></script>

<script type="text/javascript" src="./js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>

<!-- moment js api -->
<script type="text/javascript" src="./js/moment.js"></script>
<!-- lodash js api -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lodash@4.17.4/lodash.min.js"></script>

<script>
    $(function () {
        var token = $("meta[name='_csrf']").attr('content');
        var header = "X-CSRF-TOKEN";
        $(document).ajaxSend(function(event, xhr, options) {
            xhr.setRequestHeader(header, token);
        });
        $(document).ajaxError(function(event, xhr, options) {
            if(xhr.status === 401) {
                console.log(xhr);
                if(tss.util.confirm('�α����� �ʿ��մϴ�.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("������ �߻��߽��ϴ�.");
            }
        });
    });
</script><script type="text/javascript">
    </script>

    

    <link rel="stylesheet" type="text/css" href="./css/login.css" />

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111772169-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
    </script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'AW-864658366');
    </script>

    <!-- kakao pixcel -->
    <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
    <script type="text/javascript">
        kakaoPixel('5575357302971415199').pageView();
    </script>

    <!-- Facebook Pixel Code -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window,document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '241666853119648');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" src="https://www.facebook.com/tr?id=241666853119648&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->
</head>



<body ontouchstart>
<!-- wrap s -->
<div id="wrap" class="">
    <!-- inc header s -->
    <!-- header -->
<header id="header">
    <!-- header flex-->
    <div class="hd_flex">
        <div class="area_flex">
            <ul>
                <li>
                    <a href="./login.jsp">�α���</a>
                    </li>
                <li>
                    <a href="../join/join.jsp">ȸ������</a>
                    </li>
                <li class="sns_insta">
                    <a href="https://www.instagram.com/hansot_official/" target="_blank" title="�� â ����" ><span class="blind">instagram</span></a>
                </li>
                <li class="sns_face">
                    <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" title="�� â ����" ><span class="blind">facebook</span></a>
                </li>
            </ul>
        </div>
    </div>
    <!-- //header flex -->

    <!-- header content -->
    <div class="hd_fixed">
        <div class="hd_content">
            <div class="logo">
                <h1><a href="/"><span class="blind">�Ѽ�</span></a></h1>
            </div>
            
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- ����� �α���/ȸ������ -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="./login.jsp">�α���</a>
                            </li>
                        <li>
                            <a href="../join/join.jsp">ȸ������</a>
                            </li>
                    </ul>
                </div>
                <!-- //����� �α���/ȸ������ -->

                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="../brand/story.jsp">�귣�� ���丮</a></li>
                                    <li><a href="../brand/philosophy.jsp">�귣�� ö��</a></li>
                                    <li><a href="../brand/legacy.jsp">�귣�� ����</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="/brand/esg">ESG�濵�̶�?</a></li>
                                    <li><a href="/brand/philosophy">ȯ�溸ȣ(Environment)</a></li>
                                    <li><a href="/hansot/social">��ȸ����(Social)</a></li>
                                    <li><a href="/brand/esg">�����濵(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../menu/menu_list.jsp">��ü�޴�</a></li>
                                    <li><a href="../menu/material.jsp">����� �̾߱�</a></li>
                                    <li><a href="../menu/chancha.jsp">�����������Ŀ��</a></li>
                                    <li><a href="../menu/menu_order.jsp">��ü �ֹ�</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../store/store_find.jsp">�ֺ�����ã��</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../event/event_list.jsp">�� ���� �̺�Ʈ</a></li>
                                    <li><a href="../event/store_event_list.jsp">�ű��� �����̺�Ʈ</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../franchise/hansot_store.jsp">Why �Ѽ� ������</a></li>
                                    <li><a href="../franchise/success.jsp">��������</a></li>
                                    <li><a href="../franchise/process.jsp">â����������</a></li>
                                    <li><a href="../franchise/calc.jsp">���� â�� ���</a></li>
                                    <li><a href="../franchise/qna.jsp">â������</a></li>
                                    <li><a href="../franchise/briefing.jsp">â������ȸ ��������û</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../hansot/promise.jsp">�Ѽ��� ���</a></li>
                                    <li><a href="../hansot/vision.jsp">�Ѽ��� ����</a></li>
                                    <li><a href="../hansot/history.jsp">����&amp;����</a></li>
                                    <li><a href="../hansot/news_list.jsp">�Ѽ� NEWS</a></li>
                                    <li><a href="../hansot/location.jsp">���ô� ��</a></li>
                                    <li><a href="../footer/faq_list.jsp">��������</a></li>
                                    <li class="h_last"><a href="../footer/incruit.jsp">����ä��</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
            <!--// gnb -->
            <!-- pc:bg -->
            <div class="bg_layer"></div>
            <!-- //pc:bg -->
            <!-- mobile_btn -->
            <div class="mobile_menu_btn">
                <div class="hamburger" id="hamburger-6">
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <!-- //mobile_btn -->
        </div>
        <!--// header content -->
    </div>
</header>
<!--// header -->

<!--// inc header e -->

    <!-- popup -->
<!-- container s -->
    <div id="container" class="sub_page">
        
<div class="content login bg_none">
    <section class="login_page mo_version">
        <!-- �α��� form -->
        <div class="login_wrap">
            <div class="login_formcont">
                <h2 class="h2_tit">�α���</h2>
                <!-- form -->
                <form id="loginForm" name="loginForm" class="login_form" action="/authentication" method="post"><input type="hidden" id="_targetUrl" name="_targetUrl" value=""/>
                    <fieldset>
                        <legend>�α���</legend>
                        <!-- id,pw �Է��� -->
                        <div class="area_login">
                            <!-- ���̵� -->
                            <div class="in_box">
                            <span class="form text">
                                <input type="text" id="userid" minlength="6" maxlength="20" name="userid">
                                <label for="userid">���̵�</label>
                            </span>
                            </div>
                            <!-- //���̵� -->
                            <!-- ��й�ȣ -->
                            <div class="in_box">
                            <span class="form text">
                                <input type="password" id="userpwd" minlength="8" name="userpwd" autocomplete="new-password">
                                <label for="userpwd">��й�ȣ</label>
                            </span>
                            </div>
                            <!-- //��й�ȣ -->
                        </div>
                        <!--// id,pw �Է��� -->
                        <!-- check -->
                        <div class="area_check">
                            <span class="form checkbox">
                                <input type="checkbox" id="saveid">
                                <label for="saveid">���̵� ����</label>
                            </span>
                            <span class="find_idpw">
                                <a href="./login_find.jsp">���̵�/��й�ȣã��</a>
                            </span>
                        </div>
                        <!-- //check -->
                        <!-- �α��� btn -->
                        <div class="btn_wrap">
                            <span class="btn btn_st02"><a href="#none" class="c_01 disabled" id="btnlogin" onclick="checkSubmit();">�α���</a></span>
                            </div>
                        <!-- //�α��� btn -->
                    </fieldset>
                <div>
<input type="hidden" name="_csrf" value="3a1f9029-2dc0-42ff-bbc3-227a8384a395" />
</div></form><!-- //form -->
            </div>
        </div>
        <!-- //�α��� form -->
        <!-- ȸ������ ���� -->
        <div class="join_select">
            <span><img src="./image/login/join_temp_01.jpg" alt="bg" /></span>
            <div class="join_formcont">
                <h3 class="h3_tit">�Ѽ� ȸ���� �ƴϽŰ���?</h3>
                <p class="txt">ȸ���� �ǽø� �Ѽ� ���ö��� �پ��� ������ �̺�Ʈ�� �������� �� �ֽ��ϴ�.</p>
                <!-- btn -->
                <div class="btn_wrap">
                    <span class="btn btn_st02"><a href="../join/join.jsp" class="c_02">ȸ������</a></span>
                </div>
                <!-- //btn -->
            </div>
        </div>
        <!-- //ȸ������ ���� -->
    </section>
</div>

<script type="text/javascript">
//<![CDATA[

$(function() {
    $("#userpwd").on("keyup",function(event){
        if(event.keyCode == 13) checkSubmit();
    });
    // �α��� ��ư Ȱ��ȭ
    $("#loginForm > :text, :password").keyup(function(){
        if($("#userid").val() !="" && $("#userpwd").val() != "")
            $("#btnlogin").removeClass("disabled");
        else
            $("#btnlogin").addClass("disabled");
    });

    // ���̵� ����
    if($.cookie("saveid") != "" && $.cookie("saveid") != undefined) {
        $("#userid").val($.cookie("saveid"));
        $("#saveid").attr("checked", true);
        $("#userpwd").focus();
    }else{
        $("#userid").focus();
    }

});

// �α���
function checkSubmit(){

    if($("#btnlogin").hasClass("disabled")){
        return;
    }

    if($("#saveid").is(":checked")) {
        $.cookie("saveid", $("#userid").val(), {expires:30, path : "/"});
    }else{
        $.cookie("saveid","", {expires:-1});
    }

    document.loginForm.submit();
}
//]]>
</script>


    </div>
    <!--// container e -->

    <!-- inc footer s -->
    
    
    <!-- footer -->
<footer id="footer">
    <div class="ft_content mo_version">

        <!-- family goods -->
        <div class="ft_menu">
            <ul>
                <li class="first_be off"><a href="../footer/incruit.jsp">����ä��</a></li>
                <li class="off"><a href="../footer/partners.jsp">���¾�ü���</a></li>
                <li class="mo_bl"><a href="../footer/notice_list.jsp">��������</a></li>
                <li><a href="../footer/faq_list.jsp">���� ����</a></li>
                <li class="mo_bl"><a href="../footer/policy.jsp"><strong>����������޹�ħ</strong></a></li>
                <li><a href="../footer/agreement.jsp">�̿���</a></li>
            </ul>
        </div>
        <!--// family goods -->
		<div class="mark_webaward"><p><span class="blind">web award korea 2017 ����������о� ���2017</span></p></div><!-- 2018-01-11������帶ũ -->
        <!-- info -->
        <div class="ft_info_wrap">
            <!-- pc -->
            <div class="ft_info pc_info">
                <span class="first_be">��ǥ�̻�  �̿���</span>
                <span>����ڵ�Ϲ�ȣ  214-81-96569</span>
                <span>����� ������ ������� 318(���ﵿ) Ÿ��837���� 8,9��</span>
                <span>T.  02-585-1114</span>
                <span>F.  02-598-1116</span>
                <span class="first_be">E.  webmaster@hsd.co.kr</span>
                <span>�Ѽ� ���ö� ��������  02-585-1114</span>
                <span>����â������ȸ  1811-0188</span>
                <span>��ü�ֹ�  1644-3288</span>
            </div>
            <!-- //pc -->
            <!-- mobile -->
            <div class="ft_info mo_info">
                <div class="mo_info_list">
                    <p class="btn_toggle">
                        <a href="#none">�Ѽ� ����� ����</a>
                    </p>
                    <div class="mo_info_on">
                        <span class="mo_bl">��ǥ�̻�  �̿���</span>
                        <span>����ڵ�Ϲ�ȣ  214-81-96569</span>
                        <br/>
                        <span class="mo_bl">����� ������ ������� 318(���ﵿ) Ÿ��837���� 8,9��</span>
                        <br/>
                        <span class="mo_bl">T.  02-585-1114</span>
                        <span>F.  02-598-1116</span>
                        <br/>
                        <span class="mo_bl">E.  webmaster@hsd.co.kr</span>
                        <div class="mo_info_call">
                            <dl>
                                <dt>�Ѽ� ��������</dt>
                                <dd>02-585-1114</dd>
                            </dl>
                            <dl>
                                <dt>����â������ȸ</dt>
                                <dd>1811-0188</dd>
                            </dl>
                            <dl>
                                <dt>��ü�ֹ�</dt>
                                <dd>1644-3288</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //mobile -->

            <p class="copyright">COPYRIGHT<span>&copy;</span>���Ѽ�. ALL RIGHTS RESERVED.</p>

            <div class="ft_sns">
                <a href="https://www.instagram.com/hansot_official/" target="_blank" title="�� â ����" class="sns_insta_02" target="_blank" title="�� â ����" ><span class="blind">instagram</span></a>
                <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" class="sns_face_02" target="_blank" title="�� â ����" ><span class="blind">facebook</span></a>
            </div>
        </div>
        <!--// info -->
    </div>
</footer>
<!--// footer -->

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-109125197-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());

            gtag('config', 'UA-109125197-1');
        </script>
    <!--// inc footer e -->

</div>
<!--// wrap e -->
</body>
</html>