<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>shoes_detail</title>
</head>
<link rel="stylesheet" href="../css/shoes_detail.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	//팝업 열기
	$(document).on("click", "btn-open", function(e) {
		var target = $(this).attr("href");
		$(target).addClass("show");
	})
	//팝업 닫기
	$(document).mouseup(function(e) {
		var LayerPopup = $(".layer-popup");
		if (LayerPopup.has(e.target).length === 0) {
			LayerPopup.removeClass("show");
		}
	})
</script>

<body>
	<main class="wrapper">
		<!--p class="category_location">HOME > MEN > 스니커즈</p -->
		<article class="detail_top">
			<section class="detail_img">
				<div>
					<a href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }"><img
						src="${vo.img }" alt=""></a>
				</div>
			</section>
			<section class="detail_info">
				<div>
					<div class="detail_name">
						<p class="d_brand">
							<a
								href="../shoes/shoes_detail_before.do?goods_id=${vo.goods_id }">${vo.brand }</a>
						</p>
						<div class="d_name">
							<span class="d_name_eng">${vo.name_eng }</span><br> <span>${vo.name_kor }</span>
						</div>
						<div class="d_share">
							<img src="../images/shoes_detail/share.png" alt="">
						</div>
					</div>
					<div>
						<div class="detail_size">
							<sapn>사이즈</sapn>
							<sapn class="d_size" id="modal_btn">모든 사이즈 ▼</sapn>

							<!-- 모달창-->
							<!-- <a href="#layer-popup" class="btn-open">팝업 열기</a>

                        <div class="container">
                            <div class="layer-popup show" id="layer-popup">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div>235</div>

                                    </div>
                                </div>
                            </div>
                        </div> -->

						</div>

						<div class="detail_price">
							<span>최근 거래가</span>


							<c:if test="${vo.rt_price!=0}">
								<span class="d_price"> <fmt:formatNumber pattern="#,###"
										value="${vo.rt_price }" />원
								</span>
							</c:if>

							<c:if test="${vo.rt_price==0}">
								<span class="d_price"> 입찰 준비 중 </span>
							</c:if>

						</div>
						
						<c:if test="${vo.variance!=null}">
						<div class="variance">
						<c:if test="${vo.variance== }">
						</c:if>
						
						▲ ${vo.variance }</div>
										</c:if>
						<c:if test="${vo.variance==null}">
						<div class="variance"><div class="variance">-</div>
						</c:if>
						
					</div>

					<div class="detail_amount">
						<div class="d_price_button">
							<div class="dpb_title">
								<div class="dpb">
									<b>BUY</b><br>
									<smail>즉시 구매가</smail>
								</div>
							</div>
							<div class="dpb">1,348,000원</div>

							<!-- <div>
                                모달창
                            </div> -->
						</div>
						<div class="d_price_button">
							<div class="dpb_title">
								<div class="dpb">
									<b>SELL</b><br>
									<smail>즉시 판매가</smail>
								</div>
							</div>
							<div class="dpb">1,348,000원</div>

							<!-- <div>
                                모달창
                            </div> -->
						</div>
						<div class="detail_like">
							<img src="../images/shoes_detail/like_g.png" alt="">
							<div>12000</div>
						</div>
					</div>
					<div class="goods_info">
						<div class="goods_h1">상품 정보</div>
						<div class="GI_detail">
							<div class="GI_title">
								모델 번호<br> 출시일<br> 컬러<br> 발매가<br> 배송 정보
							</div>
							<div class="GI_contents">
								<strong>DM7866-162</strong><br> 22/07/21<br>
								SAIL/UNIVERSITY RED-RIDGEROCK<br> 189,100원<br> 3,000원<span>
									| 검수 후 배송 5-7일 내 도착 예정</span>
							</div>
						</div>
					</div>

					<div>
						<div class="buy_h1">구매 전 꼭 확인해주세요!</div>
					</div>

					<details>
						<summary>배송 기간 안내</summary>
						<p>SHOECREAM은 최대한 빠르게 모든 상품을 배송하기 위해 노력하고 있습니다. 배송 시간은 판매자가
							검수를 위하여 상품을 검수센터로 보내는 속도에 따라 차이가 있습니다.</p>
						<p>- 거래가 체결된 시점부터 48시간(일요일•공휴일 제외) 내에 판매자가 상품을 발송해야 하며, 통상적으로
							발송 후 1-2일 내에 검수센터에 도착합니다.</p>
						<p>
							- 검수센터에 도착한 상품은 입고 완료 후 3영업일 이내에 검수를 진행합니다. 검수 합격시 배송을 준비합니다. <br>
							* 상품 종류 및 상태에 따라 검수 소요 시간은 상이할 수 있으며, 구매의사 확인에 해당할 경우 구매자와 상담
							진행으로 인해 지연이 발생할 수 있습니다.
						</p>

						<p>- 검수센터 출고는 매 영업일에 진행하고 있으며, 출고 마감시간은 오후 5시입니다. 출고 마감시간 이후
							검수 완료건은 운송장번호는 입력되지만 다음 영업일에 출고됩니다.</p>
					</details>

					<details>
						<summary>검수 안내</summary>
						<p>판매자의 상품이 검수센터에 도착하면 전담 검수팀이 철저한 분석과 검사로 정가품 확인을 진행합니다.</p>
						<p>- 검수센터에서는 정가품 여부를 확인하기 위하여, 지속적으로 데이터를 쌓고 분석하여 기록하고 있습니다.</p>
						<p>- 업계 전문가로 구성된 검수팀은 박스와 상품의 라벨에서 바느질, 접착, 소재 등 모든 것을 검수합니다.</p>
						<p>검수 결과는 불합격•검수 보류•합격의 세가지 상태로 결과가 변경됩니다.</p>
						<p>
							* 검수 합격: 검수택(Tag)이 부착되어 배송을 준비함<br> * 검수 보류: 앱에서 사진으로 상품의 상태
							확인 및 구매 여부를 선택. (24시간 이후 자동 검수 합격)<br> * 검수 불합격: 즉시 거래가 취소되고
							구매하신 금액을 환불 처리함.(환불 수단은 결제 수단과 동일)
						</p>
					</details>

					<details>
						<summary>구매 환불/취소/교환 안내</summary>
						<p>SHOECREAM은 익명 거래를 기반으로 판매자가 판매하는 상품을 구매자가 실시간으로 구매하여 거래를
							체결합니다.</p>
						<p>- 단순 변심이나 실수에 의한 취소/교환/반품이 불가능합니다. 상품을 원하지 않으시는 경우 언제든지
							SHOECREAM에서 재판매를 하실 수 있습니다.</p>
						<p>- 상품 수령 후, 이상이 있는 경우 SHOECREAM 고객센터로 문의해주시기 바랍니다.</p>
					</details>
				</div>
			</section>
		</article>

		<hr>

		<article>
			<h1>
				style <a>349</a>
			</h1>
			<article>
				<img src="" alt="">
			</article>
			<button>MORE</button>
		</article>

		<hr>

		<article>
			<h1>이런 상품은 어때요</h1>
			<section>
				<img src="" alt="">
			</section>
		</article>

		<hr>

		<article>
			<h1>다른 고객들이 함께 찾는 상품</h1>
			<section>
				<img src="" alt="">
			</section>
		</article>
	</main>
</body>

</html>