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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3a1f9029-2dc0-42ff-bbc3-227a8384a395" /><title>�Ѽܵ��ö� > ȸ������</title>
    
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

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.join.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.min.css"/>

<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
                <h1><a href="/"><span class="blind">�Ѽ�</span></a></h1>
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
        
<div class="content join">
    <section class="join_step_01 mo_version">
        <!-- ȸ������_������� -->
        <div class="join_step_wrap">
            <h2 class="h2_tit h2_01">ȸ������</h2>
            <div class="join_step_cont cont_st01">
                <!-- join_left -->
                <div class="join_tit">
                    <h3 class="h3_tit">�������</h3>
                    <!-- pc -->
                    <p class="pc_s_block">
                        <span class="s_block">ȸ�������� ���ؼ� <em class="emphasis">�̿��� ��</em> </span>
                        <span class="s_block"> <em class="emphasis">�������� ���� �� �̿�</em>�� ����</span>
                        <span class="s_block">�ȳ��� �а� <em class="emphasis">����</em>���ּ���.</span>
                    </p>
                    <!-- //pc -->
                    <!-- mobile -->
                    <p class="mo_s_block">
                        <span class="s_block">ȸ�������� ���ؼ�</span>
                        <span class="s_block"><em class="emphasis">�̿��� �� �������� ���� �� �̿�</em>�� ����</span>
                        <span class="s_block">�ȳ��� �а� <em class="emphasis">����</em>���ּ���.</span>
                    </p>
                    <!-- //mobile -->
                </div>
                <!-- //join_left -->
                <!-- join_right -->
                <div class="join_sub">

                    <form id="joinForm" name="joinForm" action="join2.jsp" method="post"><h4 class="h4_tit">�̿���</h4>
                    <div class="textarea_wrap cont">
                        <div class="cont_area">
                            <!-- �̿��� cont-->
