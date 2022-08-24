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
    <title>admin_user</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="admin_user.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js"
    "="" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js"
    "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.11, nicepage.com">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link id="u-theme-google-font" rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <style>
        .pagination {
            display: block;
            text-align: center;
        }

        .pagination > li > a {
            float: none;
        }

        #nav .NEW {
            color: red;
            font-weight: 600;
            font-family: sans-serif;
            font-size: 16px;
        }

        #nav_li {
            list-style: none; /*<li> 태그는 위의 이미지처럼 목록을 나타내는 점을 없앤다 */
            float: left; /*<li>태그들이 왼쪽에 흐르게 설정(그러면 아래있는 내용은 오른쪽으로 옴)*/
            vertical-align: middle; /* 세로 정렬을 가운데로 설정(위의 line-height와 같이 설정 필요함)*/
            text-align: center; /*글씨 정렬을 가운데로 설정*/
            color: white;
            font-family: sans-serif;
            font-size: 16px;
        }

    </style>
    <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "AdminANDCsPage"
    }</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="admin_user">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode" data-lang="en">
<section class="u-align-center u-clearfix u-white u-section-1" id="carousel_042d">
    <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1"></div>
    </div>
    <div class="u-list u-list-2">
        <div class="u-repeater u-repeater-2"></div>
    </div>
    <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
            <div class="u-layout-row">
                <div class="u-align-left u-container-style u-grey-60 u-layout-cell u-shape-rectangle u-size-12 u-layout-cell-1">
                    <div class="u-container-layout u-container-layout-1">
                        <div class="u-container-style u-expanded-width u-grey-60 u-group u-shape-rectangle u-group-1">
                            <div class="u-container-layout u-container-layout-2">
                                <h1 class="u-text u-text-default u-text-1">
                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1"
                                       data-page-id="1289201052">관리자 페이지</a>
                                </h1>
                                <h3 class="u-text u-text-default u-text-2"><a href="../admin/admin_user.do">회원관리</h3>
                                <h3 class="u-text u-text-default u-text-3"><a href="../admin/admin_goods.do">상품관리</h3>
                                <h3 class="u-text u-text-default u-text-4"><a href="../admin/admin_notice.do">공지사항</h3>
                                <h3 class="u-text u-text-default u-text-5"><a href="../admin/admin_QnA.do">1:1문의</a>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="u-container-style u-layout-cell u-shape-rectangle u-size-48 u-layout-cell-2">
                    <div class="u-container-layout u-container-layout-3">
                        <div class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-container-style u-group u-shape-rectangle u-white u-group-2">
                            <div class="u-container-layout u-container-layout-4">
                                <h3 class="u-text u-text-default u-text-6">회원관리</h3>
                            </div>
                        </div>
                        <div class="u-align-left u-container-style u-group u-shape-rectangle u-white u-group-3">
                            <div class="u-container-layout u-container-layout-5">
                                <form action="" method="get"
                                      class="u-border-10 u-border-grey-30 u-search u-search-left u-white u-search-1">
                                    <button class="u-search-button" type="submit">
                        <span class="u-search-icon u-spacing-10">
                          <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966"><use
                                  xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-60df"></use></svg>
                          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                               version="1.1" id="svg-60df" x="0px" y="0px" viewBox="0 0 56.966 56.966"
                               style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve"
                               class="u-svg-content"><path
                                  d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
                        </span>
                                    </button>
                                    <input class="u-search-input" type="search" name="search" value=""
                                           placeholder="Search">
                                </form>
                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-expanded-width u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-4">
                                    <div class="u-container-layout u-container-layout-6">
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-2">이메일</a>
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-3">이름</a>
                                        <a href="https://nicepage.online"
                                           class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-4">전화번호</a>
                                    </div>
                                </div>
                                <c:forEach var="list" items="${list}" varStatus="s">
                                    <c:if test="${s.index>=0 && s.index<10 }">
                                        <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-1 u-container-style u-expanded-width u-group u-shape-rectangle u-group-5">
                                            <div  class=" u-container-layout u-container-layout-7">
                                                <a data-id="${list.user_id}"  data-email="${list.email}" data-tel="${list.tel}" data-birthday="${list.birthday}"
                                                            data-size="${list.s_size}" data-name="${list.name}" data-zipcode="${list.zipcode}"
                                                        class="updateBtn u-active-grey-25 u-border-1 u-border-active-white u-border-grey-75 u-border-hover-white u-btn u-btn-round u-button-style u-hover-grey-25 u-none u-radius-35 u-text-hover-white u-btn-5">
                                                    &nbsp; 수정&nbsp;&nbsp;</a>
                                                <a onclick="let b = confirm(' 삭제하시겠습니까?'); if(b){location.href='../admin/delete_user.do?userId=${list.user_id}';}"
                                                   class="u-active-grey-25 u-border-1 u-border-active-white u-border-grey-75 u-border-hover-white u-btn u-btn-round u-button-style u-dialog-link u-hover-grey-25 u-none u-radius-35 u-text-hover-white u-btn-6">&nbsp;
                                                    삭제&nbsp;&nbsp;</a>
                                                <h3 class="u-text u-text-default u-text-7">
                                                    <span style="font-size: 20px;">${list.email}</span>
                                                </h3>
                                                <h3 class="u-text u-text-default u-text-8">
                                                    <span style="font-size: 20px;">${list.name}</span>
                                                </h3>
                                                <h3 class="u-text u-text-default u-text-9">${list.tel} </h3>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                                <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-white u-group-6">
                                    <div class="u-container-layout u-container-layout-8">
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination" style="margin-bottom: 199px;">
                                                <li class="page-item">

                                                    <c:if test="${startPage > 1 }">
                                                        <a class="page-link"
                                                           href="../admin/admin_user.do?page=${startPage-1 }&search=${search}"
                                                           aria-label="Previous">
                                                            <span aria-hidden="true">&laquo;</span>
                                                            <span class="sr-only">Previous</span>
                                                        </a>
                                                    </c:if>

                                                </li>

                                                <c:forEach var="i" begin="${startPage }" end="${endPage }">
                                                    <c:if test="${i==curpage }">
                                                        <c:set var="style" value="class=active"/>
                                                    </c:if>

                                                    <c:if test="${i!=curpage }">
                                                        <c:set var="style" value=""/>
                                                    </c:if>

                                                    <li ${style } ><a
                                                            href="../admin/admin_user.do?page=${i}&search=${search}">${i }</a>
                                                    </li>
                                                </c:forEach>

                                                <li class="page-item">

                                                    <c:if test="${endPage < totalpage }">
                                                        <a class="page-link"
                                                           href="../admin/admin_user.do?page=${endPage+1 }&search=${search}"
                                                           aria-label="Next">
                                                            <span aria-hidden="true">&raquo;</span>
                                                            <span class="sr-only">Next</span>
                                                        </a>
                                                    </c:if>

                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#sec-dd88"
                           class="u-border-2 u-border-black u-btn u-button-style u-dialog-link u-hover-black u-none u-text-hover-white u-btn-10">회원추가</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $(document).on('click', '.updateBtn', function () {


        let id = $(this).data('id');
        let email = $(this).data('email');
        let tel = $(this).data('tel');
        let birthday = $(this).data('birthday');
        let size = $(this).data('size');
        let name = $(this).data('name');
        let zipcode = $(this).data('zipcode');

        $("#userId").val(id);
        $("#email").val(email);
        $("#tel").val(tel);
        $("#birthday").val(birthday);
        $("#size").val(size);
        $("#name").val(name);
        $("#zipcode").val(zipcode);

        $("#carousel_cc2b").addClass("u-dialog-open");
    });



