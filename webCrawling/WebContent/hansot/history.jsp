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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3686d4d2-3095-4d0a-b475-9e59503b5982" /><title>����</title>

    <link rel="icon" href="../assets/images/common/favicon.ico" type="image/x-icon" />

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
    <script type="text/javascript" src="../assets/js/scrollmagic.js"></script>

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
                    <a href="../login/login.jsp">�α���</a>
                    </li>
                <li>
                    <a href="../join/join1.jsp">ȸ������</a>
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
                <h1><a href="../"><span class="blind">�Ѽ�</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- ����� �α���/ȸ������ -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="../login/login.jsp">�α���</a>
                            </li>
                        <li>
                            <a href="../join/join1.jsp">ȸ������</a>
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
                                    <li class="active"><a href="/brand/esg.jsp">ESG�濵�̶�?</a></li>
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
    <section class="history">
        <!-- ���� -->
        <div class="history_wrap tab_st01">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_02 mo_version">����������</h2>
                <div class="tab_wrap mo_version">
                    <ul class="tab_menu">
                        <li class="active"><a href="#none">����</a></li>
                        <li><a href="../hansot/award.jsp">����</a></li>
                    </ul>
                </div>
            </div>
            <!-- //title -->
            <!-- history_list -->
            <div class="history_cont mo_version">
                <h3 class="h3_tit">
                    <span class="s_block">���� 20�Ⱓ �Ѽ���</span>
                    <span class="s_block">���� ������</span>
                </h3>
                <div class="hi_list_wrap">
                    <ul>
                        <li class="ht_list right" id="ht_item21">
                            <div class="ht_wrap">
                                <h4>2017</h4>
                                <ul>
                                    <li>
                                        <span>12</span>
                                        <p>�����̾� ��ø���(�Ұ�� ������, ������ ��ġ�) ���</p>
                                    </li>
                                    <li>
                                        <span>11</span>
                                        <p>��ȣ�ڽ���, ��ġŲ����, ��ī���������  ���</p>
                                    </li>
                                    <li>
                                        <span>09</span>
                                        <p>�ͻ縶��ø��� ���</p>
                                    </li>
                                    <li>
                                        <span>07</span>
                                        <p>�Ҵߺ���� ���</p>
                                    </li>
                                    <li>
                                        <span>06</span>
                                        <p>��ǳ���ö� ���</p>
                                    </li>
                                    <li>
                                        <span>04</span>
                                        <p>��񵵽ö� ���</p>
                                    </li>
                                    <li class="line">
                                        <span>03</span>
                                        <p>
                                            <span class="s_block">���ϰ��� 2017 100�� ���������� 6�� ���� ����</span>
                                            <span class="s_block">�������� 2017 �ѱ��� ���� ����޴� �귣�� ��� 6�� ���� ����</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item20">
                            <div class="ht_wrap">
                                <h4>2016</h4>
                                <ul>
                                    <li>
                                        <p>��ä�����ưԵ��� ���</p>
                                        <span>11</span>
                                    </li>
                                    <li>
                                        <p>���̱׶��Թڽ�����ũ ���</p>
                                        <span>09</span>
                                    </li>
                                    <li class="line">
                                        <p>
                                            <span class="s_block">�����������ö� ���</span>
                                            <span class="s_block">���̿������� ������ ����</span>
                                        </p>
                                        <span>05</span>
                                    </li>
                                    <li>
                                        <p>���ð� ���</p>
                                        <span>02</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item19">
                            <div class="ht_wrap">
                                <h4>2015</h4>
                                <ul>
                                    <li>
                                        <span>07</span>
                                        <p>�������������̾����ö� ���</p>
                                    </li>
                                    <li>
                                        <span>06</span>
                                        <p>ġŲ�������ö�, ġŲ�Ұ�⵵�ö� ���</p>
                                    </li>
                                    <li>
                                        <span>04</span>
                                        <p>�Ұ������, �������������� ���</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item18">
                            <div class="ht_wrap">
                                <h4>2014</h4>
                                <ul>
                                    <li>
                                        <p>�Ұ���ġ������, ���ǹڽ�, ��ġ��ä������, ��ġ�Ұ�⵵�ö� ���</p>
                                        <span>11</span>
                                    </li>
                                    <li>
                                        <p>ġŲ���� �Ǹ� 1��2õ5�鸸�� ����</p>
                                        <span>09</span>
                                    </li>
                                    <li>
                                        <p>���������쵿, ����ġŲ������ ���</p>
                                        <span>07</span>
                                    </li>
                                    <li>
                                        <p>�Ǽӹ��� ���</p>
                                        <span>06</span>
                                    </li>
                                    <li>
                                        <p>�������ö� ���</p>
                                        <span>05</span>
                                    </li>
                                    <li>
                                        <p>������ ���</p>
                                        <span>04</span>
                                    </li>
                                    <li>
                                        <p>�ҳ������ ���</p>
                                        <span>03</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item17">
                            <div class="ht_wrap">
                                <h4>2013</h4>
                                <ul>
                                    <li>
                                        <span>09</span>
                                        <p>�߰��� ���</p>
                                    </li>
                                    <li>
                                        <span>08</span>
                                        <p>������ �Ǹ��� ����</p>
                                    </li>
                                    <li>
                                        <span>06</span>
                                        <p>�������������� ���</p>
                                    </li>
                                    <li>
                                        <span>04</span>
                                        <p>������ ���� / ����ũ ������ ���</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>��ġ���� ���</p>
                                    </li>
                                    <li class="line">
                                        <span>02</span>
                                        <p>
                                            <span class="s_block">�Ƿη� ���ö� ���</span>
                                            <span class="s_block">�λ꿪���� ������ ����</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item16">
                            <div class="ht_wrap">
                                <h4>2012</h4>
                                <ul>
                                    <li>
                                        <p>�������� Ŀ�ǻ�� ����</p>
                                        <span>11</span>
                                    </li>
                                    <li>
                                        <p>�������� ������ ����</p>
                                        <span>10</span>
                                    </li>
                                    <li>
                                        <p>�Ѽܵ��ö� ���� 600ȣ�� ����</p>
                                        <span>01</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item15">
                            <div class="ht_wrap">
                                <h4>2011</h4>
                                <ul>
                                    <li>
                                        <span>03</span>
                                        <p>�Ѽܵ��ö� ���� 500ȣ�� ����</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item14">
                            <div class="ht_wrap">
                                <h4>2009</h4>
                                <ul>
                                    <li>
                                        <span>06</span>
                                        <p>New Model ���� ������</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item13">
                            <div class="ht_wrap">
                                <h4>2008</h4>
                                <ul>
                                    <li>
                                        <p>�Ѽ� new BI��CI ����</p>
                                        <span>10</span>
                                    </li>
                                    <li>
                                        <p>�Ѽܵ��ö� ���� 400ȣ�� ����</p>
                                        <span>09</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item12">
                            <div class="ht_wrap">
                                <h4>2005</h4>
                                <ul>
                                    <li>
                                        <span>08</span>
                                        <p>���̹�쵤��, ���񵵽ö� ���</p>
                                    </li>
                                    <li>
                                        <span>05</span>
                                        <p>������ä���� ���</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item11">
                            <div class="ht_wrap">
                                <h4>2004</h4>
                                <ul>
                                    <li>
                                        <p>��Ǫ�帶�䵤�� ���</p>
                                        <span>03</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item10">
                            <div class="ht_wrap">
                                <h4>2003</h4>
                                <ul>
                                    <li>
                                        <span>10</span>
                                        <p>�����ưԵ��� ���</p>
                                    </li>
                                    <li>
                                        <span>09</span>
                                        <p>ġŲ���䵤�� ���</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>��� ���ö� �ø��� ���</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>(��)�Ѽ����� ���� ����</p>
                                    </li>
                                    <li>
                                        <span>02</span>
                                        <p>ȣ�̱ŷ� ���ö� ���</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item9">
                            <div class="ht_wrap">
                                <h4>2002</h4>
                                <ul>
                                    <li>
                                        <p>�Ѽܵ��ö� �������� ����</p>
                                        <span>01</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item8">
                            <div class="ht_wrap">
                                <h4>2001</h4>
                                <ul>
                                    <li>
                                        <p>���ĵκι� ���</p>
                                        <span>10</span>
                                    </li>
                                    <li>
                                        <p>�Ѽܵ��ö� ���� 300ȣ�� ����</p>
                                        <span>03</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item7">
                            <div class="ht_wrap">
                                <h4>1999</h4>
                                <ul>
                                    <li>
                                        <span>05</span>
                                        <p>������ġ����, ������ġ ���� ����� ���ö� ���</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>
                                            �Ѽܵ��ö� ���� 200ȣ�� ����
                                        </p>
                                    </li>
                                    <li>
                                        <span>02</span>
                                        <p>Ȳ�±���, ���İ�Ƽ ���ö� ���</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item6">
                            <div class="ht_wrap">
                                <h4>1998</h4>
                                <ul>
                                    <li>
                                        <p>â�� 5�ֳ� ���޴�(�Ұ��񵵽ö�) ���</p>
                                        <span>07</span>
                                    </li>
                                    <li>
                                        <p>ȣ��������� ����</p>
                                        <span>03</span>
                                    </li>
                                    <li>
                                        <p>�뱸������� ����</p>
                                        <span>02</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item5">
                            <div class="ht_wrap">
                                <h4>1997</h4>
                                <ul>
                                    <li class="line">
                                        <p>
                                            <span class="s_block">���� �Ÿ޴�(��¡�� ����, ���̵��ö�) ���</span>
                                            <span class="s_block">�Ѽܵ��ö� ���� 100ȣ�� ����</span>
                                        </p>
                                        <span>10</span>
                                    </li>
                                    <li>
                                        <p>����� ���ö� ź��</p>
                                        <span>09</span>
                                    </li>
                                    <li>
                                        <p>�λ������� ����</p>
                                        <span>01</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item4">
                            <div class="ht_wrap">
                                <h4>1995</h4>
                                <ul>
                                    <li>
                                        <span>11</span>
                                        <p>�����������(�ߺλ������) ����</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>�������� ���</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item3">
                            <div class="ht_wrap">
                                <h4>1994</h4>
                                <ul>
                                    <li>
                                        <span>04</span>
                                        <p>��ġ������, ġŲ�, ����ڹ�, ���ô�, Ư�����ֵ��ö� ���</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item2">
                            <div class="ht_wrap">
                                <h4>1993</h4>
                                <ul>
                                    <li>
                                        <p>�����Ĺ����� ������ ����</p>
                                        <span>12</span>
                                    </li>
                                    <li>
                                        <p>��ġ� ���ö� ���</p>
                                        <span>11</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list first" id="ht_item1">
                            <div class="ht_wrap">
                                <h4>1993</h4>
                                <ul>
                                    <li>
                                        <span>07</span>
                                        <p class="hi_tit">���Ѽ� 1ȣ�� ����</p>
                                        <p class="hi_block"><!-- 1ȣ�� ���� ���α�û�� �� --> </p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="history_progress"></div>
            </div>
            <!-- //history_list -->
        </div>
        <!-- //���� -->
    </section>
