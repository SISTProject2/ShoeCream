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
    <title>cs_QnA</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="cs_QnA.css" media="screen">
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


    <script>
        $(document).on('click', '.upBtn', function () {
            let cs_id = $(this).data('cs_id');
            let s_type = $(this).data('s_type');
            let title = $(this).data('title');
            let reply = $(this).data('reply');
            let content = $(this).data('content');
            let img = $(this).data('img');
            if (img != '' && img != null) {
                $("#qnaImg").attr("src", "../cs/img.do?img="+img);
            } else {
                $("#qnaImg").attr("src", "images/f8343086770128586d092cbd3eb69339ae7a6fbae365335cf23f48993ac7fed6e761c0bb421b6562cb65abedd50b6331a005d02183ab3925e18bb8_1280.png");
            }
            $("#cs_id").val(cs_id);
            $("#s_type").val(s_type);
            $("#title").val(title);
            $("#content").val(content);
            $("#reply").val(reply);
            $("#carousel_3c7f").addClass("u-dialog-open");
        });


        $(document).on('change','#img',function () {
          if (this.files && this.files[0])
          {
            var reader = new FileReader();

            reader.onload = function (e) {
              $("#preview").attr('src', e.target.result);
            }
            reader.readAsDataURL(this.files[0]);
          }
        });
        $(document).on('click','#fileClear',function () {
          $("#preview").attr('src',"images/f8343086770128586d092cbd3eb69339ae7a6fbae365335cf23f48993ac7fed6e761c0bb421b6562cb65abedd50b6331a005d02183ab3925e18bb8_1280.png");
          $("#img").val("");
        });

    </script>


    <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "AdminANDCsPage"
    }</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="cs_QnA">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode" data-lang="en">
<header class="u-clearfix u-header u-palette-5-dark-2 u-header" id="sec-355c">
    <div class="u-clearfix u-sheet u-sheet-1"></div>
</header>
<section class="u-align-center u-clearfix u-section-1" id="carousel_042d">
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
                    <div class="u-container-layout u-valign-top u-container-layout-1">
                        <div class="u-container-style u-group u-shape-rectangle u-white u-group-1">
                            <div class="u-container-layout u-container-layout-2">
                                <h1 class="u-text u-text-default u-text-1">
                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1"
                                       href="admin__login.html" data-page-id="1289201052">고객관리센터<br>
                                    </a>
                                </h1>
                                <h3 class="u-text u-text-default u-text-2"><a href="../cs/cs_notice.do">공지사항</a></h3>
                                <h3 class="u-text u-text-default u-text-3"><a href="../cs/cs_QnA.do">1:1문의</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="u-container-style u-layout-cell u-size-48 u-layout-cell-2">
                    <div class="u-container-layout u-container-layout-3">
                        <div class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-container-style u-group u-shape-rectangle u-white u-group-2">
                            <div class="u-container-layout u-container-layout-4">
                                <h3 class="u-text u-text-default u-text-4">1:1문의</h3>
                            </div>
                        </div>
                        <div class="u-container-style u-group u-shape-rectangle u-group-3">
                            <div class="u-container-layout u-container-layout-5">
                                <h3 class="u-text u-text-white u-text-5">
                                    <span style="font-weight: normal;">price</span>
                                </h3>
                                <div class="u-container-style u-group u-shape-rectangle u-group-4">
                                    <div class="u-container-layout u-container-layout-6">


                                        <c:forEach var="list" items="${list}" varStatus="s">
                                            <c:if test="${s.index>=0 && s.index<10 }">
                                                <div class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-light-1 u-container-style u-group u-shape-rectangle u-group-5">
                                                    <div class="u-container-layout u-container-layout-7">
                                                        <a data-cs_id="${list.cs_id}" data-s_type="${list.s_type}"
                                                           data-content="${list.content}" data-title="${list.title}"
                                                           data-img="${list.img}" data-reply="${list.reply}"
                                                           class="upBtn u-active-white u-align-left u-border-none u-btn u-button-style u-hover-white u-text-active-black u-text-black u-text-hover-black u-white u-btn-2">${list.title}</a>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>

                                    </div>
                                </div>
                                <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-white u-group-16">
                                    <div class="u-container-layout u-valign-middle u-container-layout-18">


                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination" style="margin-bottom: 199px;">
                                                <li class="page-item">
                                                    <c:if test="${startPage > 1 }">
                                                        <a class="page-link"
                                                           href="../cs/cs_QnA.do?page=${startPage-1 }"
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
                                                            href="../cs/cs_QnA.do?page=${i}">${i }</a>
                                                    </li>
                                                </c:forEach>
                                                <li class="page-item">

                                                    <c:if test="${endPage < totalpage }">
                                                        <a class="page-link"
                                                           href="../cs/cs_QnA.do?page=${endPage+1 }"
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
                        <a href="#carousel_107d"
                           class="u-border-2 u-border-black u-btn u-btn-round u-button-style u-dialog-link u-hover-black u-none u-radius-22 u-text-hover-white u-btn-16">문의하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<footer class="u-align-center u-clearfix u-footer u-palette-5-dark-2 u-footer" id="sec-a9f8">
    <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
    </div>
