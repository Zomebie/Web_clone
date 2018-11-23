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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="0b92501b-0d87-447c-b011-ba9391ff1167" /><title>�Ѽܵ��ö�</title>

    <link rel="icon" href="./assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="./assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="./assets/css/swiper.min.css" />
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

<script type="text/javascript" src="./assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="./assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="./assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="./assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="./assets/js/ui.common.js"></script>
<script type="text/javascript" src="./assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="./assets/js/TweenMax.min.js"></script>

<script type="text/javascript" src="./assets/js/tss.js"></script>
<script type="text/javascript" src="./assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="./assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="./assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="./assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="./assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="./assets/js/fileupload/jquery.fileupload.js"></script>

<script type="text/javascript" src="./assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>

<!-- moment js api -->
<script type="text/javascript" src="./assets/js/moment.js"></script>
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

    

    <link rel="stylesheet" type="text/css" href="./assets/css/ui.main.css" />
    <link rel="stylesheet" type="text/css" href="./assets/css/ui.pop.css" />

    <script type="text/javascript" src="./assets/js/ui.main.js"></script>

    <script>
    $(function(){
        visualBackground();
    });
    $(window).resize(function() {
        visualBackground();
    });

    function visualBackground(){
        if(window.innerWidth <= 768){
            $(".visual_bg.vi_01").each(function(){
                var url = $(this).data("mobile-url");
               $(this).css('backgroundImage', "url(" + url + ")");
            });
        }else{
            $(".visual_bg.vi_01").each(function(){
                var url = $(this).data("web-url");
                $(this).css('backgroundImage', "url(" + url + ")");
            });
        }
    }
    </script>

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
<div id="wrap" class="bg_w">
    <!-- inc header s -->
    <!-- header -->
