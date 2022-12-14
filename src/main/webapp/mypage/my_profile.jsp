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
    <title>my_profile</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="my_profile.css" media="screen">
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
    <meta property="og:title" content="my_profile">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode" data-lang="en">
<header class="u-clearfix u-header u-header" id="sec-355c">
    <div class="u-clearfix u-sheet u-sheet-1"></div>
</header>
<section class="u-align-center u-clearfix u-section-1" id="carousel_042d">
    <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1"></div>
    </div>
    <div class="u-list u-list-2">
        <div class="u-repeater u-repeater-2"></div>
    </div>
    <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
            <div class="u-layout-row" style=" margin-top: 95px;">
                <div class="u-align-left u-container-style u-layout-cell u-size-12 u-layout-cell-1">
                    <div class="u-container-layout u-valign-top u-container-layout-1">
                        <div class="u-container-style u-group u-shape-rectangle u-white u-group-1">
                            <div class="u-container-layout u-container-layout-2">
                                <h1 class="u-text u-text-default u-text-1">
                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1"
                                       href="my_mypage.do" data-page-id="1289201052">?????? ?????????</a>
                                </h1>
                                <h3 class="u-text u-text-default u-text-2">?????? ??????</h3>
                                <h3 class="u-text u-text-default u-text-3"><a href="../mypage/my_purchase_list.do">??????
                                    ??????</a></h3>
                                <h3 class="u-text u-text-default u-text-4"><a href="../mypage/my_sell_list.do">?????? ??????</a>
                                </h3>
                                <h3 class="u-text u-text-default u-text-5"><a href="../mypage/likes.do">?????? ??????</a>
                                </h3>
                                <h3 class="u-text u-text-default u-text-6"><a href="../mypage/my_recently_viewed.do">??????
                                    ??? ??????</a></h3>
                                <h3 class="u-text u-text-default u-text-7">??? ??????</h3>
                                <h3 class="u-text u-text-default u-text-8"><a href="../mypage/my_profile.do">????????? ??????</a>
                                </h3>
                                <h3 class="u-text u-text-default u-text-9"><a href="../mypage/my_addressbook.do">?????????</a>
                                </h3>
                                <h3 class="u-text u-text-default u-text-10"><a href="../mypage/my_pay_account.do">?????? ??????
                                    ??????</a></h3>
                                <h3 class="u-text u-text-default u-text-11"><a href="../mypage/mypage_style.do">?????????</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="u-container-style u-layout-cell u-size-48 u-layout-cell-2">
                    <div class="u-container-layout u-container-layout-3">
                        <div class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-container-style u-group u-shape-rectangle u-white u-group-2">
                            <div class="u-container-layout u-container-layout-4">
                                <h3 class="u-text u-text-default u-text-12">????????? ??????</h3>
                            </div>
                        </div>
                        <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-1 u-container-style u-group u-shape-rectangle u-white u-group-3">
                            <div class="u-container-layout u-container-layout-5">
                                <c:if test="${userProfile.img != '' && userProfile.img ne null && !empty userProfile.img }">
                                    <img class="u-image u-image-circle u-preserve-proportions u-image-1"src="../mypage/profile_image.do"
                                         data-image-width="100" data-image-height="100">
                                </c:if>
                                <c:if test="${userProfile.img == '' && userProfile.img eq null || empty userProfile.img }">
                                    <div class="u-image u-image-circle u-preserve-proportions u-image-1" alt="" data-image-width="100" data-image-height="100"></div>
                                </c:if>
                                <h3 class="u-text u-text-default u-text-13">${nickname}</h3>
                                <h3 class="u-text u-text-default u-text-14">
                                    <span style="font-size: 20px; font-weight: normal;">${userProfile.email}</span>
                                </h3>

                                <form id="imageForm" method="post" action="../mypage/update_profileImage.do"   enctype="multipart/form-data">
                                    <label for="image"
                                           class="u-border-2 u-border-hover-palette-5-base u-border-palette-5-base u-btn u-btn-round u-button-style u-hover-palette-5-base u-none u-radius-15 u-text-body-color u-btn-2">?????????
                                        ??????</label>
                                  <input style="display: none;" type="file" name="image" id="image" accept="image">
                                </form>
                                <a href="../mypage/delete_profileImage.do"
                                   class="u-border-2 u-border-hover-palette-5-base u-border-palette-5-base u-btn u-btn-round u-button-style u-hover-palette-5-base u-none u-radius-15 u-text-body-color u-btn-3">??????</a>
                            </div>
                        </div>
                        <div class="u-container-style u-group u-shape-rectangle u-white u-group-4">
                            <div class="u-container-layout u-container-layout-6">
                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-5">
                                    <div class="u-container-layout u-container-layout-7">
                                        <h3 class="u-text u-text-default u-text-15">????????? ??????</h3>
                                    </div>
                                </div>
                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-6">
                                    <div class="u-container-layout u-container-layout-8">
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-4">?????????
                                            ??????</a>
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-5">
                                            ${userProfile.email}</a>
                                    </div>
                                </div>
                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-7">
                                    <div class="u-container-layout u-container-layout-9">
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-6">????????????</a>
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-7">
                                            ????????????????????????????????????????????????</a>
                                        <a href="#sec-53ea"
                                           class="u-border-2 u-border-hover-palette-5-base u-border-palette-5-base u-btn u-btn-round u-button-style u-dialog-link u-hover-palette-5-base u-none u-radius-15 u-text-body-color u-btn-8">??????</a>
                                    </div>
                                </div>
                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-8">
                                    <div class="u-container-layout u-container-layout-10">
                                        <h3 class="u-text u-text-default u-text-16">?????? ??????</h3>
                                    </div>
                                </div>
                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-9">
                                    <div class="u-container-layout u-container-layout-11">
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-9">?????????</a>
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-10">${nickname}</a>
                                    </div>
                                </div>
                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-10">
                                    <div class="u-container-layout u-container-layout-12">
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-11">?????????
                                            ??????</a>
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-12"
                                           rel="nofollow">${userProfile.tel}</a>
                                        <a href="#carousel_26d7"
                                           class="u-border-2 u-border-hover-palette-5-base u-border-palette-5-base u-btn u-btn-round u-button-style u-dialog-link u-hover-palette-5-base u-none u-radius-15 u-text-body-color u-btn-13">??????</a>
                                    </div>
                                </div>
                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-11">
                                    <div class="u-container-layout u-container-layout-13">
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-14">??????
                                            ?????????</a>
                                        <a href="https://nicepage.com/k/auto-mechanic-html-templates"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-15"
                                           rel="nofollow">${userProfile.s_size}</a>
                                        <a href="#carousel_b9c3"
                                           class="u-border-2 u-border-hover-palette-5-base u-border-palette-5-base u-btn u-btn-round u-button-style u-dialog-link u-hover-palette-5-base u-none u-radius-15 u-text-body-color u-btn-16">??????</a>
                                    </div>
                                </div>
                                <a href="#carousel_9e3d"
                                   class="u-active-none u-border-2 u-border-active-palette-2-dark-1 u-border-hover-palette-2-base u-border-palette-1-base u-btn u-button-style u-dialog-link u-hover-none u-none u-text-hover-palette-2-base u-text-palette-1-base u-btn-17">????????????</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
  $("#image").change(function() {
    $("#imageForm").submit();
  });
