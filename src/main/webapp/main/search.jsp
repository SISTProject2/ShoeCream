<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*,com.sist.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<meta name="keywords" content="">
<meta name="description" content="">

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!--  -->


<title>Insert title here</title>
<link rel="stylesheet" href="../home/Home2.css" media="screen">
<meta name="generator" content="Nicepage 4.15.8, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<style type="text/css">
@charset "UTF-8";



.nanumgothic * {
    font-family: 'Nanum Gothic', sans-serif;
}

html, body {
    margin-left: 0;
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
   /*  width: 100%; */
    height: 23px;
    border-width: 0 0 3px;
    line-height: normal;
    display: inline-block;
    vertical-align: middle;
    border-color: #000;
    /* background-image: url("../images/search_b.png"); */
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

.pagination > li > a{
	float: none;
}

#nav .NEW {
    color: red;
    font-weight: 600;
    font-family: sans-serif;
    font-size: 16px;
}

#nav_li {
    list-style: none;  /*<li> 태그는 위의 이미지처럼 목록을 나타내는 점을 없앤다 */
    float: left; /*<li>태그들이 왼쪽에 흐르게 설정(그러면 아래있는 내용은 오른쪽으로 옴)*/
    vertical-align: middle; /* 세로 정렬을 가운데로 설정(위의 line-height와 같이 설정 필요함)*/
    text-align: center;     /*글씨 정렬을 가운데로 설정*/
    color: white;
    font-family: sans-serif;
    font-size: 16px;
}

</style>     
      
<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
<script type="text/javascript">
function abbreviateNumber(value) {
    var newValue = value;
    if (value >= 1000) {
        var suffixes = ["", "k", "m", "b","t"];
        var suffixNum = Math.floor( (""+value).length/3 );
        var shortValue = '';
        for (var precision = 2; precision >= 1; precision--) {
            shortValue = parseFloat( (suffixNum != 0 ? (value / Math.pow(1000,suffixNum) ) : value).toPrecision(precision));
            var dotLessShortValue = (shortValue + '').replace(/[^a-zA-Z 0-9]+/g,'');
            if (dotLessShortValue.length <= 2) { break; }
        }
        if (shortValue % 1 != 0)  shortValue = shortValue.toFixed(1);
        newValue = shortValue+suffixes[suffixNum];
    }
    return newValue;
}
</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="Home">
<meta property="og:type" content="website">
<meta charset="UTF-8">
</head>
<body class="u-body u-xl-mode" data-lang="en">
<section class="u-clearfix u-section-1" id="sec-6bda">
  <div class="u-clearfix u-sheet u-sheet-1">
    <div class="u-repeater u-repeater-1 repeat" style="height: 1530px; margin-left: -200px; width: 1523px; margin-top: 10px;">
      <c:forEach var="vo" items="${list }" varStatus="s">
       	<c:if test="${s.index>=0 && s.index<12 }">
       	  <div class="u-container-style u-list-item u-repeater-item" style="height: 400px;">
            <div class="u-container-layout u-similar-container u-container-layout-1">
              <a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }"><img class="u-expanded-width u-image u-image-default u-image-1" src="${vo.img }" alt="" style="height: 320px;" data-image-width="400" data-image-height="400"></a>
              <span class="u-icon u-text-palette-1-base u-icon-1" style="width: 26px; height: 26px; margin: -305px 14px 0 auto;   padding: 0;">
                <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 51.997 51.997" style="">
                  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-96b0">
                  </use>
                </svg>
                
                
              </span>
              <p class="u-text u-text-default u-text-3" style="margin: 292px auto -18px 10px; font-size: 0.95rem; ">
              <a href="../shoes/shoes_brand.do?brand=${vo.brand }" style="color:black"><span style="text-decoration: underline !important;">${vo.brand }<br></span></a>
              <br>
              </p>
              <p class="u-text u-text-default u-text-4" style="font-size: 0.825rem;"><a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }" style="color:black">${vo.name_eng }</a></p>
              <p class="u-text u-text-default u-text-4" style="font-size: 0.825rem;"><a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }" style="color:black">${vo.name_kor }</a></p>
              <a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }" style="color:black"><p class="u-text u-text-default u-text-6" style="font-size: 0.85rem;"><fmt:formatNumber pattern="#,###" value="${vo.im_buy }"/>원<br></p></a>
              <p class="u-text u-text-default u-text-7" style="font-size: 0.825rem;">즉시 구매가</p>

				<!-- bookmark -->
				
				<p>
            	<img src="../images/like.png" width="12px" height="12px"><span style="font-size: 8.5pt; font-weight: bold; font-style: oblique">
            <fmt:formatNumber pattern="#,###" value="${vo.bookmark }" /></span> 

              <span class="u-icon u-text-palette-1-base u-icon-2" style="width: 18px;  height: 18px; margin: -19px auto 0 10px;" >
                <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 51.997 51.997" style="">
                  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3069">
                  </use>
                </svg>
                
              </span>
            </div>
       	  </div>
            
        </c:if>
      </c:forEach>
      <!--  -->
                     
      </div>
      
      <div style= "margin-top:100px"></div>
      
           
      <nav aria-label="Page navigation example">
		  <ul class="pagination" style="margin-bottom: 199px;">
		    <li class="page-item">
	      
		      <c:if test="${startPage > 1 }">
		      <a class="page-link" href="search.do?page=${startPage-1 }&fd=${fd}" aria-label="Previous">
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
	            
	            <li ${style } ><a href="search.do?page=${i }&fd=${fd}" >${i }</a></li>
	       </c:forEach>

		    <li class="page-item">
		    
		      <c:if test="${endPage < totalpage }">
		      <a class="page-link" href="search.do?page=${endPage+1 }&fd=${fd}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		        <span class="sr-only">Next</span>
		      </a>
		      </c:if>
		      
		    </li>
		  </ul>
		</nav>
		
		   
  </div>
</section>    
</body>
</html>