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
    <title>my_bookmark</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="my_bookmark.css" media="screen">
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
    <meta property="og:title" content="my_bookmark">
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
          <div class="u-layout-row">
            <div class="u-align-left u-container-style u-layout-cell u-size-12 u-layout-cell-1">
              <div class="u-container-layout u-valign-top u-container-layout-1">
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-1">
                  <div class="u-container-layout u-container-layout-2">
                    <h1 class="u-text u-text-default u-text-1">
                      <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1" href="my_mypage.html" data-page-id="1289201052">마이 페이지</a>
                    </h1>
                    <h3 class="u-text u-text-default u-text-2">쇼핑 정보</h3>
                    <h3 class="u-text u-text-default u-text-3"><a href="../mypage/my_purchase_list.jsp">구매 내역</a></h3>
                    <h3 class="u-text u-text-default u-text-4"><a href="../mypage/my_sell_list.jsp">판매 내역</a></h3>
                    <h3 class="u-text u-text-default u-text-5"><a href="../mypage/my_bookmark.jsp">관심 상품</a></h3>
                    <h3 class="u-text u-text-default u-text-6"><a href="../mypage/my_recently_viewed.jsp">최근 본 상품</a></h3>
                    <h3 class="u-text u-text-default u-text-7">내 정보</h3>
                    <h3 class="u-text u-text-default u-text-8"><a href="../mypage/my_profile.jsp">프로필 정보</a></h3>
                    <h3 class="u-text u-text-default u-text-9"><a href="../mypage/my_addressbook.jsp">주소록</a></h3>
                    <h3 class="u-text u-text-default u-text-10"><a href="../mypage/my_pay_account.jsp">판매 정산 계좌</a></h3>
                    <h3 class="u-text u-text-default u-text-11"><a href="../mypage/my_style.jsp">스타일</a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-layout-cell u-size-48 u-layout-cell-2">
              <div class="u-container-layout u-container-layout-3">
                <div class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-container-style u-group u-shape-rectangle u-white u-group-2">
                  <div class="u-container-layout u-container-layout-4">
                    <h3 class="u-text u-text-default u-text-12">관심 상품</h3>
                    <a href="https://nicepage.online" class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-2">상품</a>
                    <a href="https://nicepage.online" class="u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-none u-text-active-palette-5-dark-3 u-text-hover-palette-5-dark-2 u-text-palette-5-dark-2 u-btn-3"> 즉시 구매가</a>
                  </div>
                </div>
                <div class="u-align-left u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-2 u-container-style u-group u-opacity u-opacity-20 u-shape-rectangle u-white u-group-3">
                  <div class="u-container-layout u-container-layout-5">
                    <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-1 u-container-style u-expanded-width u-group u-shape-rectangle u-group-4">
                      
                      <c:forEach var="vo" items="${fLlist }">
	                      <div class="u-container-layout u-container-layout-6">
	                        <img class="u-image u-image-default u-preserve-proportions u-image-1" src="images/12345.webp" alt="" data-image-width="525" data-image-height="525">
	                        <h3 class="u-text u-text-default u-text-13">
	                          <span style="font-size: 20px; font-weight: bold; text-decoration: underline">${vo.brand }<span style="font-weight: 700;"></span>
	                          </span>
	                        </h3>
	                        <h3 class="u-text u-text-default u-text-14">
	                          <span style="font-size: 20px; font-weight: normal;">${vo.name_eng }<span style="font-weight: 700;"></span>
	                          </span>
	                        </h3>
	                        <h3 class="u-text u-text-default u-text-15">
	                          <span style="font-size: 20px;">${vo.im_buy }</span>
	                        </h3>
	                        <h3 class="u-text u-text-default u-text-16">
	                          <span style="font-size: 20px; font-weight: normal;">
	                            <span style="font-size: 20px; font-weight: normal;">${vo.name_kor }<span style="font-weight: 700;"></span>
	                          </span>
	                            <span class="u-text-grey-40"></span>
	                            <span style="font-weight: 700;"></span>
	                          </span>
	                        </h3>
	                      </div>
                      </c:forEach>
                      
                    </div>
                    <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-white u-group-5">
                      <div class="u-container-layout u-container-layout-7">
                        <a href="https://nicepage.com/k/test-website-templates" class="u-active-palette-1-base u-border-2 u-border-active-grey-10 u-border-grey-10 u-border-hover-grey-10 u-btn u-button-style u-hover-grey-5 u-text-active-white u-text-hover-palette-1-light-1 u-text-palette-1-light-1 u-white u-btn-4">&lt;&lt;<span style="font-size: 1rem;"></span>
                        </a>
                        <a href="https://nicepage.com/k/test-website-templates" class="u-active-palette-1-base u-border-2 u-border-active-grey-10 u-border-grey-10 u-border-hover-grey-10 u-btn u-button-style u-hover-grey-5 u-text-active-white u-text-hover-palette-1-light-1 u-text-palette-1-light-1 u-white u-btn-5">1</a>
                        <a href="https://nicepage.com/k/test-website-templates" class="u-active-palette-1-base u-border-2 u-border-active-grey-10 u-border-grey-10 u-border-hover-grey-10 u-btn u-button-style u-hover-grey-5 u-text-active-white u-text-hover-palette-1-light-1 u-text-palette-1-light-1 u-white u-btn-6">&gt;&gt;</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    
    
    
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-a9f8"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
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
  
</body></html>