</script>


<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-4"
         id="sec-53ea">
    <div class="u-align-left u-container-style u-dialog u-radius-40 u-shape-round u-white u-dialog-1">
        <div class="u-container-layout u-valign-middle u-container-layout-1">
            <div class="u-form u-form-1">
                <form action="../mypage/update_password.do" method="POST" style="padding: 10px;">
                    <div class="u-form-group u-form-name">
                        <label for="pwd" class="u-label">????????????</label>
                        <input type="text" placeholder="????????? ???????????? ??????" id="pwd" name="pwd"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                    </div>
                    <div class="u-align-center u-form-group u-form-submit">
                        <input type="submit" class="u-btn u-btn-submit u-button-style" value="????????????">
                    </div>
                </form>
            </div>
        </div>
        <button class="u-dialog-close-button u-icon u-text-black u-icon-1">
            <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style="">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-efe9"></use>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                 xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-efe9"><rect
                    x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2"
                    height="16"></rect>
                <rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16"
                      height="2"></rect></svg>
        </button>
    </div>
</section>
<style> .u-dialog-section-4 {
    min-height: 500px;
}

.u-dialog-section-4 .u-dialog-1 {
    width: 831px;
    min-height: 300px;
    height: auto;
    margin: 327px calc(((100% - 1140px) / 2) + 139px) 60px auto;
}