</footer>
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
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-8"
         id="carousel_107d">
    <div class="u-container-style u-dialog u-white u-dialog-1">
        <div class="u-container-layout u-container-layout-1">
            <div class="u-expanded-width u-form-1">
                <form id="form" action="../cs/save_QnA.do" method="POST" enctype="multipart/form-data" style="padding:0 51px">
                    <div class="u-form-group u-form-name u-form-partition-factor-2">
                      <div class="u-form-group u-form-name u-form-partition-factor-2" style="height: 208px;">
                            <img id="preview" class="u-image u-image-default u-image-1"
                                 src="images/f8343086770128586d092cbd3eb69339ae7a6fbae365335cf23f48993ac7fed6e761c0bb421b6562cb65abedd50b6331a005d02183ab3925e18bb8_1280.png"
                                 alt="" data-image-width="150" data-image-height="100">
                            <label for="img" class="custom-btn u-border-2 u-border-hover-palette-1-base u-border-palette-1-base  u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-30 u-btn-1"
                                   > 수정</label>
                          <input type="file" name="img" id="img"
                                    style="display: none";>
                            <a id="fileClear"
                               class="custom-btn u-border-2  u-border-hover-palette-1-base u-border-palette-1-base u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-30 u-btn-2">삭제</a>
                        </div>
                        <div class="u-form-group u-form-name u-form-partition-factor-2">
                            <label for="name-e29c" class="u-label">*문의유형</label>
                            <input type="text" id="name-e29c" name="s_type"
                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""
                                   placeholder="제품하자/오류/신고" maxlength="100">
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-2">
                            <label for="phone-6f41" class="u-label">*제목</label>
                            <input type="text"  placeholder="제목입력" id="phone-6f41" name="title"
                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" maxlength="20"
                                   required="required">
                        </div>
                        <div class="u-form-group u-form-textarea u-form-group-3">
                            <label for="textarea-2410" class="u-label">*문의내용</label>
                            <textarea rows="10" cols="50" id="textarea-2410" name="content"
                                      class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""
                                      maxlength="2000" placeholder="내용 입력"></textarea>
                        </div>
                        <div class="u-align-center u-form-group" style="margin-left: -50px; margin-top: 90px;">
                            <a onclick="$('#form')[0].reset();   $('#preview').attr('src','images/f8343086770128586d092cbd3eb69339ae7a6fbae365335cf23f48993ac7fed6e761c0bb421b6562cb65abedd50b6331a005d02183ab3925e18bb8_1280.png');
                          $('#img').val('');" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-button-style u-hover-palette-1-base u-none u-btn-4">취소</a>
                            <input type="submit"
                                   class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base  u-button-style u-hover-palette-1-base u-none u-btn-5"
                                   value="문의" style="display: block; margin-left: 498px; width: 94px; height: 46.3px;">

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
<style> .u-dialog-section-8 {
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
.u-dialog-section-8 .u-dialog-1 {
    width: 1006px;
    min-height: 800px;
    margin: 125px auto 60px calc(((100% - 1140px) / 2));
}

.u-dialog-section-8 .u-container-layout-1 {
    padding: 0;
}

.u-dialog-section-8 .u-image-1 {
    width: 180px;
    height: 180px;
    margin: 30px auto 0 59px;
}

.u-dialog-section-8 .u-btn-1 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -113px auto 0 294px;
}