<header id="header">
    <!-- header flex-->
    <div class="hd_flex">
        <div class="area_flex">
            <ul>
                <li>
                    <a href="./login/login.jsp">�α���</a>
                    </li>
                <li>
                    <a href="./join/join1.jsp">ȸ������</a>
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
                <h1><a href="home.jsp"><span class="blind">�Ѽ�</span></a></h1>
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
                                    <li class="active"><a href="./brand/story.jsp">�귣�� ���丮</a></li>
                                    <li><a href="./brand/philosophy.jsp">�귣�� ö��</a></li>
                                    <li><a href="./brand/legacy.jsp">�귣�� ����</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="./brand/esg.jsp">ESG�濵�̶�?</a></li>
                                    <li><a href="./brand/philosophy.jsp">ȯ�溸ȣ(Environment)</a></li>
                                    <li><a href="./hansot/social.jsp">��ȸ����(Social)</a></li>
                                    <li><a href="./brand/esg.jsp">�����濵(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="./menu/menu_list.jsp">��ü�޴�</a></li>
                                    <li><a href="./menu/material.jsp">����� �̾߱�</a></li>
                                    <li><a href="./menu/chancha.jsp">�����������Ŀ��</a></li>
                                    <li><a href="./menu/menu_order.jsp">��ü �ֹ�</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="./store/store_find.jsp">�ֺ�����ã��</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="./event/event_list.jsp">�� ���� �̺�Ʈ</a></li>
                                    <li><a href="./event/store_event_list.jsp">�ű��� �����̺�Ʈ</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="./franchise/hansot_store.jsp">Why �Ѽ� ������</a></li>
                                    <li><a href="./franchise/success.jsp">��������</a></li>
                                    <li><a href="./franchise/process.jsp">â����������</a></li>
                                    <li><a href="./franchise/calc.jsp">���� â�� ���</a></li>
                                    <li><a href="./franchise/qna.jsp">â������</a></li>
                                    <li><a href="./franchise/briefing.jsp">â������ȸ ��������û</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="./hansot/promise.jsp">�Ѽ��� ���</a></li>
                                    <li><a href="./hansot/vision.jsp">�Ѽ��� ����</a></li>
                                    <li><a href="./hansot/history.jsp">����&amp;����</a></li>
                                    <li><a href="./hansot/news_list.jsp">�Ѽ� NEWS</a></li>
                                    <li><a href="./hansot/location.jsp">���ô� ��</a></li>
                                    <li><a href="./footer/faq_list.jsp">������</a></li>
                                    <li class="h_last"><a href="./footer/incruit.jsp">����ä��</a></li>
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
    <div id="container" class="main_page">
        
<div class="content main">
    <!-- group_order -->
    <section class="main_wrap">
        <!-- main_visual -->
        <div class="main_visual_wrap mo_tr swiper-container">
            <div class="swiper-wrapper">
                <!-- visual01 -->
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/4a0eaaf7ea794a25b0163d04ced9039020181102033706.jpg" data-web-url="https://www.hsd.co.kr/images/442d1c8edf06454295d988f5452929ee20181102033658.jpg"
                >
                    <a href="https://www.hsd.co.kr/event/event_view/330?pageSize=12&pageNo=1&cate=&_csrf=5a077947-74f7-4107-8154-cdadbee12d41" class="view_blind"><span class="blind">�ڼ�������</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/9867b5e11e084385aa1e95ba205cd49420181102120449.png" data-web-url="https://www.hsd.co.kr/images/0f001e20a88a4a3384110a36c32afd3320181102072425.jpg"
                >
                    <a href="https://www.hsd.co.kr/event/event_view/328?pageSize=12&pageNo=1&cate=&_csrf=5a077947-74f7-4107-8154-cdadbee12d41" class="view_blind"><span class="blind">�ڼ�������</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/9dfd2049160f4e8c8cd52046dcdef43a20181101014200.png" data-web-url="https://www.hsd.co.kr/images/0b2983ab96cc4ed2bc46b39e8faf6b9b20181101014155.png"
                >
                    <a href="https://www.hsd.co.kr/event/event_view/329?pageSize=12&pageNo=1&cate=&_csrf=5a077947-74f7-4107-8154-cdadbee12d41" class="view_blind"><span class="blind">�ڼ�������</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/d1145b55529c4809a5fa70f3a632642820181001084105.jpg" data-web-url="https://www.hsd.co.kr/images/eaf1b5afcd73456593c793172bd1d64d20181001084101.jpg"
                >
                    <a href="https://www.hsd.co.kr/menu/menu_view/159?cate1=2&cate2=28" class="view_blind"><span class="blind">�ڼ�������</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/c173dc2818fd4a809693e6495770922820180322021857.jpg" data-web-url="https://www.hsd.co.kr/images/1558b495de1e4fcbbc5bf3c2d618c77f20180322021854.jpg"
                >
                    <a href="https://www.hsd.co.kr/franchise/briefing" class="view_blind"><span class="blind">�ڼ�������</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/e6f137da3b0347308b84f7aa5cde49a920180530060321.jpg" data-web-url="https://www.hsd.co.kr/images/b523770db3e243d6bbdbb7935d0e648d20180530060318.jpg"
                >
                    <a href="https://www.hsd.co.kr/brand/story" class="view_blind"><span class="blind">�ڼ�������</span></a>
                    </div>
                <!-- //visual01 -->
            </div>
            <!-- Pagination -->
            <div class="pagi_wrap">
                <div class="pagi_cont">
                    <div class="swiper-pagination"></div>
                    <!-- play,stop -->
                    <div class="btn_ps">
                        <a href="javascript:toggleSwiperAutoplay();"><span class="blind">swiper start/stop</span></a>
                    </div>
                    <!-- //play,stop -->
                </div>
            </div>
            <!-- //Pagination -->
        </div>
        <!-- //main_visual -->
        <!-- content01 -->
        <div class="main_cont_01">
            <div class="main_cont_wrap mo_tr">
                <!-- ��ü�޴� -->
                <div class="area_sc first">
                    <a href="./menu/menu_list.jsp" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
                            <img src="./assets/images/main/main_img_01.jpg" alt="��ü�޴� �̹���">
                        </span>
                        <figcaption>
                            <p class="sc_tit fz_02">
                                <span class="s_block">���� �̻��� ��ġ�� ���</span>
                                <span class="s_block">�پ��� �޴��� Ȯ���� ������</span>
                            </p>
                            <span class="sc_txt">�Ѽ� �޴�</span>
                        </figcaption>
                    </figure>
                </div>
                <!-- //��ü�޴� -->
                <!-- �ֺ�����ã�� -->
                <div class="area_sc">
                    <a href="./store/store_find.jsp" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
                            <img src="./assets/images/main/main_img_02.jpg" alt="�ֺ�����ã�� �̹���">
                        </span>
                        <figcaption>
                            <p class="sc_tit fz_02">
                                <span class="s_block">�� ���� �ѳ��� ��ٸ��� �ִ�</span>
                                <span class="s_block">����� �Ѽ� ������ ã�ƺ�����</span>
                            </p>
                            <span class="sc_txt">�ֺ�����ã��</span>
                        </figcaption>
                    </figure>
                </div>
                <!-- //�ֺ�����ã�� -->
            </div>
        </div>
        <!-- //content01 -->
        <!-- content02 -->
        <div class="main_cont_02">
            <div class="main_cont_wrap mo_tr">
                <!-- �Ѽ� intro -->
                <div class="main_intro">
                    <h2 class="h2_int fz_01">
                        <span class="s_block">�������ֿ��Ե�</span>
                        <span class="s_block">����� �Ѽ��Դϴ�</span>
                    </h2>
                    <p class="int_tit">
                        <span class="s_block">���ִԵ��� ���� �������� �帮�� ����</span>
                        <span class="s_block">�������ֿ� �������� �����ϴ� �Ѽ�!</span>
                        <span class="s_block">������ �������� ��� ��ξֶ��� �Բ� �մϴ�.</span>
                    </p>
                </div>
                <!-- //�Ѽ� intro -->
                <div class="to_wrap">
                    <!-- why�Ѽ� ������ -->
                    <div class="area_sc first">
                        <a href="./franchise/hansot_store.jsp" class="sc_link"></a>
                        <figure class="sc_wrap">
                            <span class="sc_img">
                                <img src="./assets/images/main/main_img_03.jpg" alt="why�Ѽ� ������ �̹���">
                            </span>
                            <figcaption>
                                <p class="sc_tit fz_02">
                                    <span class="s_block">�Ѽ��� ������ ���� ���ִԵ���</span>
                                    <span class="s_block">������ ���� �����մϴ�</span>
                                </p>
                                <span class="sc_txt">Why �Ѽ� ������</span>
                            </figcaption>
                        </figure>
                    </div>
                    <!-- //why�Ѽ� ������ -->
                    <!-- �������� -->
                    <div class="area_sc">
                        <a href="./franchise/success.jsp" class="sc_link"></a>
                        <figure class="sc_wrap">
                            <span class="sc_img">
                                <img src="./assets/images/main/main_img_04.jpg" alt="�������� �̹���">
                            </span>
                            <figcaption>
                                <p class="sc_tit fz_02">
                                    <span class="s_block">�Ѽܰ� �Բ��ϴ� �������ֵ���</span>
                                    <span class="s_block">���� ���丮�Դϴ�</span>
                                </p>
                                <span class="sc_txt">��������</span>
                            </figcaption>
                        </figure>
                    </div>
                    <!-- //�������� -->
                </div>
            </div>
        </div>
        <!-- //content02 -->
        <!-- content03 -->
        <div class="main_cont_03">
            <!-- full bg -->
            <div class="main_hansot">
                <div class="main_hansot_bg">
                </div>
                <!-- content -->
                <div class="main_cont_wrap">
                    <!-- text -->
                    <div class="main_info mo_version">
                        <h2 class="h2_info fz_01">
                            <span class="s_block">����� �ܹ��� ����</span>
                            <span class="s_block">�Ѽ��� ��Ű��,</span>
                            <span class="s_block">Ű������ �͵�</span>
                        </h2>
                        <p class="info_tit">
                            <span class="s_block">�Ѽ��� '������ ���ö����� ������ȸ�� �����Ѵ�' ���</span>
                            <span class="s_block">����̳� �Ʒ�, �� ������ �ֿ켱���� �ϸ� ������</span>
                            <span class="s_block">���� ����Ḹ ����ϴ� ���ѹα� �ܽ����ձ�� ������</span>
                            <span class="s_block">�����ϴ� �۷ι� ���տܽı�� �Դϴ�.</span>
                        </p>
                        <!-- btn -->
                        <div class="btn_wrap btn_info">
                            <span class="btn btn_st04"><a href="./brand/philosophy.jsp" class="c_06">�귣�� ö��</a></span>
                        </div>
                        <!-- //btn -->
                    </div>
                    <!-- //text -->
                </div>
                <!-- content -->
            </div>
            <!-- //full bg -->
        </div>
        <!-- //content03 -->
        <!-- content04 -->
        <div class="main_cont_04">
            <div class="main_cont_wrap">
                <div class="area_sc">
                    <a href="./menu/material.jsp" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
                            <img src="./assets/images/main/main_img_05.jpg" alt="����� �̹���">
                        </span>
                        <figcaption>
                            <h2 class="h2_mt fz_01">
                                <span class="s_block">����� �տ�����</span>
                                <span class="s_block">�Ѿ���</span>
                                <span class="s_block">��Ż�������ϴ�</span>
                            </h2>
                            <p class="sc_tit">
                                <span class="s_block">���� ������ �ڿ� ȯ��ӿ��� ���� ����ᰡ</span>
                                <span class="s_block">�ƴϸ� �Ѽ��� �� �� �����ϴ�.</span>
                                <span class="s_block">��� ������ ���е��� �Ƚ��ϰ� ��� �� �ֵ���</span>
                                <span class="s_block">������ ���� �Ʒ� �����˴ϴ�.</span>
                            </p>
                            <span class="sc_txt">������̾߱�</span>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
        <!-- //content04 -->
    </section>
    <!-- //group_order -->
</div>

<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">�� ���� �̾߱�</h2>
    <ul>
        <li>
            <a href="./hansot/promise.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="./assets/images/common/more_hansot.jpg" alt="�Ѽ��� ���" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�Ѽ��� ���</h3>
                    <h3 class="h3_tit_o">�Ѽ��� ���</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="./event/event_list.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="./assets/images/common/more_event.jpg" alt="�¶��� �̺�Ʈ" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�¶��� �̺�Ʈ</h3>
                    <h3 class="h3_tit_o">�¶��� �̺�Ʈ</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="./hansot/news_list.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="./assets/images/common/more_news.jpg" alt="�Ѽ� NEWS" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�Ѽ� NEWS</h3>
                    <h3 class="h3_tit_o">�Ѽ� NEWS</h3>
                </figcaption>
            </figure>
        </li>
    </ul>
</div>
<!--// more_cont-->
<script type="text/javascript">
    //mainSwiper
    var mainSwiper = new Swiper('.main_visual_wrap.swiper-container', {
        simulateTouch: false,
        pagination: '.swiper-pagination',
        paginationClickable: true,
        loop: true,
        autoplay: 5000,
        autoplayDisableOnInteraction: false
    });

    // Toggle mainSwiper Autoplay
    function toggleSwiperAutoplay() {
        if(mainSwiper.autoplaying) {
            // �ߴ�
            mainSwiper.stopAutoplay();
            $('.btn_ps').addClass('on');
        } else {
            // ����
            mainSwiper.startAutoplay();
            $('.btn_ps').removeClass('on');
        }
    }
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
                <li class="first_be off"><a href="./footer/incruit.jsp">����ä��</a></li>
                <li class="off"><a href="./footer/partners.jsp">���¾�ü���</a></li>
                <li class="mo_bl"><a href="./footer/notice_list.jsp">��������</a></li>
                <li><a href="./footer/faq_list.jsp">�� ����</a></li>
                <li class="mo_bl"><a href="./footer/policy.jsp"><strong>����������޹�ħ</strong></a></li>
                <li><a href="./footer/agreement.jsp">�̿���</a></li>
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