<div class="agree_cont">
    <!-- list01-->
    <div class="list">
        <h3 class="h3_tit">��1�� ��Ģ</h3>
        <!-- 1�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 1 �� (����)</h4>
            <p class="list_txt">�� ����� (��)�Ѽ�(���� "ȸ��"�� �մϴ�)�� �����ϴ� ������Ʈ �� �ֹ��� ����(���� "����"�� �մϴ�)�� �̿����� �� ����, ��Ÿ �ʿ��� ������ �������� �������� �մϴ�.</p>
        </div>
        <!-- //1�� -->
        <!-- 2�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 2 �� (����� ȿ�°� ����)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� �� ����� �� ������ ȸ�簡 ������Ʈ �� �ֹ��ۿ� �Խ��ϰų� ��Ÿ�� ������� ȸ������ ���������ν� �� ȿ���� �߻��մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� �ո����� ������ �ִ� ��� �� ����� ������ �� ������, ����� ����� ��1�װ� ���� ������� �Խ� �Ǵ� ���������ν� ȿ���� �߻��մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� ����� ����� �������� ������ �������� ���� �̿��� �ߴ��ϰ� �̿����� ������ �� �ֽ��ϴ�. ����� ȿ�¹߻��� ������ ������� ���� �̿��� ����� ������׿� ������ ������ ���ֵ˴ϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //2�� -->
        <!-- 3�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 3 �� (��� �� ��Ģ)</h4>
            <p class="list_txt">�� ����� ��õ��� ���� ������ ������ű⺻��, ������Ż����, ������Ÿ� �̿����� � ���� ����, ���ڰŷ��⺻��, ���ڼ���� �� ��Ÿ ���� ������ ������ �����ϴ�. </p>
        </div>
        <!-- //3�� -->
        <!-- 4�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 4 �� (����� ����)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� �� ������� ����ϴ� ����� ���Ǵ� ������ �����ϴ�.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1.ȸ�� : ȸ��� ���� �̿뿡 ���� ����� ü���ϰ� �̿��� ���̵� �ο� ���� ��</li>
                            <li>
                                2.���̵�(ID) : ȸ�� �ĺ��� ȸ���� ���� �̿��� ���Ͽ� ȸ���� �����ϰ� ȸ�簡 �����ϴ� ����, ���� �Ǵ� ������ ����
                            </li>
                            <li>
                                3.��й�ȣ : ȸ���� ���� Ȯ�ΰ� ��� ��ȣ�� ���� ȸ�� �ڽ��� ������ ����, ���� �Ǵ� ������ ����
                            </li>
                            <li>
                                4.�̿��� : ���񽺸� �����ޱ� ���Ͽ� �� ������� ȸ��� ȸ�� ���� ü���ϴ� ���
                            </li>
                            <li>
                                5.���� : ȸ�� �Ǵ� ȸ���� ���� ���� �� �̿����� �ؾ��ϴ� ��
                            </li>
                            <li>
                                6.��� : ������ �������� ������ ��Ȱ�� ��� ���Ͽ� ȸ�翡�� ������ ���
                            </li>
                        </ol>
                    </div>

                </li>
                <li>
                    <p class="list_txt">�� ��1���� �� ������ ����� ���Ǵ� �ŷ� ���� �� ���� ���ɿ� �����ϴ�.</p>
                </li>
            </ol>
        </div>
        <!-- //4�� -->
    </div>
    <!-- //list01 -->
    <!-- list02-->
    <div class="list">
        <h3 class="h3_tit">��2�� ���� �̿����� ü�� </h3>
        <!-- 5�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 5 �� (������ ����)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ�簡 ȸ������ �����ϴ� ���񽺴� �⺻���񽺿� �ΰ����� ������ �����մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ������ ��ü���� ������ ������ ȸ�簡 �� ��� �Ǵ� ����, �̿� �ȳ� ��� ������ ���ϴ� �ٿ� �����ϴ�.</p>
                </li>
            </ol>
        </div>
        <!-- //5�� -->
        <!-- 6�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 6 �� (�̿����� ����)</h4>
            <p class="list_txt">�̿����� ���񽺸� �̿��ϰ��� �ϴ� ���� �̿� ��û�� ���� ȸ���� �̿� �³����� �����մϴ�. </p>
        </div>
        <!-- //6�� -->
        <!-- 7�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 7 �� (�̿� ��û)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ���񽺸� �̿��ϰ��� �ϴ� �ڴ� ȸ�� ������Ʈ �� �ֹ����� "ȸ������" �޴����� ȸ�� ����� �����ϸ� ȸ�� ������ ���Խ�û ��Ŀ� �䱸�ϴ� ������ �����ϰ� '����' ��ư�� ������ �˴ϴ�.</p>
                    <p class="list_txt">�� ȸ�� ������ �ϸ� �� ����� �����ϴ� ������ ���ֵ˴ϴ�. </p>
                    <p class="list_txt">�� �¶��� ���� ��û ��Ŀ� �����ϴ� ��� ȸ�� ������ ������ ��ġ�ϴ� �������� ������ ���ֵ˴ϴ�. �Ǹ��̳� ������ ��ġ�ϴ� ������ �Է����� ���� �ڴ� ������ ��ȣ�� ���� �� ������ ������ �̿��� ���� ���� �� �ֽ��ϴ�.</p>
                </li>
            </ol>
        </div>
        <!-- //7�� -->
        <!-- 8�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 8 �� (�̿� ��û�� �³�)</h4>
            <p class="list_txt">ȸ��� ��7���� ������ ���� �̿� ��û�� ���Ͽ� ��Ģ������ ��� �̿� ��û�� �³��ϸ�, �̿� �³��� ����� ȸ������ ���ڿ������� �뺸�մϴ�.</p>
        </div>
        <!-- //8�� -->
        <!-- 9�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 9 �� (�̿� ��û�� �ҽ³� �� ����)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ��� ���� �� ȣ�� �ش��ϴ� ��� �̿� ��û�� ���Ͽ� �³��� ���� ���� �� �ֽ��ϴ�.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ����, ����, �㹫�� ���� ��Ÿ �̿��û�� ������ ���� ����� �ٸ� ���ǿ� ���� ��û</li>
                            <li>
                                2. �̿� ��û �� ���Խ�û ��Ļ��� ���� ������ ������ �Ͽ� ��û�� ���
                            </li>
                            <li>
                                3. �̿��û�ڰ� ȸ���� ä���ڷμ� ä���� �������� �ʰ� �ִ� ���
                            </li>
                            <li>
                                4. �̿��û�ڰ� �� ��� ��23�� ��2�׿� �ǰ��Ͽ� �̿����� ������ ���� �ִ� ���
                            </li>
                            <li>
                                5. ��Ÿ �̿��û���� ��å������ �̿� �³��� ����� ���
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ���� �� ȣ�� �ش��ϴ� ��쿡�� �� ������ �ؼҵ� ������ �̿� �³��� ������ �� ������, �� ������ ������Ʈ �� �ֹ��ۿ� �����մϴ�.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ������ ������ ���� ���</li>
                            <li>
                                2. ��� �� �Ǵ� ���� ���� �� ������ �ִ� ���
                            </li>
                        </ol>
                    </div>
                </li>
            </ol>
        </div>
        <!-- //9�� -->
        <!-- 10�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 10 �� (�̿��� ������ ����)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ���� �̿� ��û �� ������ ������ ����Ǿ��� ��쿡 �¶������� �����մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� �̿� ��û �� ��������� �̺��� �Ǵ� ���� �������� ���Ͽ� �߻��Ǵ� ������ ���� å���� ȸ������ �ֽ��ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ���� �� ȣ�� �ش��ϴ� ��쿡 ���ǿ� ���Ͽ� ���̵��� ����� �����ϰų� ȸ���� ��û�� ���Ͽ� ���̵� ������ �� �ֽ��ϴ�. </p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ���̵� ��ǳ����� ���ϴ� ���</li>
                            <li>
                                2. ���̵� ȸ���� ���Ȱ�� ħ���� ����� �ִ� ���
                            </li>
                            <li>
                                3. ��Ÿ �ո����� ������ �ִ� ���
                            </li>
                        </ol>
                    </div>
                </li>
            </ol>
        </div>
        <!-- //10�� -->
    </div>
    <!-- //list02 -->
    <!-- list03-->
    <div class="list">
        <h3 class="h3_tit">��3�� ������ �̿�</h3>
        <!-- 11�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 11 �� (������ �̿� ����)</h4>
            <p class="list_txt">ȸ��� ��8���� ������ ���� �̿��û�� �³��� ���κ��� ��� ���񽺸� �����մϴ�. �ٸ�, ȸ���� ������ �Ǵ� ������� ��ַ� ���Ͽ� ��� ���񽺸� �������� ���ϴ� ���, ȸ��� �̸� ȸ���� ������Ʈ �� �ֹ��ۿ� �����ϰų� ȸ������ �����Ͽ��� �մϴ�. </p>
        </div>
        <!-- //11�� -->
        <!-- 12�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 12 �� (������ ����)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">��ȸ�簡 �����ϴ� ���񽺴� ������ �����ϴ�.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ��� ��ǰ�� �Ұ�</li>
                            <li>
                                2. ���� �̺�Ʈ
                            </li>
                            <li>
                                3. ��ǰ ����ó �ȳ�
                            </li>
                            <li>
                                4. �Խ��� ����
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� �ʿ��� ��� ������ ������ �߰� �Ǵ� ������ �� ������, �߰� �Ǵ� ���� ������ ȸ���� �� �ֹ��ۿ� �����մϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //12�� -->
        <!-- 13�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 13 �� (������ �̿� ���)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ������ ǥ�õ� ���� ���񽺸� ������ ��� ���񽺴� ȸ���鿡�� ����� �����˴ϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //13�� -->
    </div>
    <!-- //list03 -->
    <!-- list04-->
    <div class="list">
        <h3 class="h3_tit">��4�� ��������� �Ǹ��� �ǹ�</h3>
        <!-- 14�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 14 �� (���� ������ ��ȣ)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ��� ������Ÿ��̿����� � ���� ���� �� ���� ���ɿ� ���� �̿� ��û �� �������� ȸ���� ���� ����, ���Ŀ� �߰��� �����޴� ���� ���� �� ���� �̿� �� �����Ǵ� ���� ������ ��ȣ�մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ���� ������ ���� ���� �� �̿� ������ ���� �� ȣ�� ������, ȸ��� ȸ���� ������ ���� ���� ���� �� ������ �Ѿ�� ���� ������ ���� �� �̿��� ���� �ʽ��ϴ�.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ������ ����</li>
                            <li>
                                2. ���񽺸� ���� ȸ���� ����
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ���� ������ ȸ���� ������ �������� ���� ��3�ڿ��� �������� �ʽ��ϴ�. �ٸ�, ���� �� ȣ�� ��쿡�� ȸ���� ������ ���� ���� ��3�ڿ��� ȸ ���� ���� ������ ������ �� �ֽ��ϴ�.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ���ɿ� Ư���� ������ �ִ� ���</li>
                            <li>2. ���� ������ ���� ��������� ���Ͽ� �ʿ��� ���</li>
                            <li>3. ����ۼ�, �м����� �Ǵ� �������縦 ���Ͽ� �ʿ��� ���μ� Ư�� ������ �ĺ��� �� ���� ���·� �����Ǵ� ���</li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� �������� �ڽ��� ���� ������ ������ �� ������, ������ ������ �� �ֽ��ϴ�. ���� �� ������ ��Ģ������ �̿� ��û�� ������ ������� �ϸ�, �ڼ��� ����� ������ ���� "����������ȣ��å" �� �̿�ȳ��� ���� �ٿ� �����ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� �������� ���� ������ ���� �� �̿뿡 ���� ����, ���� �Ǵ� ��õ� ������ �ʰ��ϴ� �̿� �� ��3�� ������ ���� ���Ǹ� öȸ�� �� ������, �� ��� ȸ��� ��ü ���� �ʿ��� ��ġ�� ���մϴ�. �ٸ� ȸ���� ���� ������ ���� �� �̿뿡 ���� ���Ǹ� öȸ�� ��쿡 ȸ��� �̿����� ������ �� �ֽ��ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� ���� ���� ����å���ڸ� ����� ����������ȣ�� ���� ��Ÿ ������ ������ ���� "����������ȣ��å"�� �����Ͽ� �����մϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //14�� -->
        <!-- 15�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 15 �� (ȸ���� �ǹ�)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ��� �� ����� ���ϴ� �ٿ� ���� �������̰� �������� ���񽺸� �����ϴ� �� �ּ��� ���ؾ� �մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ȸ���� �ſ������� ������ ���νŻ������� ���ȿ� ���Ͽ� ����� ���� ��ġ�� �����ϰ� ������ ������ �������ν� ȸ���� �������� ���ȿ� �ּ��� ���ؾ� �մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ȸ�����κ��� ����Ǵ� �ǰ� �� �Ҹ������� �����ϴٰ� �ǴܵǴ� ��� �� ������ �ż��� ó���Ͽ��� �մϴ�. �ٸ�, �ż��� ó���� ����� ��쿡�� ȸ������ �� ������ ó�� ������ �����Ͽ��� �մϴ�. </p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� �̿����� ü��, �������� ���� �� ���� �� ȸ������ ��� ���� ���� �� ���� � �־� ȸ������ ���Ǹ� �����ϵ��� ����մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� �����ϰ� ������ ��� �������� ���� ������ ���Ͽ� ������ ���񽺸� ���������ν� �������� �ش�ȭ�Ͽ� ���ͳ� ����Ͻ� ������ �⿩�ϵ��� �մϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //15�� -->
        <!-- 16�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 16 �� (ȸ���� �ǹ�)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ���� ���񽺸� �̿��Կ� �־� ���� �� ȣ�� ������ �Ͽ����� �ȵ˴ϴ�.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ����, ����, �㹫�� ���� ��Ÿ ȸ���� ���� ����� �ٸ� ���ǿ� ���� �̿� ��û�� �ϴ� ����</li>
                            <li>2. ������ ���������� �����ϰų� �ߺ��Ͽ� �����ϴ� ����</li>
                            <li>3. Ÿ���� ���� ���̵� �� ��й�ȣ�� �����ϴ� ����</li>
                            <li>4. Ÿ���� ���������� ħ���ϴ� ����</li>
                            <li>5. Ÿ���� ���� �Ѽ��ϰų� ���Ȱ�� ħ���ϴ� ����</li>
                            <li>6. �Խ����̳� ��ȭ�� ��� �弳, ��� �Ǵ� ����, �������� ������ ǥ���� �ϴ� ����</li>
                            <li>7. ���� �Ǵ� ���Ƿ� ������ ������ ���� �Ǵ� �����ϴ� ����</li>
                            <li>8. �ٷ��� ������ �����ϰų� ������ �Ǵ� ������ ������ ������ �ݺ������� �Խ��Ͽ� ������ �������� ��� �����ϴ� ����</li>
                            <li>9. ���� ������ �������� �ǻ翡 ���Ͽ� ���ڿ������� �Ͻÿ� �ٷ����� �Ǵ� ���������� �����ϰų� �Խ��ǿ� �Խ��Ͽ� �ٸ� ȸ���� ���� �̿��� �����ϴ� ����</li>
                            <li>10. ������ż����� ���۵��̳� ���� ���� �ı��� �����ϴ� ��ǻ�� ���̷��� ���� �����ϴ� ����</li>
                            <li>11. ȸ���� ���񽺸� �̿��Ͽ� ���� ������ ȸ���� ���� �³� ���� ���� �Ǵ� �����Ű�ų� ��������� �̿��ϴ� ����</li>
                            <li>12. ȸ���� �������� �濵 �Ǵ� ������ �����ϰų� ������ ��� �����ϴ� ����</li>
                            <li>13. �ҹ����ſ�� �ϴ� ����</li>
                            <li>14. ��Ÿ ��ǳ����� ���ϰų� ���ù��� �� �� ����� �����Ͽ� ȸ�簡 ���� �̿� ���ǿ� �����ϴ� ����</li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� ���̵� �� ��й�ȣ�� ������ ����� ���Ǹ� ��￩�� �մϴ�. ���̵�� ��й�ȣ�� ���� ��� ���� å���� ȸ������ ������, ȸ������ �ο��� ���̵� �� ��й�ȣ�� ���� ��Ȧ, ������뿡 ���Ͽ� �߻��ϴ� ��� ����� ���� å���� ȸ������ �ֽ��ϴ�. ȸ���� �ڽ��� ���̵� �Ǵ� ��� ��ȣ�� �����ϰ� ���� ��� �ݵ�� ȸ�翡 �� ����� �뺸�Ͽ��� �մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� ȸ���� ���� ���� ���� ���� ���񽺸� �̿��Ͽ� �������� ������ ���� ������ �Ͽ����� �ȵ˴ϴ�. �̸� ������ ���� ������ ����� ���Ͽ� ȸ��� å���� ���� ������, �̿� ���� ���� ������ ����� ȸ�翡 ���ذ� �߻��� ���, ȸ���� ȸ�翡 ���Ͽ� ���ع���� �ǹ��� ���ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� ����� ���ǰ� ���� �� ȸ���� ������ �̿� ����, ��Ÿ �̿��� ���� ������ Ÿ�ο��� �絵, ������ �� ������, �̸� �㺸�� �����ϰų� ��Ÿ ó���� �� �����ϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //16�� -->
        <!-- 17�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 17 �� (�������� ��)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ�簡 �ۼ��Ͽ� �����ϴ� ���񽺿� ���� ���۱� �� ��Ÿ ���������� ȸ�翡 ���մϴ�. ȸ���� ȸ�簡 �����ϴ� ���񽺸� ȸ���� �������� ���� ���� �������� ����, ����, ����, ����, ��� ��Ÿ ����� ���Ͽ� �̿��ϰų� ��3�ڿ��� �̿��ϰ� �Ͽ����� �ȵ˴ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���� ���񽺿� ������ �Խù�, �ڷῡ ���� �Ǹ��� å���� �Խ��� ȸ������ �ֽ��ϴ�. ȸ��� ȸ���� ������ �Խù�, �ڷῡ ���Ͽ� ���� ���� ������� ������, ������ ȸ���� ���� ���� �̸� �������� �������� ������� �ƴ��մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ��19���� �ǹ��� �����ϴ� ������ ��� �ִ� �Խù��� ���Ͽ� ���� �Ǵ� ������ ������ �����ϴ�. �̿� ���� ��ü���� ���ذ� ������ ������ ������ �����ϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //17�� -->
    </div>
    <!-- //list04 -->
    <!-- list05-->
    <div class="list">
        <h3 class="h3_tit">��5�� ������ �̿� ���� �� ����� ���� </h3>
        <!-- 18�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 18 �� (���� �̿� ���� ��)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ��� ȸ���� ��16���� �ǹ��� ������ ��� ȸ���� ���� �̿��� �Ϻ� �Ǵ� ���� ������ �� �ֽ��ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ��1���� ������ ���Ͽ� ȸ���� ���� �̿��� �����ϴ� ���, ������ ���� �� �Ⱓ �� ��ü���� ������ ������ ������ �����ϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //18�� -->
        <!-- 19�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 19 �� (�̿� ���� �� ���� ������ ����)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ��� ��18���� ������ ���Ͽ� �̿������� �ϰ��� �ϴ� ��� �� ����, �Ͻ� �� �Ⱓ�� ���� ���ڿ��� �Ǵ� ��ȭ ���� ����� ���Ͽ� �ش� ȸ�� �Ǵ� �� �븮�ο��� �����Ͽ��� �մϴ�. �ٸ� ȸ�簡 ����ϰ� �̿��� ������ �ʿ䰡 �ִٰ� �����ϴ� ��쿡�� �׷����� �ƴ��մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ��1���� ������ ���Ͽ� �̿� ������ ������ �ްų� ����ϰ� �̿� ���� ��ġ�� ���� ȸ�� �Ǵ� �� �븮���� ���ڿ��� �Ǵ� ������ ����� ���Ͽ� ȸ�翡 ���Ǹ� ������ �� �ֽ��ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ��2���� ������ ���� ���ǽ�û�� ���Ͽ� �� Ȯ���� ���� �Ⱓ���� �̿������� �Ͻ� ������ �� ������, �� ����� ���� ȸ�� �Ǵ� �� �븮�ο��� �����մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� �̿� ���� �Ⱓ �� �� ������ �ؼҵǴ� ���� �ո����� ������ �ִ� ��� �̿� ���� ��ġ�� �����մϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //19�� -->
        <!-- 20�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 20 �� (����� ����)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ����, �̿����� �����ϰ��� �ϴ� ���, ȸ�� ������Ʈ �� �ֹ����� "ȸ��Ż��" �޴����� Ż�� ��û�� �Ͽ��� �մϴ�. ȸ��� ȸ���� Ż�� ��û�� ���� �ð� ���� ó���Ͽ��� �մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���, ȸ���� ��19���� �ǹ��� ������ ��� ���� ������ ���� �̿����� �����ϰ� ȸ��Ż�� ó���� �� �ֽ��ϴ�. �ٸ�, �� ������ ���Ͽ� ȸ���� �������� �濵�̳� ���� Ȱ�� �Ǵ� ���� ��� ������ �ִ� ��� �������� ���� ����� �����ϰ� Ż�� ó���� �� �� �ֽ��ϴ�. �� ��ü���� ���ذ� ������ ������ ������ �����ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ���, ��2�׿� ���Ͽ� Ż�� ó���� ȸ���� �ٽ� �̿� ��û�� �ϴ� ���, �׿� ���� �³��� �����ϰų� ���� �Ⱓ �� �³��� ������ �� �ֽ��ϴ�.</p>
                </li>
            </ol>
        </div>
        <!-- //20�� -->
        <!-- 21�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 21 �� (��å)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ��� ����, �纯 �� ����������, õ������, �Ⱓ��Ż������ ���� ���� �ߴ�, ���°��� �ߴ�, ��Ŀ�� ħ��, ��ǻ�� ���̷��� ��Ÿ �̿� ������ �������� ���� ȸ�� �ý����� �۵��Ҵ� ��Ÿ ȸ���� ��å ���� ���� ȸ�簡 ���񽺸� ������ �� ���� ��� ȸ��� �׷� ���� å���� ���մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� �̿���� ȸ���� ���񽺷κ��� ����ϴ� ������ ���� ���ϰų� ������ �ڷῡ ���� ��缱�� �Ǵ� �̿����� �߻��ϴ� ���� � ���ؼ��� å���� �����˴ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ȸ���� �Խ�, ������ ���� �Ǵ� �ڷ��� ����� �����Ͽ����� å���� �δ����� �ʽ��ϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ȸ��� ȸ�� ��ȣ�� �Ǵ� ȸ���� ��3�� ��ȣ���� ���񽺸� �Ű������� �׵� ���̿� �߻��� ���￡ ������ �ǹ��� ������, �̷� ���� ��� ���ص� ����� å���� �����ϴ�. </p>
                </li>
            </ol>
        </div>
        <!-- //21�� -->
        <!-- 22�� -->
        <div class="ag_list">
            <h4 class="h4_tit">�� 22 �� (������ �ذ�)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">�� ȸ��� ȸ���� ���񽺿� �����Ͽ� �߻��� ������ �����ϰ� �ذ��ϱ� ���Ͽ� �ʿ��� ��� ����� �Ͽ��� �մϴ�.</p>
                </li>
                <li>
                    <p class="list_txt">�� ��1���� �������� �ұ��ϰ� ȸ��� ȸ�� ���̿� �Ҽ��� ����� ���, �Ҽ��� ȸ���� ���� �������� �����ϴ� ������ ���ҹ������� �մϴ�</p>
                </li>
            </ol>
        </div>
        <!-- //22�� -->
    </div>
    <!-- //list05 -->