.u-dialog-section-8 .u-btn-2 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -40px auto 0 398px;
}

.u-dialog-section-8 .u-form-1 {
    height: 590px;
    margin-top: 67px;
    margin-bottom: 0;
}

.u-dialog-section-8 .u-form-group-2 {
    margin-left: 0;
}

.u-dialog-section-8 .u-form-group-3 {
    margin-left: 0;
}

.u-dialog-section-8 .u-btn-3 {
    background-image: none;
    border-style: solid;
}

.u-dialog-section-8 .u-btn-4 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -83px auto 0 393px;
}

.u-dialog-section-8 .u-btn-5 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -46px 393px 0 auto;
}

.u-dialog-section-8 .u-icon-1 {
    width: 20px;
    height: 20px;
    left: auto;
    top: 10px;
    right: 7px;
    position: absolute;
}

@media (max-width: 1199px) {
    .u-dialog-section-8 .u-dialog-1 {
        width: 940px;
        margin-left: calc(((100% - 940px) / 2));
        height: auto;
    }

    .u-dialog-section-8 .u-btn-1 {
        margin-left: 228px;
    }

    .u-dialog-section-8 .u-btn-2 {
        margin-left: 332px;
    }

    .u-dialog-section-8 .u-btn-4 {
        margin-top: -83px;
        margin-left: 360px;
    }

    .u-dialog-section-8 .u-btn-5 {
        margin-right: 327px;
        margin-left: 487px;
    }
}

@media (max-width: 991px) {
    .u-dialog-section-8 .u-dialog-1 {
        width: 720px;
        margin-left: calc(((100% - 720px) / 2));
    }

    .u-dialog-section-8 .u-btn-1 {
        margin-left: 8px;
    }

    .u-dialog-section-8 .u-btn-2 {
        margin-left: 112px;
    }

    .u-dialog-section-8 .u-btn-4 {
        margin-left: 250px;
    }

    .u-dialog-section-8 .u-btn-5 {
        margin-right: 107px;
        margin-left: 377px;
    }
}

@media (max-width: 767px) {
    .u-dialog-section-8 .u-dialog-1 {
        width: 540px;
        margin-left: calc(((100% - 540px) / 2));
    }

    .u-dialog-section-8 .u-btn-1 {
        margin-left: 0;
    }

    .u-dialog-section-8 .u-btn-2 {
        margin-left: 0;
    }

    .u-dialog-section-8 .u-btn-4 {
        margin-left: 196px;
    }

    .u-dialog-section-8 .u-btn-5 {
        margin-right: 0;
        margin-left: 250px;
    }
}

