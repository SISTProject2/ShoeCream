<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Post 6 Headline, Post 5 Headline, Post 4 Headline">
    <meta name="description" content="">
    <title>my_addressbook</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="my_addressbook.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js"
    "="" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js"
    "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.11, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">


    <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "MyPage"
    }</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="my_addressbook">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode" data-lang="en">
<section class="u-align-center u-clearfix u-section-1" id="carousel_042d">
    <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1"></div>
    </div>
    <div class="u-list u-list-2">
        <div class="u-repeater u-repeater-2"></div>
    </div>
    <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
            <div class="u-layout-row">
                <div class="u-align-left u-container-style u-layout-cell u-size-12 u-layout-cell-1">
                    <div class="u-container-layout u-valign-top u-container-layout-1">
                        <div class="u-container-style u-group u-shape-rectangle u-white u-group-1">
                            <div class="u-container-layout u-container-layout-2">
                                <h1 class="u-text u-text-default u-text-1">
                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1"
                                       href="my_mypage.do" data-page-id="1289201052">마이 페이지</a>
                                </h1>
                                <h3 class="u-text u-text-default u-text-2">쇼핑 정보</h3>
                                <h3 class="u-text u-text-default u-text-3"><a href="../mypage/my_purchase_list.do">구매
                                    내역</a></h3>
                                <h3 class="u-text u-text-default u-text-4"><a href="../mypage/my_sell_list.do">판매 내역</a>
                                </h3>
                                <h3 class="u-text u-text-default u-text-5"><a href="../mypage/my_bookmark.do">관심 상품</a>
                                </h3>
                                <h3 class="u-text u-text-default u-text-6"><a href="../mypage/my_recently_viewed.do">최근
                                    본 상품</a></h3>
                                <h3 class="u-text u-text-default u-text-7">내 정보</h3>
                                <h3 class="u-text u-text-default u-text-8"><a href="../mypage/my_profile.do">프로필 정보</a>
                                </h3>
                                <h3 class="u-text u-text-default u-text-9"><a href="../mypage/my_addressbook.do">주소록</a>
                                </h3>
                                <h3 class="u-text u-text-default u-text-11"><a href="../mypage/my_pay_account.do">판매 정산
                                    계좌</a></h3>
                                <h3 class="u-text u-text-default u-text-12"><a href="../mypage/my_style.do">스타일</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="u-container-style u-layout-cell u-size-48 u-layout-cell-2">
                    <div class="u-container-layout u-container-layout-3">
                        <div class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-container-style u-group u-shape-rectangle u-white u-group-2">
                            <div class="u-container-layout u-container-layout-4">
                                <h3 class="u-text u-text-default u-text-12">주소록</h3>
                            </div>
                        </div>
                        <c:if test="${userProfile.adress != '' && userProfile.adress ne null && !empty userProfile.adress }">
                            <div class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-container-style u-group u-shape-rectangle u-white u-group-3">
                                <div class="u-container-layout u-container-layout-5">
                                    <a href="../mypage/delete_address.do"
                                       class="u-border-2 u-border-active-palette-5-dark-1 u-border-hover-palette-5-base u-border-palette-5-base u-btn u-btn-round u-button-style u-hover-palette-5-base u-none u-radius-15 u-text-body-color u-btn-2">삭제</a>
                                    <div class="u-border-1 u-border-palette-5-light-1 u-container-style u-group u-opacity u-opacity-45 u-palette-5-light-2 u-preserve-proportions u-radius-30 u-shape-round u-group-4">
                                        <div class="u-container-layout u-container-layout-6">
                                            <h2 class="u-text u-text-default u-text-13">
                                                <span style="font-weight: normal;">${userProfile.name}</span>
                                            </h2>
                                            <a href="https://nicepage.online"
                                               class="u-border-active-white u-border-hover-white u-border-none u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-3"> ${userProfile.tel}</a>
                                            <h4 class="u-text u-text-palette-5-dark-2 u-text-14"> ${userProfile.adress}</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:if>

                        <div class="u-container-style u-group u-shape-rectangle u-white u-group-5">
                            <div class="u-container-layout u-container-layout-7">
                                <div class="u-form u-form-1">
                                    <form action="../mypage/update_address.do" method="POST" style="padding: 10px;">
                                        <div class="u-form-group u-form-name">
                                            <label for="name-1a6e" class="u-label u-label-1">주소 입력</label>
                                            <input type="text" placeholder="주소 입력" id="name-1a6e" name="adress"
                                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white u-input-1"
                                                   required="">
                                        </div>
                                        <div class="u-align-center u-form-group u-form-submit">
                                            <a class="u-active-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-grey-50 u-hover-black u-radius-32 u-btn-4">변경하기</a>
                                            <input type="submit" value="submit" class="u-form-control-hidden">
                                        </div>
                                        <div class="u-form-send-message u-form-send-success"> Thank you! Your message
                                            has been sent.
                                        </div>
                                        <div class="u-form-send-error u-form-send-message"> Unable to send your message.
                                            Please fix errors then try again.
                                        </div>
                                        <input type="hidden" value="" name="recaptchaResponse">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="u-backlink u-clearfix u-grey-80">
    <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
    </a>
    <p class="u-text">
        <span>created with</span>
    </p>
    <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
    </a>.
</section>

</body>
</html>