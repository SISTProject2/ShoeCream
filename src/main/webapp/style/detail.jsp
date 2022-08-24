<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../home/style/style-detail.css" media="screen">
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<script>
function timeForToday(value) {
    const today = new Date();
    const timeValue = new Date(value);

    const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
    if (betweenTime < 1) return '방금전';
    if (betweenTime < 60) {
        return document.getElementById("time").innerHTML = betweenTime+"분 전";
    }

    const betweenTimeHour = Math.floor(betweenTime / 60);
    if (betweenTimeHour < 24) {
        return document.getElementById("time").innerHTML = betweenTimeHour+"시간 전";
    }

    const betweenTimeDay = Math.floor(betweenTime / 60 / 24);
    if (betweenTimeDay < 7) {
        return document.getElementById("time").innerHTML = betweenTimeDay+"일 전";
    }
    
    const betweenTimeWeek = Math.floor(betweenTimeDay / 7);
    if (betweenTimeWeek < 5) {
        return document.getElementById("time").innerHTML = betweenTimeWeek+"주 전";
    }
    
    const betweenTimeMonth = Math.floor(betweenTimeDay / 30);
    if (betweenTimeMonth < 12) {
        return document.getElementById("time").innerHTML = betweenTimeMonth+"개월 전";
    }

    return document.getElementById("time").innerHTML = Math.floor(betweenTimeDay / 365)+"년전";
}

</script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let i=0;

$(function(){
	$('.reply').click(function(){
		let id=$(this).attr("data-no");
		console.log(id);
		$('.rereply').hide();
		if(i==0){
			$('#reply'+id).show("slow");
			$('#writerp'+id).text("취소")
			i=1;
		} else {
			$('#reply'+id).hide();
			$('#writerp'+id).text("답글");
			i=0;
		}
	})
	
	$('#del').on("click",function(){
		let style_id=$(this).attr("data-id");
		
		$.ajax({
			type:'post',
			url:'../style/delete.do',
			data:{"style_id":style_id},
			success:function(result){
					location.href="../nav/nav_style.do"; 
			},
			error:function(err){
			}
			
		})
	})
}) 


function tagToLink(str){
    var newText = str.replace(/<br>/g, "\r\n");
    var txt = newText.replace(/#[^#\s,;]+/gm, function(tag2) {
        var tag = tag2.replace(/#/g, ""); 		
        return '<a href="../style/tag.do?tag=' + tag + '">' + tag2 + '</a>'
    });
    txt = txt.replace(/\n/g, "<br>")
    $('.content').html(txt)
    
    return txt;
}

