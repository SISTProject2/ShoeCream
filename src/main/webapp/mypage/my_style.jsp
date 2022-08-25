<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Post 6 Headline, Post 5 Headline, Post 4 Headline">
    <meta name="description" content="">
    <title>my_style</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="my_style.css" media="screen">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
<style type="text/css">
@charset "UTF-8";
@import "../css/reset.css";

header {
    display: flex;
    position: fixed;
}

.pagination{
	display: block;
	text-align: center;
}

.pagination > li > a{
	float: none;
	color: black;
	background-color: white;
}
.pagination > li > a:hover{
	color: white;
	background-color: black;
	border:1px solid #ddd
}

.pagination > .active > a, 
.pagination > .active > span, 
.pagination > .active > a:hover, 
.pagination > .active > span:hover, 
.pagination > .active > a:focus, 
.pagination > .active > span:focus {
  background: black;
  color: white;
  border-color: black;
  border:1px solid #ddd
}

.pagination{display:inline-block;padding-left:0;margin:20px 0;border-radius:4px}.pagination>li{display:inline}
.pagination>li>a,.pagination>li>span{position:relative;float:left;padding:6px 12px;margin-left:-1px;line-height:1.42857143;color:black;text-decoration:none;background-color:#fff;border:1px solid #ddd}

</style>    
</head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-355c"><div class="u-clearfix u-sheet u-sheet-1"></div></header>
    <section class="u-align-center u-clearfix u-valign-middle u-section-1" id="carousel_042d">
      <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1"></div>
      </div>
      <div class="u-list u-list-2">
        <div class="u-repeater u-repeater-2"></div>
      </div>
      <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-align-left u-container-style u-layout-cell u-size-12 u-layout-cell-1">
              <div class="u-container-layout u-container-layout-1">
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-1">
                  <div class="u-container-layout u-container-layout-2">
                    <h1 class="u-text u-text-default u-text-1">
                      <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1" href="my_mypage.do" data-page-id="1289201052">마이 페이지</a>
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
                    <h3 class="u-text u-text-default u-text-11"><a href="../mypage/mypage_style.do">스타일</a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-layout-cell u-size-48 u-layout-cell-2">
              <div class="u-container-layout u-container-layout-3">
                <div class="u-container-style u-group u-shape-rectangle u-white u-group-2">
                  <div class="u-container-layout u-container-layout-4">
                    <h3 class="u-text u-text-default u-text-12">스타일</h3>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-group-3">
                  <div class="u-container-layout u-container-layout-5">
                    <h3 class="u-text u-text-white u-text-13">
                      <span style="font-weight: normal;">price</span>
                    </h3>
                    <div class="u-expanded-width u-tabs u-tabs-1">
                      <ul class="u-border-1 u-border-grey-75 u-tab-list u-unstyled" role="tablist">
                        <li class="u-tab-item" role="presentation">
                          <a class="active u-active-grey-10 u-border-active-grey-15 u-border-hover-grey-15 u-button-style u-tab-link u-text-active-black u-text-grey-40 u-text-hover-grey-40 u-tab-link-1" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true">작성 글</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                          <a class="u-active-grey-10 u-border-active-grey-15 u-border-hover-grey-15 u-button-style u-tab-link u-text-active-black u-text-grey-40 u-text-hover-grey-40 u-tab-link-2" id="link-tab-2917" href="#tab-2917" role="tab" aria-controls="tab-2917" aria-selected="false">작성 댓글</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                          <a class="u-active-grey-10 u-border-active-grey-15 u-border-hover-grey-15 u-button-style u-tab-link u-text-active-black u-text-grey-40 u-text-hover-grey-40 u-tab-link-3" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="false">좋아요</a>
                        </li>
                      </ul>
                      <div class="u-tab-content">
                        <div class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                          <div class="u-container-layout u-container-layout-6">
                          <div class="u-list u-list-2">
                 			 <div class="u-repeater u-repeater-2" style="margin-top: 25px; width:950px; grid-template-columns: repeat(4, 33.33333333%);">
                           <c:forEach var="vo" items="${list }" varStatus="s">
                              <div class="u-container-layout u-container-layout-7" style="margin-right: 35px;">
                                <a href="../style/style_detail_before.do?style_id=${vo.style_id }"><img alt="" class="u-expanded-width u-image u-image-round u-radius-40 u-image-1" data-image-width="2836" data-image-height="1875" src="${vo.img }"></a>
                                <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-white u-group-6">
                                  <div class="u-container-layout u-container-layout-9">
                                    <p class="u-text u-text-palette-1-light-1 u-text-16" style="font-size: 1.00rem; margin: 11px 18px 0 23px;"><a href="../style/style_detail_before.do?style_id=${vo.style_id }">${vo.content }</a><br>
                                      <br>
                                    </p>
                                  </div>
                                </div>
                                <div class="u-container-style u-group u-shape-rectangle u-white u-group-7">
                                  <div class="u-container-layout u-valign-middle u-container-layout-10" style="margin-top: -35px;"><span class="u-file-icon u-icon u-icon-1"><a href="../style/style_detail_before.do?style_id=${vo.style_id }"><img src="images/icon1.png" alt=""></a></span>
                                    <p class="u-text u-text-default u-text-17" style="margin: -22px auto 0 101px;"><a href="../style/style_detail_before.do?style_id=${vo.style_id }" style="color:black;">${vo.rcount }</a></p>
                                    <p class="u-text u-text-default u-text-18" style="margin: -22px auto 0 48px; "><a href="../style/style_detail_before.do?style_id=${vo.style_id }" style="color:black;">${vo.bookmark }</a></p>
                                    <a href="../style/style_detail_before.do?style_id=${vo.style_id }"><img class="u-image u-image-default u-preserve-proportions u-image-3" src="images/heart.png" alt="" data-image-width="512" data-image-height="512"></a>
                                  </div>
                                </div>
                              </div>
                            </c:forEach>
                            </div>
                            </div>
                            <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-white u-group-36">
                              <div class="u-container-layout u-valign-middle u-container-layout-39 page">
                              <nav aria-label="Page navigation example" style="align-self: center;">
								  <ul class="pagination" style="margin-bottom: 0px;">
								    <li class="page-item">
							      
								      <c:if test="${startPage > 1 }">
								      <a class="page-link" href="../mypage/mypage_style.do?page=${startPage-1 }" aria-label="Previous">
								        <span aria-hidden="true">&laquo;</span>
								        <span class="sr-only">Previous</span>
								      </a>
								      </c:if>  
								        
								    </li>
								    
								    <c:forEach var="i" begin="${startPage }" end="${endPage }">            
							            <c:if test="${i==curpage }">
							              <c:set var="style" value="class=active" />
							            </c:if>
							            
							            <c:if test="${i!=curpage }">
							              <c:set var="style" value=""/>
							            </c:if>
							            
							            <li ${style } ><a href="../mypage/mypage_style.do?page=${i }" >${i }</a></li>
							       </c:forEach>
						
								    <li class="page-item">
								    
								      <c:if test="${endPage < totalpage }">
								      <a class="page-link" href="../mypage/mypage_style.do?page=${endPage+1 }" aria-label="Next">
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
                        <div class="u-container-style u-tab-pane u-white u-tab-pane-2" id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
                          <div class="u-container-layout u-container-layout-40">
 							<table width=80% class="table" style="border-top: 1px solid black; margin-top: 25px;">
							      <tr style="height: 45px;">
							        <th width="8%" style="border-right: 0px solid; border-bottom: 1px solid #e5e5e5;"></th>
							        <th width="75%" style="border-right: 0px solid; border-bottom: 1px solid #e5e5e5; text-align: center;">댓글</th>
							        <th width="27%" style="border-bottom: 1px solid #e5e5e5; "></th>
							      </tr>
							      <c:forEach var="vo" items="${list2 }">
							        <tr>
							          <td rowspan="3"style="text-align: center; border-right: 0px solid; border-bottom: 1px solid #e5e5e5;">
							            <a href="../style/style_detail_before.do?style_id=${vo.sid }"><img src="${vo.img }" style="height:70px; width:60px; border-radius: 12px;"></a>
							          </td>
							          <td style="border-right: 0px solid; font-size: 16px;"><a href="../style/style_detail_before.do?style_id=${vo.sid}" style="color:black;">${vo.content }</a></td>
							          <td rowspan="3" style="border-bottom: 1px solid #e5e5e5; ">
							            <input type="button" onclick="location.href='../style/style_detail_before.do?style_id=${vo.sid }' " value="수정" style="cursor:pointer; padding: 4px 10px; background-color: #e8ebef; color: #3f5e7a; border-radius: 5px; font-size: 14px; border: 0px; font-weight: 600;">
							            <!--#59758f-->
							            <span>&nbsp;&nbsp;</span>
							            <input type="button" onclick="location.href='../mypage/reply_delete.do?sreply_id=${vo.sreply_id }&sid=${vo.sid}&group_id=${vo.group_id}'" value="삭제" style="padding: 4px 10px; background-color: #e8ebef; color: #a56567; border-radius: 5px; font-size: 14px; border: 0px; font-weight: 600; cursor:pointer;">
							          </td>
							        </tr>
							        <tr>
							          <td style="border-right: 0px solid; font-size: 12px; color:#858e99;"><a href="../style/style_detail_before.do?style_id=${vo.sid }" style="color:black;">${vo.dbday }</a></td>
							        </tr>
							        <tr>
							          <td style="border-right: 0px solid; border-bottom: 1px solid #e5e5e5; font-size: 15px;"><a href="../style/style_detail_before.do?style_id=${vo.sid }">${vo.scontent }<span style="color:red"> [${vo.rcount }]</span></a></td>
							        </tr>
							      </c:forEach>
                            </table>
                            <div class="u-container-style u-group u-shape-rectangle u-white u-group-57">
                              <div class="u-container-layout u-container-layout-61">
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-3" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
                          <div class="u-container-layout u-container-layout-62">
							<div class="u-repeater u-repeater-2" style="margin-top: 25px; width: 1390px; grid-template-columns: repeat(2, 50%); height: auto; grid-gap: 80px 0px;">
                            <c:forEach var="vo" items="${list3 }">
                              <div class="u-container-layout u-container-layout-63" style="">
                                <a href="../style/style_detail_before.do?style_id=${vo.style_id }"><img alt="" class="u-image u-image-round u-radius-40 u-image-40" data-image-width="2836" data-image-height="1875" src="${vo.img }"></a>
                                <div class="u-container-style u-shape-rectangle" style="min-height: 0px; margin-left: 170px; margin-top: -136px;" >
                                  <div class="u-container-layout u-container-layout-65" style="margin-top: -188px;" >
                                    <p class="u-text u-text-default u-text-68" style="margin: 1px auto 0 37px;"><a href="../style/style_detail_before.do?style_id=${vo.style_id }" style="color:black;">${fn:substringBefore(vo.email,'@')}</a></p>
                                    <img class="u-image u-image-default u-preserve-proportions u-image-41" src="images/profile2.png" alt="" data-image-width="100" data-image-height="100">
                                  </div>
                                </div>
                                <div class="u-container-style u-shape-rectangle u-white u-group-59" style="margin-top:23px;">
                                    <p class="u-text u-text-palette-1-light-1 u-text-67" style="margin: 17px 21px 0;"><a href="../style/style_detail_before.do?style_id=${vo.style_id }">${vo.content }</a><br>
                                      <br>
                                    </p>
                                </div>
                                <div class="u-container-style u-shape-rectangle" style="margin-left: 179px; margin-top: 0px;">
                                  <div class="u-container-layout u-container-layout-66">
                                    <p class="u-text u-text-default u-text-69" style="margin: 10px auto 0 32px;"><a href="../style/style_detail_before.do?style_id=${vo.style_id }" style="color:black;">${vo.bookmark }</a></p><span class="u-file-icon u-icon u-icon-14"><a href="../style/style_detail_before.do?style_id=${vo.style_id }"><img src="images/icon1.png" alt="" style="margin-left:-10px;"></a></span>
                                    <p class="u-text u-text-default u-text-70" style="margin: -22px auto 0 81px;"><a href="../style/style_detail_before.do?style_id=${vo.style_id }" style="color:black;">${vo.rcount }</a></p><span class="u-icon u-text-palette-1-base u-icon-15"><a href="../style/style_detail_before.do?style_id=${vo.style_id }"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 51.997 51.997" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-06c8"></use></svg></a>
                                    <svg class="u-svg-content" viewBox="0 0 51.997 51.997" x="0px" y="0px" id="svg-06c8" style="enable-background:new 0 0 51.997 51.997;"><path d="M51.911,16.242C51.152,7.888,45.239,1.827,37.839,1.827c-4.93,0-9.444,2.653-11.984,6.905
	c-2.517-4.307-6.846-6.906-11.697-6.906c-7.399,0-13.313,6.061-14.071,14.415c-0.06,0.369-0.306,2.311,0.442,5.478
	c1.078,4.568,3.568,8.723,7.199,12.013l18.115,16.439l18.426-16.438c3.631-3.291,6.121-7.445,7.199-12.014
	C52.216,18.553,51.97,16.611,51.911,16.242z"></path></svg></span>
                                  </div>
                                </div>
                              </div>
                              </c:forEach>
                            </div>
                          </div>
                        </div>
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