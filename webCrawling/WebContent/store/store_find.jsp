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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3caca266-b988-4ce5-a3db-343784207d4a" /><title>�Ѽ� > STORE > �ֺ�����ã��</title>

    <link rel="icon" href="../assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/ui.pop.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/ui.store.css" />
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

    

    <link rel="stylesheet" type="text/css" href="../assets/css/ui.menu.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/jquery.mCustomScrollbar.min.css"/>
    <script type="text/javascript" src="../assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

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
                <h1><a href="../home.jsp"><span class="blind">�Ѽ�</span></a></h1>
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
        
<div class="content store">
    <!-- store_find -->
    <section class="store_find">
        <div class="store_wrap">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_01 mo_version">�ֺ�����ã��</h2>
                <!-- �ֺ�����ã�� Form -->
                <form id="searchForm" name="searchForm" action="../store/store_find.jsp" method="get" onsubmit="searchStore(1);return false;"><input type="hidden" id="idx" name="idx" value=""/>
                    <dl class="store_form mo_version" id="map_position">
                        <div class="in_box">
                            <dl class="in_box_th">
                                <dt class="blind">�ֺ�����ã��</dt>
                                <!-- ��/�� ���� -->
                                <dd class="store_select">
                                <span class="select">
                                    <select class="classic" title="��/�� ���� ����" id="sido" name="sido">
                                        <option value="">��/�� ����</option>
                                    </select>
                                </span>
                                </dd>
                                <!-- //��/�� ���� -->
                                <!-- ��/�� ���� -->
                                <dd class="store_select last_selcet">
                                <span class="select">
                                    <select class="classic" title="��/�� ���� ����" id="gungoo" name="gungoo">
                                        <option value="">��/�� ����</option>
                                    </select>
                                </span>
                                </dd>
                                <!-- //��/�� ���� -->
                                <!-- �˻�â -->
                                    <dd class="store_search">
                                    <div class="in_box">
                                    <span class="form text">
                                        <input type="text" maxlength="16" id="searchKeyword" name="searchKeyword">
                                        <label for="searchKeyword">�˻��� �Է�</label>
                                        <a href="#none" onclick="searchStore(1);return false;"
                                           class="btn_overlap se_box"><span class="blind">�˻�������</span></a>
                                    </span>
                                    </div>
                                </dd>
                                <!-- //�˻�â -->
                                <!-- btn -->
                                <dd class="btn_store">
                                    <div class="btn_wrap">
                                        <span class="btn btn_st03"><a href="#none"
                                                                      onclick="searchStore(1);return false;"
                                                                      class="c_02" id="btn_search">����ã��</a></span>
                                    </div>
                                </dd>
                                <!-- //btn -->
                            </dl>
                        </div>
                    </dl>
                <div>
</div></form><!-- //�ֺ�����ã�� Form -->
            </div>
            <!-- //title -->
            <!-- map -->
            <div class="store_map">
                <div class="map_img" id="map">
                </div>
            </div>
            <!-- //map -->
        </div>
    </section>
    <!-- //store_find -->

    <!--�˻� ��� ���̺�-->
    <section class="store_search_result">
        <div class="table-wrapper">
            <table class="store_table">
            </table>
        </div>

        <div class="pager">
            <!-- page -->
            <!-- //page -->
        </div>

    </section>

    <!-- �ű� ������ -->
    <section class="store_new">
        <div class="store_new_wrap">
            <h2 class="h2_tit fz_01">
                <span class="s_block">�Ѽ���</span>
                <span class="s_block"><em class="f_b">�ű� ������</em>��</span>
                <span class="s_block">�Ұ��մϴ�</span>
            </h2>
            <div class="store_new_list">

                <div class="indi_wrap">
                    <!-- page -->
                    <!-- //page -->
                </div>
                <!-- //page, btn -->
            </div>
        </div>
    </section>
    <!-- //�ű� ������ -->
</div>

<!-- �˾� -->
<div id="map_popup" style="display:none;">
    <div class="marker_wrap">
        <div class="store_info_wrap" style="display:block;">
            <div class="store_info_de">
                <h3 class="name" id="pop_store_name"></h3>
                <p class="info_add" id="pop_store_address"></p>
                <p class="info_call" id="pop_store_phone"></p>
                <div class="detail">
                    <a href="javascript:openLayerPopup('pop-store');" class="btn_de">�ڼ��� ����</a>
                </div>
                <a href="#none" class="btn_close" onclick="closeOverlay();"><span class="blind">close</span></a>
            </div>
        </div>
    </div>
</div>
<!-- // �˾�-->

