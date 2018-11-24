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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="be887547-da7b-4585-86da-36d32dfb8647" /><title>���ô±�</title>

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

    

    <link rel="stylesheet" type="text/css" href="../assets/css/ui.hansot.css" />
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
                    <a href="/join/join1.jsp">ȸ������</a>
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
    <section class="location">
        <!-- ã�ƿ��ô� �� -->
        <div class="location_wrap tab_st01">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_02 mo_version">���ô� ��</h2>
                <div class="tab_wrap mo_version cont_area">
                    <ul class="tab_menu">
                        <li class="active"><a href="javascript:loadMap(0);">���ﺻ��</a></li>
                        <li><a href="javascript:loadMap(1);">�ߺλ����</a></li>
                        <li><a href="javascript:loadMap(2);">�뱸�����</a></li>
                        <li><a href="javascript:loadMap(3);">�λ�����</a></li>
                        <li><a href="javascript:loadMap(4);">ȣ�������</a></li>
                    </ul>
                </div>
            </div>
            <!-- //title -->

            <!-- ���� ���� ��ġ�ȳ� -->
            <div class="tab_cont active">
                <div class="traffic_wrap">
                    <!-- ���� api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map1" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //���� api -->
                    <div class="map_info_wrap mo_version">
                        <!-- �ּ� -->
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">���� ����</h3>
                            <p class="map_address">
                                <span class="s_block">���� ������ ������� 318 8��, 9��</span>
                                <span class="s_block call">02-585-1114</span>
                            </p>
                        </div>
                        <!-- //�ּ� -->
                        <!-- ������ȳ� -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">����ö �̿��</h4>
                                <dl>
                                    <dt>2ȣ��</dt>
                                    <dd>������ 4�� �ⱸ</dd>
                                    <dt>3ȣ��</dt>
                                    <dd>���翪 3�� �ⱸ</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">���� �̿��</h4>
                                <dl>
                                    <dt>�Ϲ�</dt>
                                    <dd>500-5</dd>
                                    <dt>����</dt>
                                    <dd>140, 400, 402, 407, 420, 421, 440, 441, 462, 470, 471, 541, 542, N37</dd>
                                    <dt>����</dt>
                                    <dd>
                                        <span class="s_block">500-2, 1005, 1005-1, 1151, 1241, 1251, 1550-1, 1550-3, 1551, 1551B, 1560, </span>
                                        <span class="s_block">3030, 3200, 5001, 5001-1, 5002, 5003, 5006, 5100, 6001, 6501, 9004, 9700</span>
                                    </dd>
                                    <dt>����</dt>
                                    <dd>8101</dd>
                                    <dt>����</dt>
                                    <dd>9100, 9200, 9201, 9300, 9404, 9408, 9500, 9501, 9711A, 9711B, 9802, M6405</dd>
                                    <dt>�ÿ�</dt>
                                    <dd>9502</dd>
                                    <dt>����</dt>
                                    <dd>6009, 6500</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //������ȳ� -->
                    </div>
                </div>
            </div>
            <!-- //���� ���� ��ġ�ȳ� -->
            <!-- �ߺ� ����� ��ġ�ȳ� -->
            <div class="tab_cont">
                <div class="traffic_wrap">
                    <!-- ���� api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map2" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //���� api -->
                    <div class="map_info_wrap mo_version">
                        <!-- �ּ� -->
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">�ߺ� �����</h3>
                            <p class="map_address">
                                <span class="s_block">���������� ���� ź�浿 792���� </span>
                                <span class="s_block">Ÿ���������� 5�� 503ȣ</span>
                                <span class="s_block call">042-624-1117</span>
                            </p>
                        </div>
                        <!-- //�ּ� -->
                        <!-- ����ȳ� -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">����ö �̿��</h4>
                                <dl>
                                    <dt>1ȣ��</dt>
                                    <dd>ź�濪 4�� �ⱸ ���� �� �Ѱ�������Ʈ�װŸ����� 500M����</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">���� �̿��</h4>
                                <dl>
                                    <dt class="blind">�Ϲ�</dt>
                                    <dd>104, 105, 106, 706, 911</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //����ȳ� -->
                    </div>
                </div>
            </div>
            <!-- //�ߺ� ����� ��ġ�ȳ� -->
            <!-- �뱸����� ��ġ�ȳ� -->
            <div class="tab_cont">
                <div class="traffic_wrap">
                    <!-- ���� api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map3" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //���� api -->
                    <div class="map_info_wrap mo_version">
                        <!-- �ּ� -->
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">�뱸 �����</h3>
                            <p class="map_address">
                                <span class="s_block">�뱸������ ���� ��õ4�� 350-7����</span>
                                <span class="s_block">�浿���� 4��</span>
                                <span class="s_block call">053-745-6114</span>
                            </p>
                        </div>
                        <!-- //�ּ� -->
                        <!-- ����ȳ� -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">����ö �̿��</h4>
                                <dl>
                                    <dt>1ȣ��</dt>
                                    <dd>���뱸�� ���� �� 2�� �ⱸ ���뱸��������� 1.3KM ����</dd>
                                    <dt>2ȣ��</dt>
                                    <dd>��� ���� �� 4�� �ⱸ ���뱸������ ��� 1.2KM ����</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">���� �̿��</h4>
                                <dl>
                                    <dt class="blind">�Ϲ�</dt>
                                    <dd>508, 518, ��ȯ2, 818, 399</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //����ȳ� -->
                    </div>
                </div>
            </div>
            <!-- //�뱸����� ��ġ�ȳ� -->
            <!-- �λ����� ��ġ�ȳ� -->
            <div class="tab_cont">
                <div class="traffic_wrap">
                    <!-- ���� api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map4" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //���� api -->
                    <!-- �ּ� -->
                    <div class="map_info_wrap mo_version">
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">�λ� �����</h3>
                            <p class="map_address">
                                <span class="s_block">�λ걤���� ���� �߾Ӵ�� 236</span>
                                <span class="s_block">������� 9�� (�ʷ��� 1198-1)</span>
                                <span class="s_block call">051-804-1114</span>
                            </p>
                        </div>
                        <!-- //�ּ� -->
                        <!-- ����ȳ� -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">����ö �̿��</h4>
                                <dl>
                                    <dt>1ȣ��</dt>
                                    <dd>�λ꿪 ���� �� 10�� �ⱸ ��� 250M����</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">���� �̿��</h4>
                                <dl>
                                    <dt>�Ϲ�</dt>
                                    <dd>
                                        <span class="s_block">2, 17, 26, 27, 40, 41, 43, 59, 61, 66, 67, 82, 87, 88-1A, 88-1B, 88A, 101, 103, 134, </span>
                                        <span class="s_block">167, 190, 333, 508</span>
                                    </dd>
                                    <dt>����</dt>
                                    <dd>1000, 1001, 1003, 1004</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //����ȳ� -->
                    </div>
                </div>
            </div>
            <!-- //�λ����� ��ġ�ȳ� -->
            <!-- ȣ������� ��ġ�ȳ� -->
            <div class="tab_cont">
                <div class="traffic_wrap">
                    <!-- ���� api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map5" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //���� api -->
                    <!-- �ּ� -->
                    <div class="map_info_wrap mo_version">
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">ȣ�� �����</h3>
                            <p class="map_address">
                                <span class="s_block">���ֱ����� ���� �߾ӷ� 143,</span>
                                <span class="s_block">2��(ȣ����)</span>
                                <span class="s_block call">062-943-1114</span>
                            </p>
                        </div>
                        <!-- //�ּ� -->
                        <!-- ����ȳ� -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">����ö �̿��</h4>
                                <dl>
                                    <dt>1ȣ��</dt>
                                    <dd>�ݳ���4���� ����1ȣ�� 1�� �ⱸ</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">���� �̿��</h4>
                                <dl>
                                    <dt>����</dt>
                                    <dd>����12, ����45, �ݳ�59</dd>
                                    <dt>����</dt>
                                    <dd>����170, �۾�74, �ݳ�55, ����70, ����80</dd>
                                    <dt>����</dt>
                                    <dd>�ſ�06, ����07</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //����ȳ� -->
                    </div>
                </div>
            </div>
            <!-- //ȣ������� ��ġ�ȳ� -->
        </div>
        <!-- //ã�ƿ��ô� �� -->
    </section>
