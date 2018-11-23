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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="6c2568a4-599f-481b-8bf7-b42ae0626cec" /><title>��ȸ����Ȱ��</title>

    <link rel="icon" href="/assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
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

<script type="text/javascript" src="../assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="../assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="../assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="../assets/js/ui.common.js"></script>
<script type="text/javascript" src="../assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="../assets/js/TweenMax.min.js"></script>

<script type="text/javascript" src="../assets/js/tss.js"></script>
<script type="text/javascript" src="../assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="../assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="../assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="../assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="../assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="../assets/js/fileupload/jquery.fileupload.js"></script>

<script type="text/javascript" src="../assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>

<!-- moment js api -->
<script type="text/javascript" src="../assets/js/moment.js"></script>
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

    

    <link rel="stylesheet" type="text/css" href="../assets/css/ui.hansot.css"/>

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
                    <a href="/login">�α���</a>
                    </li>
                <li>
                    <a href="/join/join_step1">ȸ������</a>
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
                            <a href="/login">�α���</a>
                            </li>
                        <li>
                            <a href="/join/join_step1">ȸ������</a>
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
                                    <li class="active"><a href="../brand/esg.jsp">ESG�濵�̶�?</a></li>
                                    <li><a href="../brand/philosophy.jsp">ȯ�溸ȣ(Environment)</a></li>
                                    <li><a href="../hansot/social.jsp">��ȸ����(Social)</a></li>
                                    <li><a href="../brand/esg.jsp">�����濵(Governance)</a></li>

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
                                    <li><a href="../footer/faq_list.jsp">������</a></li>
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
        