.u-dialog-section-4 .u-container-layout-1 {
    padding: 30px;
}

.u-dialog-section-4 .u-form-1 {
    height: 154px;
    width: 771px;
    margin: 0;
}

.u-dialog-section-4 .u-icon-1 {
    width: 40px;
    height: 40px;
    left: auto;
    top: 20px;
    right: 20px;
    position: absolute;
    padding: 0;
}

@media (max-width: 1199px) {
    .u-dialog-section-4 .u-dialog-1 {
        margin-right: calc(((100% - 940px) / 2) + 109px);
    }
}

@media (max-width: 991px) {
    .u-dialog-section-4 .u-dialog-1 {
        width: 720px;
        margin-right: calc(((100% - 720px) / 2));
    }

    .u-dialog-section-4 .u-form-1 {
        width: 660px;
    }
}

@media (max-width: 767px) {
    .u-dialog-section-4 .u-dialog-1 {
        width: 540px;
        margin-right: calc(((100% - 540px) / 2));
    }

    .u-dialog-section-4 .u-container-layout-1 {
        padding-left: 10px;
        padding-right: 10px;
    }

    .u-dialog-section-4 .u-form-1 {
        width: 520px;
    }
}

@media (max-width: 575px) {
    .u-dialog-section-4 .u-dialog-1 {
        width: 340px;
        margin-right: calc(((100% - 340px) / 2));
    }

    .u-dialog-section-4 .u-form-1 {
        width: 320px;
    }
}</style>
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-5"
         id="carousel_26d7">
    <div class="u-align-left u-container-style u-dialog u-radius-40 u-shape-round u-white u-dialog-1">
        <div class="u-container-layout u-valign-middle u-container-layout-1">
            <div class="u-form u-form-1">
                <form action="../mypage/update_tel.do" method="POST" style="padding: 10px;">
                    <div class="u-form-group u-form-name">
                        <label for="tel" class="u-label">????????????</label>
                        <input type="text" placeholder="????????? ???????????? ??????" id="tel" name="tel"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                    </div>
                    <div class="u-align-center u-form-group u-form-submit">
                        <a class="u-btn u-btn-submit u-button-style">????????????<br>
                        </a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
                    </div>
                    <input type="hidden" value="" name="recaptchaResponse">
                </form>
            </div>
        </div>
        <button class="u-dialog-close-button u-icon u-text-black u-icon-1">
            <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style="">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-efe9"></use>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                 xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-efe9"><rect
                    x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2"
                    height="16"></rect>
                <rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16"
                      height="2"></rect></svg>
        </button>
    </div>
</section>
<style> .u-dialog-section-5 {
    min-height: 500px;
}

.u-dialog-section-5 .u-dialog-1 {
    width: 831px;
    min-height: 300px;
    margin: 328px calc(((100% - 1140px) / 2) + 139px) 60px auto;
}

