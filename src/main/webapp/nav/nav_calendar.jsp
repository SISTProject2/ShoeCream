<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="12, 12, 12, 12, 12, 12, 12, 12, 12, 12">
<meta name="description" content="">
<title>Home</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!--  -->

<link rel="stylesheet" href="../home/calendar/nicepage.css" media="screen">
<link rel="stylesheet" href="../home/calendar/Home.css" media="screen">
<script class="u-script" type="text/javascript" src="../home/calendar/jquery.js" "="" defer=""></script>
<script class="u-script" type="text/javascript" src="../home/calendar/nicepage.js" "="" defer=""></script>
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

.pagination > li > a{
   float: none;
}

</style>     

<script type="application/ld+json">{
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body data-home-page="Home.html" data-home-page-title="Home" class="u-body u-xl-mode" data-lang="en">
    
    <section class="u-clearfix u-section-1" id="sec-9b4a">
    
      <div class="u-list u-list-1"> 
       <div class="u-repeater u-repeater-1" >
       	<c:forEach var="vo" items="${list }" varStatus="s">
   		<c:if test="${s.index>=0 && s.index<10 }"> 
	         <div class="u-container-style u-list-item u-repeater-item">     
	           <div class="u-container-layout u-similar-container u-container-layout-1">
	             <img class="u-expanded-width u-image u-image-default u-image-1" src="${vo.img }" alt="" data-image-width="400" data-image-height="265">
	             <h4 class="u-custom-item	 u-text u-text-default u-text-1">${vo.dbmonth }월</h4>
	             <h2 class="u-custom-item u-text u-text-default u-text-2" font-weight: bold;>${vo.dbday }</h2>
	             <h6 class="u-custom-item u-text u-text-default u-text-3">${vo.brand }</h6>
	             <h4 class="u-custom-item u-text u-text-default u-text-4" style="font-size: 17pt; font-weight: bold;">${vo.name_kor }</h4>
	           </div>
	          </div>
	      </c:if>
   		</c:forEach>
	     </div>  
       </div> 
     </div>
      	
      
      
      
      <div class="top u-align-left u-container-style u-expanded-width u-group u-palette-5-light-2 u-shape-rectangle u-group-1">&nbsp;&nbsp;
        <div class="u-container-layout u-container-layout-11" style="margin-top:120px;">
          <div class="u-layout-grid u-list u-list-2">
            <div class="u-repeater u-repeater-2" style="display: flex;">
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-12">
                  <a href="../nav/nav_calendar.do?regdate=22/01" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-1">1월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-13">
                  <a href="../nav/nav_calendar.do?regdate=22/02" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-2">2월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-14">
                  <a href="../nav/nav_calendar.do?regdate=22/03" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-3">3월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-15">
                  <a href="../nav/nav_calendar.do?regdate=22/04" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-4">4월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-16">
                  <a href="../nav/nav_calendar.do?regdate=22/05" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-5"> 5월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-17">
                  <a href="../nav/nav_calendar.do?regdate=22/06" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-6">6월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-18">
                  <a href="../nav/nav_calendar.do?regdate=22/07" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-7">7월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-19">
                  <a href="../nav/nav_calendar.do?regdate=22/08" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-8">8월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-20">
                  <a href="../nav/nav_calendar.do?regdate=22/09" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-9">9월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-21">
                  <a href="../nav/nav_calendar.do?regdate=22/10" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-10">10월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-21">
                  <a href="../nav/nav_calendar.do?regdate=22/11" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-10">11월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-21">
                  <a href="../nav/nav_calendar.do?regdate=22/12" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-10">12월</a>
                </div>
              </div>
              <div class="u-container-style u-list-item u-repeater-item">
                <div class="u-container-layout u-similar-container u-container-layout-21">
                  <a href="../nav/nav_calendar_tba.do" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-grey-80 u-btn-10">TBA</a>
                </div>
              </div>
            </div>
          </div>
        </div>     
      </div>
      
      
      <!-- 페이징 버튼 -->
     	<nav aria-label="Page navigation example">&nbsp;&nbsp;
		  <ul class="pagination">
		    <li class="page-item">
	      
		      <c:if test="${startPage > 1 }">
		      <a class="page-link" href="../nav/nav_calendar.do?regdate=${regdate }&page=${startPage-1 }" aria-label="Previous">
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
	            
	            <li ${style }><a href="../nav/nav_calendar.do?regdate=${regdate }&page=${i }">${i }</a></li>
	       </c:forEach>

		    <li class="page-item">
		    
		      <c:if test="${endPage < totalpage }">
		      <a class="page-link" href="../nav/nav_calendar.do?regdate=${regdate }&page=${endPage+1 }" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		        <span class="sr-only">Next</span>
		      </a>
		      </c:if>
		      
		    </li>
		  </ul>
		</nav>
		
		<div style= "margin-top:100px"></div>
      
      
      
    </section>
    
   
    
  
</body></html>