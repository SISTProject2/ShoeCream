<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="MEN">
<meta name="description" content="">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!--  -->
<title>Page 1</title>
<link rel="stylesheet" href="../home/nav_men/nicepage.css" media="screen">
<link rel="stylesheet" href="../home/nav_men/Page-1.css" media="screen">
<meta name="generator" content="Nicepage 4.15.8, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<style type="text/css">
@charset "UTF-8";



.nanumgothic * {
    font-family: 'Nanum Gothic', sans-serif;
}

html, body {
    margin: 0;
    padding: 0;
    height:100%;
    z-index: 9999999;
}

.wrapper {
	padding-top: 120px; 
	position: relative; 
    min-height: 100%;
    padding-bottom: 130px;
    height: auto;
}

.container {
	padding-top: 120px; 
}

header {
	z-index:1;
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: fixed;
    top:0;
    width: 100%;
    background-color: #fff;
    height: 60px;
}

.logo {
    padding-left: 3%;
    line-height:60px;
    width: 30%;
}

.logo img {
    width: 90%;
    max-width: 180px;
    max-height:100%;
    vertical-align:middle;
}

.search {
    width: 40%;
    line-height: 60px;
    max-width: 450px;
}
.search input {
    width: 100%;
    height: 23px;
    border-width: 0 0 3px;
    line-height: normal;
    display: inline-block;
    vertical-align: middle;
    border-color: #000;
    background-image: url("../images/search_b.png");
    background-repeat: no-repeat;/*이미지 반복 없이 한 개만 출력*/
    background-size: 16px;
    background-position: 98% center;/*영역 안에서 이미지 위치 x축 y축 위치값*/
    padding-left: 1px;/*padding값이 없으면 placeholder="Add List"와 겹친다. */
}

.search input::-webkit-input-placeholder { /*input창 placeholder 컬러 지정*/
    color: black;
}
.search input:focus {
    outline:none;
} /*input창 선택시 border 제거*/


header ul {
    padding-right: 3%;
    margin: 0px;
    display: flex;
    justify-content: flex-end;
    width: 30%;
}
header li {
    list-style: none;  /*<li> 태그는 위의 이미지처럼 목록을 나타내는 점을 없앤다 */
}
header a {
    text-decoration: none;
    font-size: 14px;
    color: #000;
    padding: 20px;
}

header a:hover {color: black;}

header #NOTICE {
    padding: 20px 0 20px 20px;
}

.pagination{
	display: block;
	text-align: center;
}

.u-border-2 {
	color: #337AB7;
}

.pagination > li > a{
	float: none;
}

.u-border-2 {
	color: black;
}

.btn-outline-dark{
	color: black;
	font-weight: bold;
	border: 2px solid black;
}

.u-list-199 {
  position: absolute;
  left: 40%;
  transform: translateX(-50%);
}

</style>      
      
<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>