<!-- �ڼ������� popup -->
<div class="pop-wrap" id="pop-store" style="display:none">
    <dl class="pop-store-wrap">
        <dt class="pop-header fz_02"><span id="pop2_store_name"></span>
            <a href="javascript:closeLayerPopup();" class="btnp-close">close</a>
        </dt>
        <dd class="pop-box">
            <div class="pop-cont">
                <div class="pop-msg">
                    <dl class="pop-store-info">
                        <dt>�ּ�</dt>
                        <dd id="pop2_store_address"></dd>
                        <dt>��ȭ��ȣ</dt>
                        <dd id="pop2_store_phone"></dd>
                        <dt>�����ð�</dt>
                        <dd id="pop2_store_business_hour"></dd>
                    </dl>
                    <!-- �����̺�Ʈ -->
                    <dl class="shop_event">
                        <dt>�ű��� ���� �̺�Ʈ</dt>
                        <dd id="pop2_store_event"></dd>
                    </dl>
                    <!-- //�����̺�Ʈ -->
                    <!-- �¼�/���� -->
                    <dl class="shop_etc">
                        <dt><span class="blind">�¼�����</span></dt>
                        <dd class="seat" id="pop2_store_seat"></dd>
                        <dt><span class="blind">��������</span></dt>
                        <dd class="car" id="pop2_store_car"></dd>
                    </dl>
                    <!-- //�¼�/���� -->
                </div>
            </div>
        </dd>
    </dl>
</div>
<!-- // �ڼ������� popup -->

<!-- �˻���� ������� popup -->
<div class="pop-wrap" id="pop-search" style="display:none">
    <dl class="pop-search-wrap">
        <dt class="pop-header fz_02"></dt>
        <dd class="pop-box">
            <div class="pop-cont">
                <div class="pop-msg">
                    �˻������ �����ϴ�.
                </div>
                <a href="javascript:closeLayerPopup();" class="btnp-close">Ȯ��</a>
            </div>
        </dd>
    </dl>
</div>
<!-- //�˻���� ������� popup -->

