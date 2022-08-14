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

.pagination > li > a{
	float: none;
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
      <img class="u-expanded-width u-image u-image-default u-image-1" style="margin-top:120px;" src="../home/nav_men/images/women.jpg" alt="" data-image-width="694" data-image-height="324">
      <div class="u-table u-table-responsive u-table-1">
        <table class="u-table-entity">
          <colgroup>
            <col width="16.3%">
            <col width="83.7%">
          </colgroup>
          <tbody class="u-table-body">
            <tr style="height: 20px;">
              <td class="u-border-1 u-border-grey-dark-1 u-grey-75 u-table-cell u-table-cell-1" style="font-size: 12pt">&nbsp; &nbsp;카테고리</td>
              <td class="u-border-1 u-border-grey-dark-1 u-table-cell"></td>
            </tr>
            <tr style="height: 70px;">
              <td class="u-border-1 u-border-grey-dark-1 u-grey-75 u-table-cell u-table-cell-3" style="font-size: 12pt">&nbsp; &nbsp;브랜드</td>
              <td class="u-border-1 u-border-grey-dark-1 u-table-cell"></td>
            </tr>
            <tr style="height: 30px;">
              <td class="u-border-1 u-border-grey-dark-1 u-grey-75 u-table-cell u-table-cell-5" style="font-size: 12pt">&nbsp; &nbsp;가격</td>
              <td class="u-border-1 u-border-grey-dark-1 u-table-cell"></td>
            </tr>
            <tr style="height: 30px;">
              <td class="u-border-1 u-border-grey-dark-1 u-grey-75 u-table-cell u-table-cell-7" style="font-size: 12pt">&nbsp; &nbsp;발매일</td>
              <td class="u-border-1 u-border-grey-dark-1 u-table-cell"></td>
            </tr>
            <tr style="height: 30px;">
              <td class="u-border-1 u-border-grey-dark-1 u-grey-75 u-table-cell u-table-cell-9" style="font-size: 12pt">&nbsp; &nbsp;색상</td>
              <td class="u-border-1 u-border-grey-dark-1 u-table-cell"></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1" style="display: flex; position: relative; bottom: -75px;">
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-2">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-1" style="font-size: 12pt; z-index: 1">운동화&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-2">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-2" style="font-size: 12pt; z-index: 1">스니커즈&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
            <div class="u-container-layout u-similar-container u-container-layout-2">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-2" style="font-size: 12pt; z-index: 1;">샌들&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
            <div class="u-container-layout u-similar-container u-container-layout-2">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-2" style="font-size: 12pt; z-index: 1">부츠&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
            <div class="u-container-layout u-similar-container u-container-layout-2">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-2" style="font-size: 12pt; z-index: 1">로퍼/플랫&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
            <div class="u-container-layout u-similar-container u-container-layout-2">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-2" style="font-size: 12pt">장화</a>
            </div>
          </div>
        </div>
      </div>
      <div class="u-list u-list-2">
        <div class="u-repeater u-repeater-2" style="display: flex; position: relative; bottom: -25px">
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-3" style="font-size: 12pt">2015&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-4" style="font-size: 12pt">2016&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-4" style="font-size: 12pt">2017&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-4" style="font-size: 12pt">2018&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-4" style="font-size: 12pt">2019&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-4" style="font-size: 12pt">2020&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-4" style="font-size: 12pt">2021&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-4" style="font-size: 12pt">2022</a>
            </div>
          </div>
        </div>
      </div>
      <div class="u-list u-list-3">
        <div class="u-repeater u-repeater-3" style="display: flex; position: relative; bottom: -15px">
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-5">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-5" style="font-size: 12pt">BLACK&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-6">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-6" style="font-size: 12pt">WHITE&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-6">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-6" style="font-size: 12pt">BLACK/WHITE&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-6">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-6" style="font-size: 12pt">NAVY&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-6">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-6" style="font-size: 12pt">IVORY&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-6">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-6" style="font-size: 12pt">GREY&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-6">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-6" style="font-size: 12pt">기타 색상</a>
            </div>
          </div>
        </div>
      </div>
      <div class="u-list u-list-4">
        <div class="u-repeater u-repeater-4" style="display: flex; position: relative; bottom: -30px">
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-7">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-7" style="font-size: 12pt">~10만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-7">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-7" style="font-size: 12pt">10만원~20만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-7">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-7" style="font-size: 12pt">20만원~30만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-7">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-7" style="font-size: 12pt">30만원~40만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-7">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-7" style="font-size: 12pt">40만원~50만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>        
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-7">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-7" style="font-size: 12pt">50만원~</a>
            </div>
          </div>        
        </div>
      </div>
      <div class="u-align-left u-list u-list-5">
        <div class="u-repeater u-repeater-5" style="display: flex; position: relative; bottom: -60px">
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-9">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-9" style="font-size: 12pt">AUTRY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-10">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-10" style="font-size: 12pt">JORDAN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-10">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-10" style="font-size: 12pt">ASICS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-10">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-10" style="font-size: 12pt">BOTEGGA VENETA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-10">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-10" style="font-size: 12pt">기타 브랜드</a>
            </div>
          </div>
        </div>
      </div>
      <div class="u-list u-list-6">
        <div class="u-repeater u-repeater-6" style="display: flex; position: relative; bottom: -70px">
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-11">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-11" style="font-size: 12pt">NIKE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-12">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-12" style="font-size: 12pt">ADIDAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-13">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-13" style="font-size: 12pt">NEW BALANCE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-14">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-13" style="font-size: 12pt">MIHARA YASUHIRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-14">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-13" style="font-size: 12pt">HERMES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
          </div>
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-14">
              <a href="https://nicepage.com/wordpress-website-builder" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-black u-btn-13" style="font-size: 12pt">DR.MARTENS</a>
            </div>
          </div>

          </div>
        </div>
      </div>
      <a href="https://nicepage.com/website-builder" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-body-color u-btn-14" style="font-size: 12pt">전체 삭제</a>
      <h5 class="u-text u-text-default u-text-1">Sample</h5>
      
      <h2 class="u-text u-text-default u-text-2" style="position: relative; top: 40px">WOMEN</h2>
      
      <!-- 필터 드랍다운 -->
      <div class="one-line" style="display: inline-block;" > 
      <div class="drop-down" style="position: relative; right: -1050px">
		    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">슈크림 추천제품순
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		      <li><a href="#">좋아요 많은순</a></li>
		      <li><a href="#">높은 즉시구매가순</a></li>
		      <li><a href="#">낮은 즉시구매가순</a></li>
		      <li><a href="#">최신 발매순</a></li>
		      <li><a href="#">오래된 발매순</a></li>
		    </ul>
		  </div>
		  </div>

		<!--  -->
				
      <div class="u-border-2 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
      <div class="u-align-center u-list u-list-7">
        <div class="u-repeater u-repeater-7">
        <c:forEach var="vo" items="${list }" varStatus="s">
        <c:if test="${s.index>=0 && s.index<12 }">
          <div class="u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-14">
              <a href="../shoes/shoes_list.do?goods_id=${vo.goods_id }"><img class="u-align-center u-image u-image-default u-image-2" src="${vo.img }" alt="" data-image-width="400" data-image-height="265"></a>
              <a href="../shoes/shoes_list.do?brand=${vo.brand }" style="color:black; font-size: 13pt; font-weight: bold"><span style="text-decoration: underline !important;">${vo.brand }<br></span></a>
              <a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }" style="color:black; font-size: 13pt">${vo.name_eng }</a><br>
              <a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }" style="color:black; font-size: 14pt">${vo.name_kor }</a>
              
              <h4 class="u-text u-text-default u-text-6"><fmt:formatNumber pattern="#,###" value="${vo.im_buy }"/>원</h4>
              <h5 class="u-text u-text-default u-text-7">즉시 구매가</h5>
              <h5 class="u-text u-text-default u-text-8">${vo.bookmark }</h5><span class="u-icon u-text-palette-1-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 51.997 51.997" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-77d5"></use></svg><svg class="u-svg-content" viewBox="0 0 51.997 51.997" x="0px" y="0px" id="svg-77d5" style="enable-background:new 0 0 51.997 51.997;"><g><path d="M51.911,16.242C51.152,7.888,45.239,1.827,37.839,1.827c-4.93,0-9.444,2.653-11.984,6.905
		c-2.517-4.307-6.846-6.906-11.697-6.906c-7.399,0-13.313,6.061-14.071,14.415c-0.06,0.369-0.306,2.311,0.442,5.478
		c1.078,4.568,3.568,8.723,7.199,12.013l18.115,16.439l18.426-16.438c3.631-3.291,6.121-7.445,7.199-12.014
		C52.216,18.553,51.97,16.611,51.911,16.242z M49.521,21.261c-0.984,4.172-3.265,7.973-6.59,10.985L25.855,47.481L9.072,32.25
		c-3.331-3.018-5.611-6.818-6.596-10.99c-0.708-2.997-0.417-4.69-0.416-4.701l0.015-0.101C2.725,9.139,7.806,3.826,14.158,3.826
		c4.687,0,8.813,2.88,10.771,7.515l0.921,2.183l0.921-2.183c1.927-4.564,6.271-7.514,11.069-7.514
		c6.351,0,11.433,5.313,12.096,12.727C49.938,16.57,50.229,18.264,49.521,21.261z"></path>
</g></svg></span>
            </div>
          </div>
         </c:if>
      </c:forEach>
   
        </div>
      </div>
    </section>
    
    
    <nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item">
	      
		      <c:if test="${startPage > 1 }">
		      <a class="page-link" href="../nav/nav_women.do?page=${startPage-1 }" aria-label="Previous">
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
	            
	            <li ${style }><a href="../nav/nav_women.do?page=${i }">${i }</a></li>
	       </c:forEach>

		    <li class="page-item">
		    
		      <c:if test="${endPage < totalpage }">
		      <a class="page-link" href="../nav/nav_women.do?page=${endPage+1 }" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		        <span class="sr-only">Next</span>
		      </a>
		      </c:if>
		      
		    </li>
		  </ul>
		</nav>
		
		
		<div style= "margin-top:160px"></div>
    
    

  
</body></html>