<div class="content hansot">
    <section class="social">
        <!-- ��ȸ����Ȱ�� -->
        <div class="social_wrap tab_st01">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_01">��ȸ����Ȱ��</h2>
            </div>
            <!-- //title -->
            <!-- social_list -->
            <div class="detail_wrap mo_version">
                <!-- sub_tit -->
                <div class="so_sub_tit">
                    <p class="fz_02">
                        <span class="s_block">�������� ���ö����� ������ȸ�� �����Ѵ١� </span>
                        <span class="s_block">��� ����̳� �Ʒ� �پ��� ��ȸ����Ȱ���� �����ϰ� �ֽ��ϴ�.</span>
                    </p>
                </div>
                <!-- //sub_tit -->
                <!-- list -->
                <div class="news_list_wrap">
                    <!-- ��ȸ������ ���� -->
                    <div class="list_box box_01">
                        <p class="list_title">��ȸ������ ����</p>
                        <ul>
                            <!-- 1 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_10.jpg" alt="�ٿ���� ���ö� �Ŀ�" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">�ٿ���� ���ö� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    �ٿ������ �ߴ������ Ư��ȭ ���������� �ٿ����� �ǰ��� �ΰ�, ���� ��ġ�� ���� �ΰ����� ��ư� �� �ֵ��� �����ϴ� ��ü�Դϴ�. �Ѽܿ����� ������ �̿������ Ȱ���� ���� �ǰ��� �ٿ���� ��翡 ���������� ���ö��� �Ŀ��ϰ� �ֽ��ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //1 -->
                            <!-- 2 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_11.jpg" alt="���ɿ� �Ŀ�" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">���ɿ� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    ���ɿ��� 1929�� ���۵� �Ƶ� �����ü��� ��� �� ���ƿ��� ����л����� 18�� �̸� 55���� �Ƶ��� ��Ȱ�ϰ� �ִ� �����ü��Դϴ�. �������������� ��� ������� �ް� �־�, �Ѽܿ����� �Ŀ��ݰ� ���ö��� ���������� ����� �������� ���ö����� ������ȸ�� �����Ѵ�.�� ��� �濵�̳��� ��õ�ϰ� �ֽ��ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //2 -->
                            <!-- 3 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_08.jpg" alt="����� �� ���������" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">����� �� ��������� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    Ȧ�����, �����, ����ε� ,�ܷӰ� �ҿܵ� �е鿡�� ����޽��� �����ϴ� ����� ���������� ȭ��� ���㰡 �Ǿ�, ���� ����� �� ����������� ����޽��� �ߴܵ� ��Ȳ�� ó�� �Ѽܵ��ö������� �ٷ� ���ö� 750�κ��� ����, ������ȸ�� ������ �̾ �� �ֵ��� �Ŀ��Ͽ����ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //3 -->
                            <!-- 4 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_07.jpg" alt="�����������" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">����������� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    �������� ����� 25�� ��ġ�� ���ʻ�Ȱ �����ڰ� 8��°�� ���� ������ 2014�� 10�� 1�� ���� ����Ͽ����ϴ�. �Ѽܵ��ö��� ��� ������ ���̰� ������ȸ�� ���� �簢���븦 �ؼ��ϰ��� ���� ���� ��� ������ �Ŀ��ϰ� �ֽ��ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //4 -->
                            <!-- 5 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_01.jpg" alt="����� ����" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">��ȸ�����������ȸ ����ǿ��� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    �Ѽ��� ���� �Բ��ϴ� ��ι�ȭ�� ����� �ҿܵ� �̿��鿡�� ū ����� �����ϰ��� �ų� 12�� �����縦 �����ϰ� �ֽ��ϴ�. 2015�⿡�� �������� �ູ, 100���� ����� ��縦 ���� 1,145�� 7,900����, 2016�� 12������ ��2016�� �Ÿ޴� ������硱 �� ���� 2000������ ��ȸ���� �������ȸ(����� ����)�� ����Ͽ����ϴ�.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //5 -->
                        </ul>
                    </div>
                    <!-- //��ȸ������ ���� -->
                    <!-- �ҿ�ȯ�� ġ���� �� ������� �Ŀ� -->
                    <div class="list_box box_02">
                        <p class="list_title">
                            <span class="s_block">�ҿ�ȯ�� ġ���� �� ������� �Ŀ�</span>
                            <span class="s_block">(���� �ֿ� �Ƿ���)</span>
                        </p>
                        <ul>
                            <!-- 1 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_02.jpg" alt="�Ｚ���ﺴ�� �Ŀ�" /><!-- 2017.10.26 �ؽ�Ʈ ���� -->
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">�Ｚ���ﺴ�� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    2012����� �ظ��� �Ѽܿ����� �������� ����޴� ������� ���� ���� ���� ����� ���� ���� �Ｚ������ �ҿ�ȯ�� ġ�� ��� �� ���� ������ ���� ��������� �Ŀ�������, �پ��� ��ȸ ��� Ȱ���� ��õ�� ������ �ֽ��ϴ�.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //1 -->
                            <!-- 2 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_03.jpg" alt="�������" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">�����Ƿ�� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    2014����� �Ѽܿ����� ������� ʫ�� ������ ��õ�ϰ� �ִ� �����Ƿ���� �Ƿ�� ��������� �Ŀ��Ͽ� ��, �����ȯ ġ����, �Ƿἱ����� �� ��ȸ�����̶�� �þ��� ��ȸ�� �Ҹ��� ��õ�ϰ� �ֽ��ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //2 -->
                            <!-- 3 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_04.jpg" alt="����ƻ꺴�� �Ŀ�" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">����ƻ꺴�� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    2015�� �Ѽ��� ���츮 ��ȸ�� ���� �ҿ��� �̿��� ���´١� �� �ƻ������ ���������� �����ϰ��� ����ƻ꺴���� �ҿ� ȯ��  ġ���� �� �����ܰ� ������ݿ� �Ŀ��Ͽ����ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //3 -->
                            <!-- 4 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_05.jpg" alt="�����ϼ���" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">�����ϼ��� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    �����ϼ��ʹ� ���� ����� ���������� ���� ȫ��, ����, ���� �� ������� �� �ϰ��� ����, �� �м������� �м���ȸ�� �����ϴ� ����Դϴ�. �Ѽ��� 2016�� 12�� 30�� �����ϼ��� ����������� 1,500������ ��Ͽ����� ����Ͽ� �� �������� ������ ����� �η� ��ȸ ������ �⿩�ϴ� �濵�̳��� ��õ�Ͽ����ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //4 -->
                        </ul>
                    </div>
                    <!-- //�ҿ�ȯ�� ġ���� �� ������� �Ŀ� -->
                    <!-- ���ҵ� �������� -->
                    <div class="list_box box_03">
                        <p class="list_title">���ҵ� ��������</p>
                        <ul>
                            <!-- 1 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_06.jpg" alt="������б�" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">������б� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    �Ѽܿ����� ������б� ���п����� �кλ����� 2016����� 2019����� �� �б�� ���б��� �����Ͽ� ���ҵ��� �л����� �о��� ����ϰ� �ܽĻ�� ���� ������ ���弭�� �ֽ��ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //1 -->
                        </ul>
                    </div>
                    <!-- //���ҵ� �������� -->
                    <!-- ��Ÿ ���� ��� �Ŀ� -->
                    <div class="list_box box_03">
                        <p class="list_title">��Ÿ ���� ��� �Ŀ�</p>
                        <ul>
                            <!-- 1 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_14.JPG" alt="����� 7017 �������� ����" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">����� 7017 �������� ����</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    ����� 7017 �������� ������ ����ΰ� ��������� �Բ� �ϴ� ��︲ ����Դϴ�. �Ѽ��� �Բ� ��� ������ ����µ� ����ϴ� ����ÿ� ���� ���±� ���� ���ö��� �Ŀ��Ͽ����ϴ�.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //1 -->
                            <!-- 2 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_15.JPG" alt="���������ڻ�" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">���������ڻ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    ���������ڻ翡 H�����Ƽ ī��� 43,560���� ����Ͽ����ϴ�. �Ѽ��� ���ų��ε鿡�� ������ ���ΰ� �Ǵ� ��ȸ, �����ڵ��� �ݷ������ν� ������ ������ ��ġ�� ��ȸ�� �̷ﳪ���⸦ ����մϴ�.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //2 -->
                            <!-- 3 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_12.jpg" alt="�½��� �Ŀ�" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">�½��� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    �½���� û�ҳ� ���丵�� ���� �ǰ��ϰ� �ູ�� ���ѹα� ��ȸ�� ������� ������ �񿵸� ��ü�Դϴ�. �Ѽܵ��ö��� û�ҳ���� �ùٸ� ���忡 ������ �ǰ��� ���ö��� �Ŀ��Ͽ����ϴ�.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //3 -->
                            <!-- 4 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_09.jpg" alt="���������Ѹ��� ��� �Ŀ�" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">���������Ѹ��� ��� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    ���������� �Ѹ��硯�� ���� ���� �ѱ��ΰ� �Ϻ����� �ϳ��� �Ǿ� ������ �ִ� �Ը��� ���ϱ��� ����Դϴ�. �̸� ���� ���� ��ȭ�� ���̸� �� �����ϰ� ���θ� �� �����ϴ� ��Ⱑ �ǰ� �ֽ��ϴ�. �Ѽܿ����� ���������� �Ѹ��硯 ��翡 ���ö� �Ŀ��� ���� ���� �籹 �� ��ȣģ���� ���� �������� ��� ���ָ� �����ϰ� �ֽ��ϴ�.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //4 -->
                            <!-- 5 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="../assets/images/hansot/so_img_13.jpg" alt="������������ ����� ���� �Ŀ�" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">������������ ����� ���� �Ŀ�</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>���뺸��</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    2012�� 5�� �濵�� KBS �۷ι� �����ô븦 ���� �ο��� �Ǿ�, �Ѽܿ��� ��� �������� ����� ������� �Ŀ��ϰ� �Ǿ�����, ���� ��� ��������� ������ ��������� Ŀ�Ǹ� �����ϰ��� �ϴ� �� ������� �ҿ��� �̷�� ���� �Ѽܿ����� �ų� �������� Ŀ�Ǹ� ������ �Ǹ��ϰ� �ֽ��ϴ�. �Ѽܿ��� �����ϴ� Ŀ�� ���� �ݾ� �Ϻδ� ��������ÿ� ��εǰ� ������, �������� �� Ŀ�ǽü� �Ǽ��� ���� ����� ���Ÿ� ���� 5������ �����Ͽ����ϴ�.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>�ݱ�</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //5 -->
                        </ul>
                    </div>
                    <!-- //��Ÿ ���� ��� �Ŀ� -->
                </div>
                <!-- //list -->
            </div>
            <!-- //social_list -->
        </div>
        <!-- //��ȸ����Ȱ�� -->
    </section>
</div>

<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">�� ���� �̾߱�</h2>
    <ul>
        <li>
            <a href="../brand/story.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_story.jpg" alt="�귣�� ���丮" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ���丮</h3>
                    <h3 class="h3_tit_o">�귣�� ���丮</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../brand/philosophy.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_philosophy.jpg" alt="�귣�� ö��" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ö��</h3>
                    <h3 class="h3_tit_o">�귣�� ö��</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../brand/legacy.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_legacy.jpg" alt="�귣�� ����" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ����</h3>
                    <h3 class="h3_tit_o">�귣�� ����</h3>
                </figcaption>
            </figure>
        </li>
        </ul>
</div>
<!--// more_cont-->

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
                <li><a href="../footer/faq_list.jsp">�� ����</a></li>
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
                <span>�Ѽ� ���ö� ������  02-585-1114</span>
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
                                <dt>�Ѽ� ������</dt>
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