</div>
<!-- //�̿��� cont --></div>

                        <!-- ���� -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_use" name="agree_use" value="Y">
                            <label for="agree_use">�����մϴ�</label>
                            <span class="ck_txt">(�ʼ�)</span>
                        </span>
                        <!-- //���� -->
                    </div>

                    <h4 class="h4_tit prive">�������� ���� �� Ȱ�뵿��</h4>
                    <div class="textarea_wrap">
                        <div class="cont_area">
                            <!-- �������� cont -->
<div class="agree_cont" style="white-space: pre-line">
    1. �������� : ȸ������, ���, ���� ��û ��

    2. �����ϴ� �������� �׸�
    - �ʼ��׸� : ����, ���̵�, ��й�ȣ, �޴�����ȣ, �̸���
    - �����׸� : ����

    3. �����Ⱓ : ȸ�� Ż���

    4. ����������ü�ڴ� �������� ���� �� �̿뿡 ���� ���Ǹ� �ź��� �Ǹ��� �ֽ��ϴ�. ���Ǹ� �ź��� ��� ��Ȱ�� ���� �̿��� �Ұ����� �˷��帳�ϴ�.
</div>
<!-- //�������� cont --></div>
                        <!-- ���� -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_personal" name="agree_personal" value="Y">
                            <label for="agree_personal">�����մϴ�</label>
                            <span class="ck_txt">(�ʼ�)</span>
                        </span>
                        <!-- //���� -->
                    </div>
                    <h4 class="h4_tit prive">������ Ȱ����� ����</h4>
                    <div class="textarea_wrap">
                         <div class="cont_area">
                             <!-- �������� cont -->
