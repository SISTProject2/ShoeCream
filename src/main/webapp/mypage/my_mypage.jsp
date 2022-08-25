<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Post 6 Headline, Post 5 Headline, Post 4 Headline">
    <meta name="description" content="">
    <title>my_mypage</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="my_mypage.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" "="" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.11, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "MyPage"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="my_mypage">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-355c"><div class="u-clearfix u-sheet u-sheet-1"></div></header>
    <section class="u-align-center u-clearfix u-section-1" id="carousel_042d">
      <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1"></div>
      </div>
      <div class="u-list u-list-2">
        <div class="u-repeater u-repeater-2"></div>
      </div>
      <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row" style=" margin-top: 90px;">
            <div class="u-container-style u-layout-cell u-size-12 u-layout-cell-1">
              <div class="u-container-layout u-valign-top u-container-layout-1">
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-1">
                  <div class="u-container-layout u-container-layout-2">
                    <h1 class="u-text u-text-default u-text-1">
                      <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1" href="../mypage/my_mypage.do" data-page-id="1289201052">마이 페이지</a>
                    </h1>
                    <h3 class="u-text u-text-default u-text-2">쇼핑 정보</h3>
                    <h3 class="u-text u-text-default u-text-3"><a href="../mypage/my_purchase_list.do">구매 내역</a></h3>
                    <h3 class="u-text u-text-default u-text-4"><a href="../mypage/my_sell_list.do">판매 내역</a></h3>
                    <h3 class="u-text u-text-default u-text-5"><a href="../mypage/my_bookmark.do">관심 상품</a></h3>
                    <h3 class="u-text u-text-default u-text-6"><a href="../mypage/my_recently_viewed.do">최근 본 상품</a></h3>
                    <h3 class="u-text u-text-default u-text-7">내 정보</h3>
                    <h3 class="u-text u-text-default u-text-8"><a href="../mypage/my_profile.do">프로필 정보</a></h3>
                    <h3 class="u-text u-text-default u-text-9"><a href="../mypage/my_addressbook.do">주소록</a></h3>
                    <h3 class="u-text u-text-default u-text-10"><a href="../mypage/my_pay_account.do">판매 정산 계좌</a></h3>
                    <h3 class="u-text u-text-default u-text-11"><a href="../mypage/mypage_style.do">스타일</a></h3>
                  </div>
                </div>
              </div>
            </div>
                 <div class="u-container-style u-layout-cell u-size-48 u-layout-cell-2">
              <div class="u-container-layout u-container-layout-3">
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-2">
                  <div class="u-container-layout u-container-layout-4">
                    <c:if test="${img != '' && img ne null && !empty img }">
                      <img class="u-image u-image-circle u-preserve-proportions u-image-1"src="../mypage/profile_image.do"
                           data-image-width="100" data-image-height="100">
                    </c:if>
                    <c:if test="${img == '' && img eq null || empty img }">
                      <div class="u-image u-image-circle u-preserve-proportions u-image-1" alt="" data-image-width="100" data-image-height="100"></div>
                    </c:if>

                    <h3 class="u-text u-text-default u-text-12">${nickname}<span style="font-size: 1.25rem;"></span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-13">
                      <span style="font-size: 20px; font-weight: normal;">${userProfile.email}</span>
                    </h3>
                    <a href="https://nicepage.review" class="u-border-2 u-border-hover-palette-5-base u-border-palette-5-base u-btn u-btn-round u-button-style u-hover-palette-5-base u-none u-radius-15 u-text-body-color u-btn-2">프로필 수정</a>
                    <a href="https://nicepage.review" class="u-border-2 u-border-hover-palette-5-base u-border-palette-5-base u-btn u-btn-round u-button-style u-hover-palette-5-base u-none u-radius-15 u-text-body-color u-btn-3">프로필 수정</a>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-3">
                  <div class="u-container-layout u-container-layout-5">
                    <h3 class="u-text u-text-default u-text-palette-5-dark-1 u-text-14">
                      <span style="font-weight: normal;">더보기 〉</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-15">구매 내역</h3>
                    <h3 class="u-text u-text-default u-text-16">
                      <span style="font-size: 20px; font-weight: normal;">구매 입찰</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-17">
                      <span style="font-size: 20px; font-weight: normal;">구매 중</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-18">
                      <span style="font-size: 20px; font-weight: normal;">구매완료</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-19">
                      <span style="font-size: 20px; font-weight: normal;">0</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-20">
                      <span style="font-size: 20px; font-weight: normal;">0</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-21">
                      <span style="font-size: 20px; font-weight: normal;">0</span>
                    </h3>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-4">
                  <div class="u-container-layout u-container-layout-6">
                    <h3 class="u-text u-text-default u-text-palette-5-dark-1 u-text-22">
                      <span style="font-weight: normal;">더보기 〉</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-23">판매 내역</h3>
                    <h3 class="u-text u-text-default u-text-24">
                      <span style="font-size: 20px; font-weight: normal;">판매 입찰</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-25">
                      <span style="font-size: 20px; font-weight: normal;">판매 중</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-26">
                      <span style="font-size: 20px; font-weight: normal;">판매완료</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-27">
                      <span style="font-size: 20px; font-weight: normal;">0</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-28">
                      <span style="font-size: 20px; font-weight: normal;">0</span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-29">
                      <span style="font-size: 20px; font-weight: normal;">0</span>
                    </h3>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-5">
                  <div class="u-container-layout u-container-layout-7">
                    <h3 class="u-text u-text-default u-text-30">관심 상품</h3>
                    <h3 class="u-text u-text-default u-text-palette-5-dark-1 u-text-31">
                      <span style="font-weight: normal;">더보기 〉</span>
                    </h3>
                    <img class="u-image u-image-default u-preserve-proportions u-image-2" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
                    <img class="u-image u-image-default u-preserve-proportions u-image-3" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
                    <img class="u-image u-image-default u-preserve-proportions u-image-4" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
                    <img class="u-image u-image-default u-preserve-proportions u-image-5" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
                    <h3 class="u-text u-text-default u-text-32">
                      <span style="font-size: 20px; font-weight: normal;">brand<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-33">
                      <span style="font-size: 20px; font-weight: normal;">brand<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-34">
                      <span style="font-size: 20px; font-weight: normal;">brand<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-35">
                      <span style="font-size: 20px; font-weight: normal;">brand<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-36">
                      <span style="font-size: 20px; font-weight: normal;">name_eng<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-37">
                      <span style="font-size: 20px; font-weight: normal;">name_eng<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-38">
                      <span style="font-size: 20px; font-weight: normal;">name_eng<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-39">
                      <span style="font-size: 20px; font-weight: normal;">name_eng<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-40">
                      <span style="font-size: 20px; font-weight: normal;">price</span>
                    </h3>
                    <h3 class="u-text u-text-41">
                      <span style="font-size: 20px; font-weight: normal;">price</span>
                    </h3>
                    <h3 class="u-text u-text-42">
                      <span style="font-size: 20px; font-weight: normal;">price</span>
                    </h3>
                    <h3 class="u-text u-text-43">
                      <span style="font-size: 20px; font-weight: normal;">price</span>
                    </h3>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-6">
                  <div class="u-container-layout u-container-layout-8">
                    <h3 class="u-text u-text-default u-text-44">최근 본 상품</h3>
                    <h3 class="u-text u-text-default u-text-palette-5-dark-1 u-text-45">
                      <span style="font-weight: normal;">더보기 〉</span>
                    </h3>
                    <img class="u-image u-image-default u-preserve-proportions u-image-6" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
                    <img class="u-image u-image-default u-preserve-proportions u-image-7" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
                    <img class="u-image u-image-default u-preserve-proportions u-image-8" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
                    <img class="u-image u-image-default u-preserve-proportions u-image-9" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
                    <h3 class="u-text u-text-default u-text-46">
                      <span style="font-size: 20px; font-weight: normal;">brand<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-47">
                      <span style="font-size: 20px; font-weight: normal;">brand<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-48">
                      <span style="font-size: 20px; font-weight: normal;">brand<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-49">
                      <span style="font-size: 20px; font-weight: normal;">brand<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-50">
                      <span style="font-size: 20px; font-weight: normal;">name_eng<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-51">
                      <span style="font-size: 20px; font-weight: normal;">name_eng<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-52">
                      <span style="font-size: 20px; font-weight: normal;">name_eng<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-default u-text-53">
                      <span style="font-size: 20px; font-weight: normal;">name_eng<span style="font-weight: 700;"></span>
                      </span>
                    </h3>
                    <h3 class="u-text u-text-54">
                      <span style="font-size: 20px; font-weight: normal;">price</span>
                    </h3>
                    <h3 class="u-text u-text-55">
                      <span style="font-size: 20px; font-weight: normal;">price</span>
                    </h3>
                    <h3 class="u-text u-text-56">
                      <span style="font-size: 20px; font-weight: normal;">price</span>
                    </h3>
                    <h3 class="u-text u-text-57">
                      <span style="font-size: 20px; font-weight: normal;">price</span>
                    </h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    
    
    <jsp:include page="../main/header.jsp" />
    <jsp:include page="../main/nav.jsp" />
	<jsp:include page="../main/footer.jsp" />
<style type="text/css">
#nav{
	margin-top: -1940px;
}
</style>	  
  
</body></html>