<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Page 1">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode" data-lang="en">
    <section class="u-clearfix u-section-1" id="sec-aa34">
      <img class="u-expanded-width u-image u-image-default u-image-1" style="margin-top:110px;" src="../home/nav_men/images/kid.png" alt="" data-image-width="694" data-image-height="324">
 
      
      <h2 class="u-text u-text-default u-text-2" style="position: relative; top: 40px"></h2>
      
       <!-- 신발 종류 -->
	    <div class="u-list u-list-199" style="right: 2px">
	        <div class="u-repeater u-repeater-1" style="display: flex">
	          <div class="u-container-style u-list-item u-repeater-item" >
	            <div class="u-container-layout u-similar-container u-container-layout-1">
	              <a href="../shoes/shoes_kinds.do?category_id=2">
	              <img src="../images/shoes/sneakers.png" width="120px" height="120px" ></a>
	            </div>
	          </div>
	          <div class="u-container-style u-list-item u-repeater-item">
	            <div class="u-container-layout u-similar-container u-container-layout-2">
	              <a href="../shoes/shoes_kinds.do?category_id=1">
	              <img src="../images/shoes/jogging.png" width="120px" height="120px" ></a>
	            </div>
	          </div>
	          <div class="u-container-style u-list-item u-repeater-item">
	            <div class="u-container-layout u-similar-container u-container-layout-3">
	              <a href="../shoes/shoes_kinds.do?category_id=3">
	              <img src="../images/shoes/sandal.png" width="120px" height="120px" ></a>
	            </div>
	          </div>
	          <div class="u-container-style u-list-item u-repeater-item">
	            <div class="u-container-layout u-similar-container u-container-layout-4">
	              <a href="../shoes/shoes_kinds.do?category_id=4">
	              <img src="../images/shoes/loafer.png" width="120px" height="120px" ></a>
	            </div>
	          </div>
	          <div class="u-container-style u-list-item u-repeater-item">
	            <div class="u-container-layout u-similar-container u-container-layout-5">
	              <a href="../shoes/shoes_kinds.do?category_id=5">
	              <img src="../images/shoes/boots.png" width="120px" height="120px" ></a>
	            </div>
	          </div>
	          <div class="u-container-style u-list-item u-repeater-item">
	            <div class="u-container-layout u-similar-container u-container-layout-6">
	              <a href="../shoes/shoes_kinds.do?category_id=6">
	              <img src="../images/shoes/rainboots.png" width="120px" height="120px" ></a>
	            </div>
	          </div>
	        </div>
	      </div>
      
      <div style="bottom: 80px">
      <!-- 필터 버튼 -->
      <div class="container" style="margin-top: 250px">
	 	 <a href="../nav/nav_kids.do?no=1"><img src="../images/pop.png" width="108px" height="38px"></a> 
	 	 <a href="../nav/nav_kids.do?no=2"><img src="../images/high.png" width="108px" height="38px"></a> 
	 	 <a href="../nav/nav_kids.do?no=3"><img src="../images/low.png" width="108px" height="38px"></a> 
	 	 <a href="../nav/nav_kids.do?no=4"><img src="../images/latest.png" width="108px" height="38px"></a> 
	 	 <a href="../nav/nav_kids.do?no=5"><img src="../images/old.png" width="108px" height="38px"></a>
	 
		
      <div class="u-border-2 u-border-grey-blue-1 u-line u-line-horizontal u-line-1"></div>
      
      
      <div class="u-align-center u-list u-list-7">
        <div class="u-repeater u-repeater-7">
        <c:forEach var="vo" items="${list }" varStatus="s">
        <c:if test="${s.index>=0 && s.index<12 }">
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-14">
              <a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }"><img class="u-align-center u-image u-image-default u-image-2" src="${vo.img }" alt="" data-image-width="400" data-image-height="265"></a>
              <a href="../shoes/shoes_brand.do?brand=${vo.brand }" style="color:black; font-size: 13pt; font-weight: bold"><span style="text-decoration: underline !important;">${vo.brand }<br></span></a>
              <a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }" style="color:black; font-size: 13pt">${vo.name_eng }</a><br>
              <a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }" style="color:black; font-size: 14pt">${vo.name_kor }</a>
              
              <h4 class="u-text u-text-default u-text-6">
              <c:if test="${vo.im_buy!=0}">
              	<fmt:formatNumber pattern="#,###" value="${vo.im_buy }"/>원</h4>
              	<h5 class="u-text u-text-default u-text-7">즉시 구매가</h5>
              </c:if>
              <c:if test="${vo.im_buy==0}">
              	입찰 준비 중</h4>
              </c:if>
              
              <!-- 좋아요 -->
			<!--<c:if test="${sessionScope.user.user_id != null }">
                 <c:choose>
                   <c:when test="${jcount != 0 }">
                    <a href="../nav/likes.do?no=${no }&page=${curpage }&goods_id=${vo.goods_id }"><img src="../images/heartbf.png" style="width: 50px; height: 50px"></a>LIKE
                   </c:when>
                 <c:otherwise>
                  <img src="../images/heartaf.png" style="width: 50px; height: 50px">LIKE
                 </c:otherwise>
                </c:choose>
            </c:if>-->
            
            <p>
            <img src="../images/like.png" width="19px" height="19px"><span style="font-size: 12pt; font-weight: bold; font-style: oblique">
            <fmt:formatNumber pattern="#,###" value="${vo.bookmark }" /></span>
               
            </div>
          </div>
         </c:if>
         
         
         
      </c:forEach>
    </section>
    
  
</body></html>