<div class="agree_cont" style="white-space: pre-line">
    1. �������� : �ű� ����(��ǰ) ���� �� ���� ���� ����, �̺�Ʈ ��÷ �� �ȳ� ���� �������� ���������� ó���մϴ�.

    2. ������ �� ������ Ȱ��
    - �ʼ��׸� : ����, �̸���, ���� �̿� ���, ���� �α�, ��Ű, ���� IP ����
    - �����׸� : �޴�����ȣ

    3. �����Ⱓ : ȸ�� Ż�� �� ���� ����

    4. �����ÿ� Ȱ���ϴ� ���� ���� ������ ���������� �̿��ϸ�, �� ������ �ʰ��Ͽ� ���������� �̿��ϰų� �� 3 �ڿ��� ����, �������� �ʽ��ϴ�.
</div>
<!-- //�������� cont --></div>
                        <!-- ���� -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_3rd" name="agree_3rd" value="Y">
                            <label for="agree_3rd">�����մϴ�</label>
                            <span class="ck_txt">(����)</span>
                        </span>
                            <!-- //���� -->
                    </div>
                    <div>
<input type="hidden" name="_csrf" value="4a6b1751-f4cf-4dee-af18-69d93735802e" />
</div></form><!-- ��ü���� -->
                    <div class="all_check_wrap">
                        <span class="form checkbox pa_01">
                            <input type="checkbox" id="allchk" onclick="allchk();">
                            <label for="allchk">�� ����� ��� �����մϴ�</label>
                        </span>
                        <!-- btn -->
                        <div class="btn_wrap pa_01">
                            <span class="btn btn_st03"><a href="javascript:nextStep();" class="c_01">����</a></span>
                        </div>
                        <!--// btn -->
                    </div>
                    <!--// ��ü���� -->
                </div>
                <!-- //join_right -->
            </div>
        </div>
        <!-- //ȸ������_������� -->
    </section>