</div>

<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">�� ���� �̾߱�</h2>
    <ul>
        <li>
            <a href="/brand/story" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="/assets/images/common/more_story.jpg" alt="�귣�� ���丮" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ���丮</h3>
                    <h3 class="h3_tit_o">�귣�� ���丮</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="/brand/philosophy" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="/assets/images/common/more_philosophy.jpg" alt="�귣�� ö��" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ö��</h3>
                    <h3 class="h3_tit_o">�귣�� ö��</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="/brand/legacy" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="/assets/images/common/more_legacy.jpg" alt="�귣�� ����" />
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
<script type="text/javascript">
    $(document).ready(function () {
        var controller = new ScrollMagic.Controller();
        var history_progress  = $(".history_progress");
        setTimeout(function(){
            $(".hi_list_wrap li.ht_list").each(function(){
                var id = this.id,
                    name = "#"+id,
                    el = $(this);
                new ScrollMagic.Scene({
                    "triggerElement" : name,
                    offset: -800
                })
                .on("start", function (event) {
                    if(!$(".hi_list_wrap").hasClass("complete")) {
                        var idx = id.replace("ht_item" ,"");
                        var height = $(".history").height();
                        var top = el.position().top + 80;
                        setTimeout(function(){ el.addClass("on"); }, 1000);
                        if(idx == 1){
                            history_progress.addClass("complete");
                            history_progress.css({easing: 'snap', top: -280, duration: 1000});
                        }else{
                            history_progress.css({easing: 'snap', top: -height+top+72, duration: 500});
                        }
                    }
                })
                .addTo(controller);
            })
        }, 100);
    });
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
                <li class="first_be off"><a href="/footer/incruit">����ä��</a></li>
                <li class="off"><a href="/footer/partners">���¾�ü���</a></li>
                <li class="mo_bl"><a href="/footer/notice_list">��������</a></li>
                <li><a href="/footer/faq_list">�� ����</a></li>
                <li class="mo_bl"><a href="/footer/policy"><strong>����������޹�ħ</strong></a></li>
                <li><a href="/footer/agreement">�̿���</a></li>
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