.u-dialog-section-5 .u-container-layout-1 {
    padding: 30px;
}

.u-dialog-section-5 .u-form-1 {
    height: 154px;
    width: 771px;
    margin: 0;
}

.u-dialog-section-5 .u-icon-1 {
    width: 40px;
    height: 40px;
    left: auto;
    top: 20px;
    right: 20px;
    position: absolute;
    padding: 0;
}

@media (max-width: 1199px) {
    .u-dialog-section-5 .u-dialog-1 {
        margin-right: calc(((100% - 940px) / 2) + 109px);
        height: auto;
    }
}

@media (max-width: 991px) {
    .u-dialog-section-5 .u-dialog-1 {
        width: 720px;
        margin-right: calc(((100% - 720px) / 2));
    }

    .u-dialog-section-5 .u-form-1 {
        width: 660px;
    }
}

@media (max-width: 767px) {
    .u-dialog-section-5 .u-dialog-1 {
        width: 540px;
        margin-right: calc(((100% - 540px) / 2));
    }

    .u-dialog-section-5 .u-container-layout-1 {
        padding-left: 10px;
        padding-right: 10px;
    }

    .u-dialog-section-5 .u-form-1 {
        width: 520px;
    }
}

@media (max-width: 575px) {
    .u-dialog-section-5 .u-dialog-1 {
        width: 340px;
        margin-right: calc(((100% - 340px) / 2));
    }

    .u-dialog-section-5 .u-form-1 {
        width: 320px;
    }
}</style>
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-6"
         id="carousel_b9c3">
    <div class="u-align-left u-container-style u-dialog u-radius-40 u-shape-round u-white u-dialog-1">
        <div class="u-container-layout u-valign-middle u-container-layout-1">
            <div class="u-form u-form-1">
                <form action="../mypage/update_size.do" method="POST" style="padding: 10px;">
                    <div class="u-form-group u-form-name">
                        <label for="name-144c" class="u-label">?????????</label>
                        <input type="text" placeholder="?????????  ????????? ??????(220~320)" id="name-144c" name="size"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                    </div>
                    <div class="u-align-center u-form-group u-form-submit">
                        <a href="#" class="u-btn u-btn-submit u-button-style">????????????<br>
                        </a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
                    </div>
                    <input type="hidden" value="" name="recaptchaResponse">
                </form>
            </div>
        </div>
        <button class="u-dialog-close-button u-icon u-text-black u-icon-1">
            <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style="">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-efe9"></use>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                 xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-efe9"><rect
                    x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2"
                    height="16"></rect>
                <rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16"
                      height="2"></rect></svg>
        </button>
    </div>
</section>
<style> .u-dialog-section-6 {
    min-height: 500px;
}

.u-dialog-section-6 .u-dialog-1 {
    width: 831px;
    min-height: 300px;
    margin: 327px calc(((100% - 1140px) / 2) + 139px) 60px auto;
}

.u-dialog-section-6 .u-container-layout-1 {
    padding: 30px;
}

.u-dialog-section-6 .u-form-1 {
    height: 154px;
    width: 771px;
    margin: 0;
}

.u-dialog-section-6 .u-icon-1 {
    width: 40px;
    height: 40px;
    left: auto;
    top: 20px;
    right: 20px;
    position: absolute;
    padding: 0;
}

@media (max-width: 1199px) {
    .u-dialog-section-6 .u-dialog-1 {
        margin-right: calc(((100% - 940px) / 2) + 109px);
        height: auto;
    }
}

@media (max-width: 991px) {
    .u-dialog-section-6 .u-dialog-1 {
        width: 720px;
        margin-right: calc(((100% - 720px) / 2));
    }

    .u-dialog-section-6 .u-form-1 {
        width: 660px;
    }
}