</script>


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
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-4"
         id="sec-dd88">
    <div class="u-container-style u-dialog u-white u-dialog-1">
        <div class="u-container-layout u-container-layout-1">
            <div class="u-form u-form-1">
                <form id="saveForm" action="../admin/save_user.do" method="POST"
                      style="padding: 50px;">
                    <div class="u-form-group u-form-name">
                        <label for="name-e29c" class="u-label">이름</label>
                        <input type="text" id="name-e29c" name="name"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""
                               placeholder="이름 입력">
                    </div>
                    <div class="u-form-email u-form-group">
                        <label for="email-e29c" class="u-label">이메일</label>
                        <input type="email" placeholder="이메일 입력" id="email-e29c" name="email"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                    </div>
                    <div class="u-form-address u-form-group u-form-group-3">
                        <label for="address-0cbb" class="u-label">전화번호</label>
                        <input type="text" placeholder="전화번호 입력 (010-1234-5678)" id="address-0cbb" name="tel"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                    </div>
                    <div class="u-form-group u-form-phone u-form-group-4">
                        <label for="phone-6f41" class="u-label">생년월일</label>
                        <input type="tel" placeholder="생년월일 입력 (2000-01-01)" id="phone-6f41"
                               name="birthday" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
                               required="">
                    </div>
                    <div class="u-form-address u-form-group u-form-group-5">
                        <label for="address-78d2" class="u-label">우편번호</label>
                        <input type="text" placeholder="우편번호 입력" id="address-78d2" name="zipcode"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                    </div>
                    <div class="u-form-group u-form-group-6">
                        <label for="text-f434" class="u-label">신발 사이즈</label>
                        <input type="text" placeholder="" id="text-f434" name="size"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                    </div>
                    <div  style="margin-top: 210px;">
                        <input
                                class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base custom-btn u-button-style u-hover-palette-1-base u-none u-btn-2" value="저장" type="submit" style="margin-left: 255px">
                        <button
                                class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-button-style u-hover-palette-1-base u-none u-btn-3">취소</button>
                    </div>
                </form>
            </div>
        </div>
        <button class="u-dialog-close-button u-icon u-text-white u-icon-1">
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
    width: 1140px;
    min-height: 924px;
    margin: 98px auto 60px;
}