<script type="text/javascript">
  $(function () {
    mapResize();
    currentLoc();
    newStore(1);    // �ű� ������
  });

  var useCurrentLoc = true;
  var lat, lng;
  var map, markerOptions, infowindow, contentString;
  var mapContainer = document.getElementById("map"); // ������ ǥ���� div
  var eventStoreIdx = $.trim('');    // �����̺�Ʈ���� �Ѿ�� idx
  var markerList = [];

  // ������ġ
  function currentLoc() {

    if (eventStoreIdx != "" && !isNaN(parseInt(eventStoreIdx))) {
      chanageLoc(eventStoreIdx);
    } else {
      lat = 37.4964502;   // ��ġ �˻��ȵɽ� �⺻���� : ��������
      lng = 127.0278032;

      // HTML5�� geolocation���� ����� �� �ִ��� Ȯ���մϴ�
      if (navigator.geolocation) {
        // GeoLocation�� �̿��ؼ� ���� ��ġ�� ���ɴϴ�
        navigator.geolocation.getCurrentPosition(function (position) {
          lat = position.coords.latitude; // ���� ����
          lng = position.coords.longitude; // ���� �浵
        });
      }

      loadMap();
    }
  }

  // ��������
  function loadMap() {
    var loc = new naver.maps.LatLng(lat, lng);
    var mapOption = {
      center: loc.destinationPoint(0, 500), // ������ �߽���ǥ
      zoom: 9, // ������ Ȯ�� ����
      minZoom: 3, // ������ �ּ� ����
      logoControl: false,        // naver �ΰ�
      mapDataControl: false      // ���۱� ��Ʈ��
    };

    // ������ �����Ѵ�
    map = new naver.maps.Map(mapContainer, mapOption);
  }

  // ����â����
  function makeOverlay(idx) {
    closeOverlay();
    $.getJSON("/api/store_detail/" + idx, function (rst) {

      var data = rst[0];
      var event = rst[1];

      $("#pop_store_name, #pop2_store_name").text(data.name);
      $("#pop_store_address, #pop2_store_address").text(data.address);
      $("#pop_store_phone, #pop2_store_phone").text(tss.util.phoneFormat(data.phoneNumber));
      $("#pop2_store_business_hour").html(tss.util.nl2br(data.businessHour));

      $("#pop2_store_event").text("");
      if (event.length > 0) {
        var event_content = "";
        $.each(event, function (ekey, eval) {
          event_content += eval.title + "<br/>";
        });
        $("#pop2_store_event").html(event_content);
      } else {
        $("#pop2_store_event").text("�̺�Ʈ�� �����ϴ�.");
      }

      if (data.seatYn == 'Y') $("#pop2_store_seat").removeClass("off");
      else $("#pop2_store_seat").addClass("off");

      if (data.parkingYn == 'Y') $("#pop2_store_car").removeClass("off");
      else $("#pop2_store_car").addClass("off");

      contentString = $("#map_popup").html();
      var moveLatLon = new naver.maps.LatLng(data.lat, data.lng);
      infowindow = new naver.maps.InfoWindow({
        content: contentString,
        position: moveLatLon,
        pixelOffset: new naver.maps.Point(-22, -57),
        disableAnchor: true
      });

      infowindow.open(map);
      //$(".store_info_wrap").show();


      // Ŭ���� ������ �߽����� ������ �̵�
      //map.setCenter(moveLatLon);
      var moveLatLon = new naver.maps.LatLng(data.lat, data.lng);
      map.panTo(moveLatLon);
    });
  }

  // ����â�ݱ�
  function closeOverlay() {
    if (infowindow != null) infowindow.close();
  }

  // ����������
  function mapResize() {
    var rate = window.innerWidth <= 1023 ? 0.9 : 0.598;
    var w = $(".store_wrap").width();
    var h = w * rate;


    mapContainer.style.width = w + 'px';
    mapContainer.style.height = h + 'px';
  }

  $(window).on("resize", function () {
    mapResize();
  });

  // ����ã��
  function searchStore(pageNo) {
    useCurrentLoc = false;
    $("#idx").val("");
    /*console.log($("input[name='searchCondition']:checked").val());
    if($("input[name='searchCondition']:checked").val() == 'address') { //�ּҷ� �˻�

    } else { //��������� �˻�

    }*/

    for (var i = 0 ; i < markerList.length ; i++) {
      markerList[i].setMap(null);
    }


    $.getJSON("/api/store_search?" + $("#searchForm").serialize(), function (data) {
      if (data.length > 0) {

        $.each(data, function (key, val) {
          // ������ ��Ŀ�� �����ϰ� ǥ���Ѵ�.
          markerOptions = {
            position: new naver.maps.LatLng(val.lat, val.lng).destinationPoint(0, 0),
            map: map,
            icon: {
              url: '../assets/images/common/icon_map.png',
              size: new naver.maps.Size(50, 52),
              scaledSize: new naver.maps.Size(42, 52),

            }
          };

          // ��Ŀ�� Ŭ���̺�Ʈ ���
          var marker = new naver.maps.Marker(markerOptions);
          naver.maps.Event.addListener(marker, 'click', function () {
            // �������� ����
            makeOverlay(val.idx);
          });

          markerList.push(marker);

        });
      }

    });

    renderSearchResult(pageNo);

  }

  //����ã�� ����Ʈ ����
  function renderSearchResult(pageNo) {
    $.getJSON("/api/store_search/" + pageNo + "?" + $("#searchForm").serialize(), function (data) {
      console.log(data);

      var list = "";

      if (data.list.length > 0) {

        list += '<tr>';
        list += ' <th>�����</th>';
        list += ' <th>����ó</th>';
        list += ' <th>�ּ�</th>';
        list += '<tr>';

        $.each(data.list, function (key, val) {

          list += '<tr>';
          list += ' <td class="store_name"><a href="#none" onclick="makeOverlay(' + val["idx"] + ');">' + val["name"] + '</a></td>';
          list += ' <td>' + tss.util.phoneFormat(val["phoneNumber"]) + '</td>';
          list += ' <td>' + val["address"] + '</td>';
          list += '<tr>';

        });

        $(".store_table > tbody > tr").remove();
        $(".store_table").prepend(list);
        searchPaging(data.pagination);
        $(".store_search_result").show();


        var moveLatLon = new naver.maps.LatLng(data.list[0].lat, data.list[0].lng);
        map.setCenter(moveLatLon);

      } else {
        openLayerPopup('pop-search');
        $(".store_search_result").hide();
      }

    });
  }

  // �ű� ������ _ ��ġ����
  function chanageLoc(idx) {
    useCurrentLoc = false;
    $("#idx").val(idx);
    loadMap();

    $.getJSON("/api/store_search?" + $("#searchForm").serialize(), function (data) {
      if (data.length > 0) {

        $.each(data, function (key, val) {
          // ������ ��Ŀ�� �����ϰ� ǥ���Ѵ�.
          console.log(val)

          markerOptions = {
            position: new naver.maps.LatLng(val.lat, val.lng).destinationPoint(0, 0),
            map: map,
            icon: {
              url: '../assets/images/common/icon_map.png',
              size: new naver.maps.Size(50, 52),
              scaledSize: new naver.maps.Size(42, 52),

            }
          };

          // ��Ŀ�� Ŭ���̺�Ʈ ���
          var marker = new naver.maps.Marker(markerOptions);
          naver.maps.Event.addListener(marker, 'click', function () {
            // �������� ����
            makeOverlay(val.idx);
          });

          markerList.push(marker);

        });

        // ��Ŀ�� �߽��� �̵� ��ŵ�ϴ�.
        if (useCurrentLoc === false) {
          lat = data[0].lat;
          lng = data[0].lng;
        }

        makeOverlay(data[0].idx);
      }

    });

    // ��ũ�� ��ġ �̵�
    var offset = $("#map_position").offset();
    $("html, body").animate({scrollTop: offset.top}, 400);
  }


  // �ű� ������
  function newStore(pageNo) {
    $.ajax({
      type: 'POST',
      url: "/api/store_new/" + pageNo,
      headers: {
        Accept: "application/json; charset=utf-8",
        "Content-Type": "application/json; charset=utf-8"
      },
      dataType: "json"
    }).done(function (data) {

      var list = "";
      if (data.list.length > 0) {

        $.each(data.list, function (key, val) {

          var dd = getFormattedDate(new Date(val["openDt"]));
          var opendt = dd.replace(/-/gi, ".").substring(2);

          list += '<li>';
          list += '   <p class="new_date">' + opendt + ' OPEN</p>';
          list += '   <div class="new_info">';
          list += '   <h3 class="h3_tit fz_02 f_b">' + val["name"] + '</h3>';
          list += '   <p class="new_add"><span>' + val["address"] + '</span></p>';
          list += '   <p class="new_call">' + tss.util.phoneFormat(val["phoneNumber"]) + '</p>';
          list += '   <dl>';
          list += '       <dt><span>OPEN EVENT</span></dt>';

          if (val["openEvent"] != null) {
            list += '       <dd><span>' + val["openEvent"] + '</span></dd>';
          } else {
            list += '       <dd><span>�̺�Ʈ�� �����ϴ�</span></dd>';
          }
          list += '   </dl>';
          list += '   <a href="#none" class="location" onclick="chanageLoc(' + val["idx"] + ');">��ġ����</a>';
          list += '   </div>';
          list += '</li>';

        });

        $(".store_new_list > ul").remove();
        $(".store_new_list").prepend("<ul>" + list + "</ul>");
        paging(data.pagination);

      } else {
        $(".store_new").hide();
      }

    }).fail(function () {
      $(".store_new").hide();
    });
  }

  // �űԸ��� ����¡
  function paging(data) {

    var txt = '';
    txt += '<div class="pageinate">';
    txt += '    <div class="cont">';

    // ����������
    if (data.prevPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr prev off">����������</a>';
    } else {
      txt += '        <a href="javascript:newStore(' + data.prevPageNo + ')" class="arr prev">����������</a>';
    }

    for (var i = data.startPageNo; i <= data.endPageNo; i++) {
      if (data.currentPageNo == i) {
        txt += '        <a href="#none" class="active">' + i + '</a>';
      } else {
        txt += '        <a href="javascript:newStore(' + i + ')">' + i + '</a>';
      }
    }

    // ����������
    if (data.lastPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr next off">����������</a>';
    } else {
      txt += '        <a href="javascript:newStore(' + data.nextPageNo + ')" class="arr next">����������</a>';
    }
    txt += '    </div>';
    txt += '</div>';

    $(".indi_wrap > div").remove();
    $(".indi_wrap").append(txt);

  }

  // ���� �˻���� ����¡
  function searchPaging(data) {

    var txt = '';
    txt += '<div class="pageinate">';
    txt += '    <div class="cont">';

    // ����������
    if (data.prevPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr prev off">����������</a>';
    } else {
      txt += '        <a href="javascript:renderSearchResult(' + data.prevPageNo + ')" class="arr prev">����������</a>';
    }

    for (var i = data.startPageNo; i <= data.endPageNo; i++) {
      if (data.currentPageNo == i) {
        txt += '        <a href="#none" class="active">' + i + '</a>';
      } else {
        txt += '        <a href="javascript:renderSearchResult(' + i + ')">' + i + '</a>';
      }
    }

    // ����������
    if (data.lastPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr next off">����������</a>';
    } else {
      txt += '        <a href="javascript:renderSearchResult(' + data.nextPageNo + ')" class="arr next">����������</a>';
    }
    txt += '    </div>';
    txt += '</div>';

    $(".pager > div").remove();
    $(".pager").append(txt);

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