</div>

<script>
    $(function(){

        $("#agree_personal, #agree_use, #agree_3rd").on('click',function(){
            if($("#agree_use").is(":checked") && $("#agree_personal").is(":checked") && $("#agree_3rd").is(":checked")){
                $("#allchk").prop("checked", true);
            }else{
                $("#allchk").prop("checked", false);
            }
        });

    });

    // ��� ����
    function allchk(){
        if($("#allchk").is(":checked")){
            $("#joinForm :checkbox").prop("checked", true);
        }else{
            $("#joinForm :checkbox").prop("checked", false);
        }
    }

    // ����
    function nextStep(){
        if(!$("#agree_use").is(":checked")){
            alert("�̿����� ������ �ּ���.");
            $("#agree_use").focus();
            return;
        }

        if(!$("#agree_personal").is(":checked")){
            alert("�������� ��ȣ��å�� ������ �ּ���.");
            $("#agree_personal").focus();
            return;
        }

      $("#joinForm").submit();


      /*if(!$("#agree_3rd").is(":checked")){
        alert("������ Ȱ������� ������ �ּ���.");
        $("#agree_3rd").focus();
        return;
      }*/


    }


    $(".cont_area").mCustomScrollbar({
        theme: "minimal-dark",
        scrollInertia: 400
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