.u-dialog-section-4 .u-container-layout-1 {
    padding: 0 0 30px;
}

.u-dialog-section-4 .u-form-1 {
    height: 793px;
    width: 932px;
    margin: 55px auto 0;
}

.u-dialog-section-4 .u-form-group-3 {
    margin-left: 0;
}

.u-dialog-section-4 .u-form-group-4 {
    margin-left: 0;
}

.u-dialog-section-4 .u-form-group-5 {
    margin-left: 0;
}

.u-dialog-section-4 .u-form-group-6 {
    margin-left: 0;
}

.u-dialog-section-4 .u-btn-1 {
    background-image: none;
    border-style: solid;
}

.u-dialog-section-4 .u-btn-2 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -89px auto 0 575px;
}

.u-dialog-section-4 .u-btn-3 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -46px auto 0 471px;
}

.u-dialog-section-4 .u-icon-1 {
    width: 20px;
    height: 20px;
}

@media (max-width: 1199px) {
    .u-dialog-section-4 .u-dialog-1 {
        width: 940px;
        height: auto;
    }

    .u-dialog-section-4 .u-btn-2 {
        margin-top: -89px;
        margin-left: 475px;
    }

    .u-dialog-section-4 .u-btn-3 {
        margin-left: 371px;
    }
}

@media (max-width: 991px) {
    .u-dialog-section-4 .u-dialog-1 {
        width: 720px;
    }

    .u-dialog-section-4 .u-form-1 {
        width: 720px;
    }

    .u-dialog-section-4 .u-btn-2 {
        margin-left: 365px;
    }

    .u-dialog-section-4 .u-btn-3 {
        margin-left: 261px;
    }
}

@media (max-width: 767px) {
    .u-dialog-section-4 .u-dialog-1 {
        width: 540px;
    }

    .u-dialog-section-4 .u-form-1 {
        width: 540px;
    }

    .u-dialog-section-4 .u-btn-2 {
        margin-left: auto;
    }

    .u-dialog-section-4 .u-btn-3 {
        margin-left: auto;
    }
}

@media (max-width: 575px) {
    .u-dialog-section-4 .u-dialog-1 {
        width: 340px;
    }

    .u-dialog-section-4 .u-form-1 {
        width: 340px;
    }
}</style>
<section
        id="carousel_cc2b"
        class=" u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-5"