@media (max-width: 767px) {
    .u-dialog-section-6 .u-dialog-1 {
        width: 540px;
        margin-right: calc(((100% - 540px) / 2));
    }

    .u-dialog-section-6 .u-container-layout-1 {
        padding-left: 10px;
        padding-right: 10px;
    }

    .u-dialog-section-6 .u-form-1 {
        width: 520px;
    }
}

@media (max-width: 575px) {
    .u-dialog-section-6 .u-dialog-1 {
        width: 340px;
        margin-right: calc(((100% - 340px) / 2));
    }

    .u-dialog-section-6 .u-form-1 {
        width: 320px;
    }
}</style>
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-7"
         id="carousel_9e3d">
    <div class="u-align-left u-container-style u-dialog u-palette-3-light-2 u-radius-40 u-shape-round u-dialog-1">
        <div class="u-container-layout u-container-layout-1">
            <h1 class="u-text u-text-default u-text-1">??????<span style="font-size: 3rem;"></span>????????? ???????????? ??? ?????????????????? ???????????????
            </h1>
            <h1 class="u-text u-text-default u-text-2">???????????? ?????? ????????? ???????????? ??????????????? ????????? ??? ?????????, ???????????? ????????? ?????? ???????????? ??????????????? ????????????
                ???????????? ???????????????.</h1>
            <a href="../mypage/secession.do"
               class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius-6 u-text-body-color u-text-hover-white u-btn-1">??????
                ????????????</a>
        </div>
        <button class="u-dialog-close-button u-icon u-text-black u-icon-1">
            <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style="">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-efe9"></use>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                 xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-efe9"><rect
                    x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2"
                    height="16"></rect>
                <rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16"
                      height="2"></rect></svg>
        </button>
    </div>
</section>

    <jsp:include page="../main/header.jsp" />
    <jsp:include page="../main/nav.jsp" />
	<jsp:include page="../main/footer.jsp" />
<style type="text/css">
#nav{
	margin-top: -2380px;
}
</style>	

<style> .u-dialog-section-7 {
    min-height: 500px;
}

.u-dialog-section-7 .u-dialog-1 {
    width: 831px;
    min-height: 300px;
    margin: 327px calc(((100% - 1140px) / 2) + 139px) 60px auto;
}

.u-dialog-section-7 .u-container-layout-1 {
    padding: 30px;
}

.u-dialog-section-7 .u-text-1 {
    font-size: 1.25rem;
    font-weight: 700;
    margin: 0 auto;
}

.u-dialog-section-7 .u-text-2 {
    font-size: 1.25rem;
    font-weight: 700;
    margin: 27px 1px 0;
}

.u-dialog-section-7 .u-btn-1 {
    border-style: solid;
    font-weight: 700;
    font-size: 0.9375rem;
    margin: 62px auto 0;
    padding: 6px 31px 6px 30px;
}

.u-dialog-section-7 .u-icon-1 {
    width: 40px;
    height: 40px;
    left: auto;
    top: 20px;
    right: 20px;
    position: absolute;
    padding: 0;
}

@media (max-width: 1199px) {
    .u-dialog-section-7 .u-dialog-1 {
        margin-right: calc(((100% - 940px) / 2) + 109px);
        height: auto;
    }

    .u-dialog-section-7 .u-text-2 {
        margin-left: 1px;
        margin-right: 1px;
    }
}

@media (max-width: 991px) {
    .u-dialog-section-7 .u-dialog-1 {
        width: 720px;
        margin-right: calc(((100% - 720px) / 2));
    }
}

@media (max-width: 767px) {
    .u-dialog-section-7 .u-dialog-1 {
        width: 540px;
        margin-right: calc(((100% - 540px) / 2));
    }

    .u-dialog-section-7 .u-container-layout-1 {
        padding-left: 10px;
        padding-right: 10px;
    }
}

@media (max-width: 575px) {
    .u-dialog-section-7 .u-dialog-1 {
        width: 340px;
        margin-right: calc(((100% - 340px) / 2));
    }
}</style>
</body>
</html>