</div>

<script>
    //$(window).on("load", function(){
    $(function(){
        loadMap(0);
    });

    //});

    var latlng = [
        {lat : "37.4915804", lng : "127.0311893"},  // ���ﺻ��
        {lat : "36.3464304", lng : "127.3899069"},  // �ߺλ����
        {lat : "35.8681321", lng : "128.6303401"},  // �뱸�����
        {lat : "35.1177324", lng : "129.0415861"},  // �λ�����
        {lat : "35.1474656", lng : "126.9119342"}   // ȣ�������
    ];
    var mapContainer, map, mapOptions, position, markerOptions;

    // ��������
    function loadMap(n) {
        var lat = latlng[n].lat;
        var lng = latlng[n].lng;
        var id = $(".tab_cont.active").find(".map_img > div").attr("id");
        mapContainer = document.getElementById(id); // ������ ǥ���� div
        mapResize();

        position = new naver.maps.LatLng(lat, lng);
        mapOptions = {
            center: position,
            zoom: 10,
            logoControl : false,        // naver �ΰ�
            mapDataControl : false      // ���۱� ��Ʈ��
        };

        map = new naver.maps.Map(mapContainer, mapOptions);

        markerOptions = {
            position: position.destinationPoint(0, 0),
            map: map,
            icon: {
                url: '../assets/images/common/icon_map.png',
                size: new naver.maps.Size(42, 52),
                scaledSize: new naver.maps.Size(42, 52),
                origin: new naver.maps.Point(0, 0),
                anchor: new naver.maps.Point(25, 26)
            }
        };
        new naver.maps.Marker(markerOptions);
    }

    function mapResize(){

        var w = $(".location_wrap").width();
        var h = w * 0.427;

        mapContainer.style.width = w +'px';
        mapContainer.style.height = h + 'px';
    }

    $(window).on("resize", function(){
        mapResize();
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