>
    <div class="u-container-style u-dialog u-white u-dialog-1">
        <div class="u-container-layout u-container-layout-1">
            <div class="u-form u-form-1">
                <form id="userUpdateForm" action="../admin/update_user.do" method="POST"
                      style="padding: 50px;">
                    <input type="hidden" id="userId" name="userId">
                    <div class="u-form-group u-form-name">
                        <label for="name-e29c" class="u-label">이름</label>
                        <input type="text" id="name" name="name"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""
                               placeholder="이름 입력">
                    </div>
                    <div class="u-form-email u-form-group">
                        <label for="email" class="u-label">이메일</label>
                        <input type="email" placeholder="이메일 입력" id="email" name="email"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                    </div>
                    <div class="u-form-address u-form-group u-form-group-3">
                        <label for="tel" class="u-label">전화번호</label>
                        <input type="text" placeholder="전화번호 입력 (010-1234-5678)" id="tel" name="tel"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                    </div>
                    <div class="u-form-group u-form-phone u-form-group-4">
                        <label for="birthday" class="u-label">생년월일</label>
                        <input type="tel" placeholder="생년월일 입력 (2000-01-01)" id="birthday"
                               name="birthday" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
                               required="">
                    </div>
                    <div class="u-form-address u-form-group u-form-group-5">
                        <label for="zipcode" class="u-label">우편번호</label>
                        <input type="text" placeholder="우편번호 입력" id="zipcode" name="zipcode"
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                    </div>
                    <div class="u-form-group u-form-group-6">
                        <label for="size" class="u-label">신발 사이즈</label>
                        <input type="text" placeholder="" id="size" name="size" required=""
                               class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                    </div>
                    <div style="margin-top: 210px;">
                            <input
                                    class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base custom-btn u-button-style u-hover-palette-1-base u-none u-btn-2" value="저장" type="submit" style="margin-left: 255px">
                            <a
                                    class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-button-style u-hover-palette-1-base u-none u-btn-3">취소</a>
                    </div>
                </form>
            </div>

        </div>
        <button class="u-dialog-close-button u-icon u-text-white u-icon-1">
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
.custom-btn {
    display: table;
    cursor: pointer;
    color: inherit;
    font-size: inherit;
    font-family: inherit;
    line-height: inherit;
    letter-spacing: inherit;
    text-transform: inherit;
    font-style: inherit;
    font-weight: inherit;
    text-decoration: none;
    outline-width: 0;
    background-color: transparent;
    margin: 0;
    -webkit-text-decoration-skip: objects;
    font-style: initial;
    white-space: nowrap;
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
    vertical-align: middle;
    text-align: center;
    padding: 10px 30px;
    border-radius: 0;
    align-self: flex-start;
    border: 1px #478ac9;
}
.u-dialog-section-5 .u-dialog-1 {
    width: 1140px;
    min-height: 924px;
    margin: 98px auto 60px;
}

.u-dialog-section-5 .u-container-layout-1 {
    padding: 0 0 30px;
}

.u-dialog-section-5 .u-form-1 {
    height: 793px;
    width: 932px;
    margin: 55px auto 0;
}

.u-dialog-section-5 .u-form-group-3 {
    margin-left: 0;
}

.u-dialog-section-5 .u-form-group-4 {
    margin-left: 0;
}

.u-dialog-section-5 .u-form-group-5 {
    margin-left: 0;
}

.u-dialog-section-5 .u-form-group-6 {
    margin-left: 0;
}

.u-dialog-section-5 .u-btn-1 {
    background-image: none;
    border-style: solid;
}

.u-dialog-section-5 .u-btn-2 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -89px auto 0 575px;
}

.u-dialog-section-5 .u-btn-3 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -46px auto 0 471px;
}

.u-dialog-section-5 .u-icon-1 {
    width: 20px;
    height: 20px;
}

@media (max-width: 1199px) {
    .u-dialog-section-5 .u-dialog-1 {
        width: 940px;
        height: auto;
    }

    .u-dialog-section-5 .u-btn-2 {
        margin-top: -89px;
        margin-left: 475px;
    }

    .u-dialog-section-5 .u-btn-3 {
        margin-left: 371px;
    }
}

@media (max-width: 991px) {
    .u-dialog-section-5 .u-dialog-1 {
        width: 720px;
    }

    .u-dialog-section-5 .u-form-1 {
        width: 720px;
    }

    .u-dialog-section-5 .u-btn-2 {
        margin-left: 365px;
    }

    .u-dialog-section-5 .u-btn-3 {
        margin-left: 261px;
    }
}

@media (max-width: 767px) {
    .u-dialog-section-5 .u-dialog-1 {
        width: 540px;
    }

    .u-dialog-section-5 .u-form-1 {
        width: 540px;
    }

    .u-dialog-section-5 .u-btn-2 {
        margin-left: auto;
    }

    .u-dialog-section-5 .u-btn-3 {
        margin-left: auto;
    }
}

@media (max-width: 575px) {
    .u-dialog-section-5 .u-dialog-1 {
        width: 340px;
    }

    .u-dialog-section-5 .u-form-1 {
        width: 340px;
    }
}</style>
</body>
</html>