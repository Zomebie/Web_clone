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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="c02695ee-6b30-4778-b84a-e5a01c61e9ed" /><title>����</title>

    <link rel="icon" href="assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css" />
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

<script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="assets/js/ui.common.js"></script>
<script type="text/javascript" src="assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="assets/js/TweenMax.min.js"></script>
<script type="text/javascript" src="assets/js/tss.js"></script>
<script type="text/javascript" src="assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="assets/js/fileupload/jquery.fileupload.js"></script>
<script type="text/javascript" src="assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>
<!-- moment js api -->
<script type="text/javascript" src="assets/js/moment.js"></script>
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

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.hansot.css"/>

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
                    <a href="login.do">�α���</a>
                    </li>
                <li>
                    <a href="join.do">ȸ������</a>
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
                <h1><a href="home.go"><span class="blind">�Ѽ�</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- ����� �α���/ȸ������ -->
                <div class="m_area_flex">
							<ul>
								<li><a href="login.do">�α���</a></li>
								<li><a href="join.do">ȸ������</a></li>
							</ul>
						</div>
                <!-- //����� �α���/ȸ������ -->

                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="story.go">�귣�� ���丮</a></li>
                                    <li><a href="philosophy.go">�귣�� ö��</a></li>
                                    <li><a href="legacy.go">�귣�� ����</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="esg.go">ESG�濵�̶�?</a></li>
                                    <li><a href="philosophy.go">ȯ�溸ȣ(Environment)</a></li>
                                    <li><a href="social.go">��ȸ����(Social)</a></li>
                                    <li><a href="esg.go">�����濵(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="menu_list.go">��ü�޴�</a></li>
                                    <li><a href="material.go">����� �̾߱�</a></li>
                                    <li><a href="chancha.go">�����������Ŀ��</a></li>
                                    <li><a href="menu_order.go">��ü �ֹ�</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="store_find.go">�ֺ�����ã��</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="event_list.go">�� ���� �̺�Ʈ</a></li>
                                    <li><a href="store_event_list.go">�ű��� �����̺�Ʈ</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="hansot_store.go">Why �Ѽ� ������</a></li>
                                    <li><a href="success.go">��������</a></li>
                                    <li><a href="process.go">â����������</a></li>
                                    <li><a href="calc.go">���� â�� ���</a></li>
                                    <li><a href="qna.go">â������</a></li>
                                    <li><a href="briefing.go">â������ȸ ��������û</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="promise.go">�Ѽ��� ���</a></li>
                                    <li><a href="vision.go">�Ѽ��� ����</a></li>
                                    <li><a href="history.go">����&amp;����</a></li>
                                    <li><a href="news_list.go">�Ѽ� NEWS</a></li>
                                    <li><a href="location.go">���ô� ��</a></li>
                                    <li><a href="faq_list.go">������</a></li>
                                    <li class="h_last"><a href="incruit.go">����ä��</a></li>
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
    <section class="award">
        <!-- ���� -->
        <div class="award_wrap tab_st01">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_02 mo_version">����������</h2>
                <div class="tab_wrap mo_version">
                    <ul class="tab_menu">
                        <li><a href="history.go">����</a></li>
                        <li class="active"><a href="#none">����</a></li>
                    </ul>
                </div>
            </div>
            <!-- //title -->
            <!-- award_list -->
            <div class="award_list_wrap mo_tr">
                <!-- 2018 -->
                <div class="year_wrap y_2018">
                    <h3 class="h3_tit fz_02">2018</h3>
                    <ul>
                        <li class="award_18">
                            <div>
                                <p class="award_txt fz_03">����� �귣�� ���</p>
                                <p class="award_tit fz_02">4�� ���� ����</p>
                                <span>�߾��Ϻ� ����</span>
                            </div>
                        </li>
                        <li class="award_17">
                            <div>
                                <p class="award_txt fz_03">�Һ��ڿ��� �ŷڹ޴� ���Ѻ귣�� ���</p>
                                <p class="award_tit fz_02">����</p>
                                <span>�����Ϻ� ����</span>
                            </div>
                        </li>
                        <li class="award_16">
                            <div>
                                <p class="award_txt fz_03">�����귣�� ���</p>
                                <p class="award_tit fz_02">����</p>
                                <span>�����Ϻ� ����</span>
                            </div>
                        </li>
                        <li class="award_15">
                            <div>
                                <p class="award_txt fz_03">�ѱ��� ���� ����޴� �귣�� ���</p>
                                <p class="award_tit fz_02">7�� ���� ����</p>
                                <span>�������� ����</span>
                            </div>
                        </li>
                        <li class="award_14">
                            <div>
                                <p class="award_txt fz_03">2018 100�� ����������</p>
                                <p class="award_tit fz_02">7�� ���� ����</p>
                                <span>���ϰ��� ����</span>
                            </div>
                        </li>
                        <li class="award_13">
                            <div>
                                <p class="award_txt fz_03">���ѹα� ��ǰ�귣�� ���</p>
                                <p class="award_tit fz_02">3�� ���� ����</p>
                                <span>�ѱ����� ����</span>
                            </div>
                        </li>
                        <li class="award_12">
                            <div>
                                <p class="award_txt fz_03">�Һ��ڼ��� �ְ��� �귣�� ���</p>
                                <p class="award_tit fz_02">3�� ���� ����</p>
                                <span>�߾��Ϻ� ����</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- //2018 -->
                <!-- 2017 -->
                <div class="year_wrap y_2017">
                    <h3 class="h3_tit fz_02">2017</h3>
                    <ul>
                        <li class="award_10">
                            <div>
                                <p class="award_txt fz_03">��������ڸ��ƴ��</p>
                                <p class="award_tit fz_02">����</p>
                                <span>�ѱ����ͳ���������ȸ ����</span>
                            </div>
                        </li>
                        <li class="award_11">
                            <div>
                                <p class="award_txt fz_03">��Ÿ�귣����</p>
                                <p class="award_tit fz_02">4�� ���� ����</p>
                                <span>���ϰ��� ����</span>
                            </div>
                        </li>
                        <li class="award_01">
                            <div>
                                <p class="award_txt fz_03">2017 100�� ����������</p>
                                <p class="award_tit fz_02">6�� ���� ����</p>
                                <span>���ϰ��� ����</span>
                            </div>
                        </li>
                        <li class="award_02">
                            <div>
                                <p class="award_txt fz_03">�ѱ��� ���� ����޴� �귣�� ���</p>
                                <p class="award_tit fz_02">6�� ���� ����</p>
                                <span>�������� ����</span>
                            </div>
                        </li>
                        <li class="award_03">
                            <div>
                                <p class="award_txt fz_03">����� �귣�� ���</p>
                                <p class="award_tit fz_02">3�� ���� ����</p>
                                <span>�߾��Ϻ�, ���ڳ�̽�Ʈ ����</span>
                            </div>
                        </li>
                        <li class="award_04">
                            <div>
                                <p class="award_txt fz_03">�ѱ� �Һ��� �������� 1��</p>
                                <p class="award_tit fz_02">3�� ���� ����</p>
                                <span>�Ѱ����Ͻ� ����</span>
                            </div>
                        </li>
                        <li class="award_05">
                            <div>
                                <p class="award_txt fz_03">���ѹα� ��ǰ�귣�� ���</p>
                                <p class="award_tit fz_02">2�� ���� ����</p>
                                <span>�ѱ����� ����</span>
                            </div>
                        </li>
                        <li class="award_06">
                            <div>
                                <p class="award_txt fz_03">�Һ��ڼ��� �ְ��� �귣�� ���</p>
                                <p class="award_tit fz_02">2�� ���� ����</p>
                                <span>�߾��Ϻ� ����</span>
                            </div>
                        </li>
                        <li class="award_08">
                            <div>
                                <p class="award_txt fz_03">�Һ����� ���� �ְ��� �귣�� ���</p>
                                <p class="award_tit fz_02">3�� ���� ����</p>
                                <span>�߾��Ϻ� ����</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- //2017 -->
                <!-- 2016 -->
                <div class="year_wrap y_2016">
                    <h3 class="h3_tit fz_02">2016</h3>
                    <ul>
                        <li class="award_06">
                            <div>
                                <p class="award_txt fz_03">�Һ��ڼ��� �ְ��� �귣�� ���</p>
                                <p class="award_tit fz_02">����</p>
                                <span>�߾��Ϻ� ����</span>
                            </div>
                        </li>
                        <li class="award_02">
                            <div>
                                <p class="award_txt fz_03">�ѱ��� ���� ����޴� �귣�� ���</p>
                                <p class="award_tit fz_02">5�� ���� ����</p>
                                <span>�������� ����</span>
                            </div>
                        </li>
                        <li class="award_05">
                            <div>
                                <p class="award_txt fz_03">���ѹα� ��ǰ�귣�� ���</p>
                                <p class="award_tit fz_02">����</p>
                                <span>�ѱ����� ����</span>
                            </div>
                        </li>
                        <li class="award_07">
                            <div>
                                <p class="award_txt fz_03">�� ���� �귣�� ���� 1��</p>
                                <p class="award_tit fz_02">����</p>
                                <span>�ѱ��귣�� ����</span>
                            </div>
                        </li>
                        <li class="award_08">
                            <div>
                                <p class="award_txt fz_03">�Һ����� ���� �ְ��� �귣�� ���</p>
                                <p class="award_tit fz_02">2�� ���� ����</p>
                                <span>�߾��Ϻ� ����</span>
                            </div>
                        </li>
                        <li class="award_01">
                            <div>
                                <p class="award_txt fz_03">2016�� 100�� ����������</p>
                                <p class="award_tit fz_02">5�� ���� ����</p>
                                <span>���ϰ��� ����</span>
                            </div>
                        </li>
                        <li class="award_04">
                            <div>
                                <p class="award_txt fz_03">�ѱ� �Һ��� �������� 1��</p>
                                <p class="award_tit fz_02">2�� ���� ����</p>
                                <span>�Ѱ����Ͻ� ����</span>
                            </div>
                        </li>
                        <li class="award_03">
                            <div>
                                <p class="award_txt fz_03">����� �귣�� ���</p>
                                <p class="award_tit fz_02">2�� ���� ����</p>
                                <span>�߾��Ϻ�, ���ڳ�̽�Ʈ ����</span>
                            </div>
                        </li>
                        <li class="award_09">
                            <div>
                                <p class="award_txt fz_03">��Ÿ�귣�� ���</p>
                                <p class="award_tit fz_02">3�� ���� ����</p>
                                <span>���ϰ��� ����</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- //2016 -->
            </div>
            <!-- //award_list -->
        </div>
        <!-- //���� -->
    </section>
</div>

<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">�� ���� �̾߱�</h2>
    <ul>
        <li>
            <a href="story.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_story.jpg" alt="�귣�� ���丮" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ���丮</h3>
                    <h3 class="h3_tit_o">�귣�� ���丮</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="philosophy.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_philosophy.jpg" alt="�귣�� ö��" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ö��</h3>
                    <h3 class="h3_tit_o">�귣�� ö��</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="legacy.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_legacy.jpg" alt="�귣�� ����" />
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
                <li class="first_be off"><a href="incruit.go">����ä��</a></li>
                <li class="off"><a href="partners.go">���¾�ü���</a></li>
                <li class="mo_bl"><a href="notice_list.go">��������</a></li>
                <li><a href="faq_list.go">�� ����</a></li>
                <li class="mo_bl"><a href="policy.go"><strong>����������޹�ħ</strong></a></li>
                <li><a href="agreement.go">�̿���</a></li>
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