$(function(){
	$('#chat').on("click",function(){
		
			$('#rp').focus();
			return;
	})
})
</script>
</head>
<body class="u-body u-xl-mode" data-lang="en">
    <section class="u-clearfix u-section-1" id="sec-3134">
      <div class="u-clearfix u-sheet u-sheet-1">
        <table style=" width: 100%; margin-top: 33px;">
          <tr>
            <td style="width:22%;"></td>
            <td style="width:4%;"><span><img src="../images/style/64572.png" style="width:35px; height:35px; margin-top: 6px;" alt=""></span></td>
            <td style=" width:7%"><span style="font-weight: 400;font-size: 1.5rem;font-family: Roboto,sans-serif;">${fn:substringBefore(vo.email ,'@')}</span></td>
            <td style=""><h6 class="u-text-grey-25 ti" id="time" value="${vo.style_id }" style="font-size: 0.875rem; margin-top: 28px;"><script>timeForToday("${vo.dbday}")</script></h6></td>
            <c:if test="${sessionScope.user_id==vo.u_id}"><%-- 본인이면 --%>
            <td style="width:30%; position: relative; z-index: 1; padding-top: 8px; ">
              <a href="../style/update.do?style_id=${vo.style_id }" style="color: #8C8C8C;">수정</a>
       		  <a href="" id="del" style="color: #8C8C8C; margin-left: 10px;" data-id="${vo.style_id }">삭제</a>
       		</td>
       		</c:if>
          </tr>
        </table>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-6e73" style="margin-top: -120px;">
      <div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-default u-image-1" src="${vo.img }" alt="" data-image-width="571" data-image-height="713">
      </div>
    </section>
    <section class="u-clearfix u-section-3" id="sec-ab75" style="margin-top: -120px;">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <c:if test="${sessionScope.user_id!=null}">
          <c:if test="${lcount==0 }">
            <span class="u-file-icon u-icon u-icon-1"><a href="../style/likes.do?style_id=${vo.style_id }"><img src="../images/style/1077035.png" alt="" style="position: relative; z-index: 1;"></a></span>
          </c:if>
          <c:if test="${lcount!=0 }">
            <span class="u-file-icon u-icon u-icon-1"><a href="../style/likes_cancel.do?style_id=${vo.style_id }"><img src="../images/style/heart_red.png" alt="" style="position: relative; z-index: 1;"></a></span>
          </c:if>
        </c:if>
        <c:if test="${sessionScope.user_id==null}">
          <c:if test="${lcount==0 }">
            <span class="u-file-icon u-icon u-icon-1"><a href="../style/likes.do?style_id=${vo.style_id }" onclick="return false"><img src="../images/style/1077035.png" alt="" style="position: relative; z-index: 1;"></a></span>
          </c:if>
          <c:if test="${lcount!=0 }">
            <span class="u-file-icon u-icon u-icon-1"><a href="../style/likes_cancel.do?style_id=${vo.style_id }" onclick="return false"><img src="../images/style/heart_red.png" alt="" style="position: relative; z-index: 1;"></a></span>
          </c:if>
        </c:if>
        <input type="image" class="u-file-icon u-icon u-icon-2" src="../images/style/589671.png" id="chat" style="width: 30px;  height: 30px; position: relative; z-index: 1;">
      </div>
    </section>
    <section class="u-clearfix u-section-4" id="sec-e3a3" style="margin-top: -120px;">
      <div class="u-align-left u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h5 class="u-custom-font u-font-open-sans u-text u-text-1 content"  name="content"><script>tagToLink("<br>${vo.content}")</script></h5>
      </div>
    </section>
    <section class="u-clearfix u-section-6" id="sec-fa3e">
      <div class="u-clearfix u-sheet u-sheet-1" style="min-height: 911px;">
        <div class="u-container-style u-group u-shape-rectangle u-group-1" style="width: 650px;  min-height: 596px;  height: auto;  margin: -80px auto 60px;">
          <div class="u-container-layout u-container-layout-1" style="padding: 0px 0;">
            <h6 class="u-text u-text-default u-text-1">댓글 ${vo.rcount }개</h6>
            <c:forEach var="svo" items="${list }">
            <table style="width: 650px; height: 70px; border-bottom: 1px solid #e5e5e5" >
              <tr>
                <td rowspan="2" width="10%">
                  <c:if test="${svo.group_tab==1 }">
                    <img class="u-image u-image-circle u-image-1 profile" src="../images/style/64572.png"  style=" width: 38px;  height: 38px; margin-left:40px; margin-bottom: 10px;">
                  </c:if>
                  <c:if test="${svo.group_tab==0 }">
                    <img class="u-image u-image-circle u-image-1 profile" src="../images/style/64572.png"  style="  width: 38px;  height: 38px; margin-bottom: 10px;">
                  </c:if>
                </td>
                <td width="70%" class="re" data-no="${svo.sreply_id }"  style="vertical-align: text-bottom;"">
                  <c:if test="${svo.group_tab==1 }">
		              <h6 class="u-text u-text-default u-text-1 name" style="  font-weight: 700; display:inline; margin-left:10px;">${svo.name }</h6>
		              <h6 class="u-custom-font u-font-source-sans-pro u-text u-text-default u-text-2 content" style=" font-size: 0.875rem;display:inline; margin-left: 5px; ">${svo.content }</h6>
                   </div>
                  </c:if>
                  <c:if test="${svo.group_tab==0 }">
		              <h6 class="u-text u-text-default u-text-1 name" style="  font-weight: 700; display:inline;">${svo.name }</h6>
		              <h6 class="u-custom-font u-font-source-sans-pro u-text u-text-default u-text-2 content" style=" font-size: 0.875rem;display:inline; margin-left: 5px;">${svo.content }</h6>
                  </c:if>
                </td>
                <td width="20%" style="float: right;">
                  <span class="u-custom-font u-font-source-sans-pro u-text u-text-default u-text-4" style="font-weight: 400; font-size: 0.9rem; width: 370px;">${svo.dbday }</span>
                </td>
              </tr>
              <tr>
                <td width="70%" class="re" data-no="${svo.sreply_id }">
                  <c:if test="${svo.group_tab==1 && sessionScope.user_id==svo.user_id }">
                      <a href="#" class="u-custom-font u-font-source-sans-pro u-text u-text-default  u-text-3" onclick="return false" style=" font-weight: 400; font-size: 0.75rem; margin-top:5px; display: inline; margin-left:10px; font-weight: 800; color: #425465">수정</a>
		              <a href="#" class="u-custom-font u-font-source-sans-pro u-text u-text-default  u-text-3" onclick="return false" style=" font-weight: 400; font-size: 0.75rem; margin-top:5px; display: inline; font-weight: 800; color: #a97275">삭제</a>
                   </div>
                  </c:if>
                  <c:if test="${svo.group_tab==0 }">
		              <a href="#" class="u-custom-font u-font-source-sans-pro u-text u-text-default u-text-palette-1-dark-1 u-text-3 reply" id="writerp${svo.sreply_id }" data-no="${svo.sreply_id }" onclick="return false" style="font-weight: 800; font-size: 0.75rem; margin-top:5px; display:inline;">답글</a>
		              &nbsp;
		            <c:if test="${sessionScope.user_id==svo.user_id}"><%-- 본인이면 --%>  
		              <a href="#" class="u-custom-font u-font-source-sans-pro u-text u-text-default u-text-3" onclick="return false" style=" font-weight: 400; font-size: 0.75rem; margin-top:5px; display: inline; font-weight: 800; color: #425465">수정</a>
		              <a href="#" class="u-custom-font u-font-source-sans-pro u-text u-text-default u-text-3" onclick="return false" style=" font-weight: 400; font-size: 0.75rem; margin-top:5px; display: inline; font-weight: 800; color: #a97275"">삭제</a>
                    </c:if>
                  </c:if>
                </td> 
                <td width="20%" style="float: right;">
                </td>
              
              </tr>
              <form method=post action="../stylereply/rereply_insert.do">
                <tr id="reply${svo.sreply_id }" style="display:none" class="rereply">
                  <td colspan="3" class="text-right inline" style="text-align: -webkit-center;">
                    <input type=hidden name=sid value="${vo.style_id }">
                    <input type=hidden name=style_id value="${svo.sreply_id }">
                    <input type=hidden name=group_id value="${svo.group_id }">
                    <input type=hidden name=group_step value="${svo.group_step }">
                    <input type=hidden name=group_tab value="${svo.group_tab }">
                    <input type=hidden name=name value="shim">
                    <textarea placeholder="댓글 입력.." id="message-6797" name="content" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-input-1" required="required" rows="1" style="font-size: 0.875rem; width: 496px; margin-left: -23px; border: 1px solid lightgrey"></textarea>
                    <input type="submit" class="u-black u-border-none u-btn u-btn-submit u-button-style u-btn-1" value="작성" id="writeBtn${svo.sreply_id }" data-no="${svo.sreply_id }" style="background-image: none; font-size: 0.875rem; padding: 8px 10px; margin-top: -53px; margin-left: 550px;">
                  </td>
                </tr>
              </form>
            </table>
            </c:forEach>
            <c:if test="${sessionScope.email!=null }"><%--로그인시에만 보여준다 --%>
            <img class="u-image u-image-circle u-image-2" data-image-width="1280" data-image-height="781" src="../images/style/64572.png" style="width: 46px; height: 46px; margin: 25px auto 0 3px;">
            <div class="u-form u-form-1" style="height: 44px;  margin: -45px -11px 0 91px;">
              <form method=post action="../stylereply/reply_insert.do">
              <class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" name="form" >
                <input type=hidden name=sid value="${vo.style_id }">
                <input type=hidden name=name value="hong">
                <div class="u-form-group u-form-message u-label-top">
                  <label for="name-558c" class="u-form-control-hidden u-label"></label>
                  <textarea placeholder="댓글 입력.." id="rp" name="content" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-input-1" required="required" rows="1" style="font-size: 0.875rem; width: 496px; margin-left: -23px; border: 1px solid lightgrey"></textarea>
                </div>
                <div class="u-form-group u-form-submit">
                  <input type="submit" class="u-black u-border-none u-btn u-btn-submit u-button-style u-btn-1" value="댓글" style="background-image: none; font-size: 0.875rem; padding: 8px 10px; margin-top: -53px; margin-left: 488px;">
                </div>
              </form>
            </div>
            </c:if>
          </div>
        </div>
      </div>
    </section>
            
    
    
    
    
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
</body>
</html>