@media (max-width: 575px) {
    .u-dialog-section-8 .u-dialog-1 {
        width: 340px;
        margin-left: calc(((100% - 340px) / 2));
    }

    .u-dialog-section-8 .u-btn-4 {
        margin-left: auto;
    }

    .u-dialog-section-8 .u-btn-5 {
        margin-left: auto;
    }
}</style>
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-9"
         id="carousel_3c7f">
    <div class="u-container-style u-dialog u-white u-dialog-1">
        <div class="u-container-layout u-container-layout-1">
            <img id="qnaImg" class="u-image u-image-default u-image-1"
                 src="images/f8343086770128586d092cbd3eb69339ae7a6fbae365335cf23f48993ac7fed6e761c0bb421b6562cb65abedd50b6331a005d02183ab3925e18bb8_1280.png"
                 alt="" data-image-width="150" data-image-height="100">
            <div class="u-expanded-width u-form u-form-1">

                <div class="u-form-group u-form-name u-form-partition-factor-2">
                    <label for="name-e29c" class="u-label">문의유형</label>
                    <input disabled="disabled" type="text" id="s_type" name="s_type"
                           class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""
                           maxlength="100">
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-form-group-2">
                    <label for="phone-6f41" class="u-label">제목</label>
                    <input disabled="disabled" type="text" pattern="2000/01/01" id="title" name="title"
                           class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" maxlength="20"
                           required="required">
                </div>
                <div class="u-form-group u-form-textarea u-form-group-3">
                    <label for="textarea-2410" class="u-label">문의내용</label>
                    <textarea disabled="disabled" rows="5" cols="50" id="content" name="content"
                              class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""
                              maxlength="2000" placeholder="내용 입력"></textarea>
                </div>
                <div class="u-form-group u-form-textarea u-form-group-4">
                    <label for="textarea-0b9d" class="u-label">문의결과</label>
                    <textarea disabled="disabled" rows="5" cols="50" id="reply" name="reply"
                              class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""
                              placeholder="아직 답변전입니다"></textarea>
                </div>
                <div class="u-align-right u-form-group u-form-submit">
                    <a class="u-border-2 u-border-white u-btn u-btn-submit u-button-style u-white u-btn-1">
                        <br>
                    </a>
                    <input type="submit" value="submit" class="u-form-control-hidden">
                </div>
                <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent.</div>
                <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then
                    try again.
                </div>
                <input type="hidden" value="" name="recaptchaResponse">

            </div>
        </div>
        <button class="u-dialog-close-button u-icon u-text-black u-icon-1">
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
<style> .u-dialog-section-9 {
    min-height: 500px;
}

.u-dialog-section-9 .u-dialog-1 {
    width: 1006px;
    min-height: 800px;
    margin: 124px auto 60px calc(((100% - 1140px) / 2));
}

.u-dialog-section-9 .u-container-layout-1 {
    padding: 35px 0;
}

.u-dialog-section-9 .u-image-1 {
    width: 180px;
    height: 180px;
    margin: 8px auto 0 59px;
}

.u-dialog-section-9 .u-form-1 {
    height: 542px;
    margin-top: 0;
    margin-bottom: 0;
}

.u-dialog-section-9 .u-form-group-2 {
    margin-left: 0;
}

.u-dialog-section-9 .u-form-group-3 {
    margin-left: 0;
}

.u-dialog-section-9 .u-form-group-4 {
    margin-left: 0;
}

.u-dialog-section-9 .u-btn-1 {
    background-image: none;
    border-style: solid;
}

.u-dialog-section-9 .u-icon-1 {
    width: 42px;
    height: 42px;
    left: auto;
    top: 18px;
    position: absolute;
    right: 9px;
    padding: 0;
}

@media (max-width: 1199px) {
    .u-dialog-section-9 .u-dialog-1 {
        width: 940px;
        margin-left: calc(((100% - 940px) / 2));
        height: auto;
    }
}

@media (max-width: 991px) {
    .u-dialog-section-9 .u-dialog-1 {
        width: 720px;
        margin-left: calc(((100% - 720px) / 2));
    }

    .u-dialog-section-9 .u-container-layout-1 {
        padding-top: 30px;
        padding-bottom: 30px;
    }
}

@media (max-width: 767px) {
    .u-dialog-section-9 .u-dialog-1 {
        width: 540px;
        margin-left: calc(((100% - 540px) / 2));
    }
}

@media (max-width: 575px) {
    .u-dialog-section-9 .u-dialog-1 {
        width: 340px;
        margin-left: calc(((100% - 340px) / 2));
    }

    .u-dialog-section-9 .u-form-1 {
        margin-bottom: -44px;
    }
}</style>
</body>
</html>