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
    <title>cs_notice</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="cs_notice.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" "="" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.11, nicepage.com">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"
          integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    
    
    
    
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "AdminANDCsPage"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="cs_notice">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode" data-lang="en">
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
                      <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1" href="admin__login.html" data-page-id="1289201052">고객관리센터<br>
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
                    <h3 class="u-text u-text-default u-text-4">공지사항</h3>
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
                                <a data-notice_id="${list.notice_id}" data-title="${list.title}" data-content="${list.content}" data-rgdate="${list.formatRgdate()}" class="upBtn u-active-white u-align-left u-border-none u-btn u-button-style u-hover-white u-text-active-black u-text-black u-text-hover-black u-white u-btn-3">${list.title}</a>
                              </div>
                            </div>
                          </c:if>
                        </c:forEach>

                      </div>
                    </div>
                    <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-white u-group-15">
                      <div class="u-container-layout u-valign-middle u-container-layout-17">
                        <nav aria-label="Page navigation example">
                          <ul class="pagination" style="margin-bottom: 199px;">
                            <li class="page-item">
                              <c:if test="${startPage > 1 }">
                                <a class="page-link"
                                   href="../cs/cs_notice.do?page=${startPage-1 }"
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
                                      href="../cs/cs_notice.do?page=${i}">${i }</a>
                              </li>
                            </c:forEach>

                            <li class="page-item">

                              <c:if test="${endPage < totalpage }">
                                <a class="page-link"
                                   href="../cs/cs_notice.do?page=${endPage+1 }"
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
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  <script>
    $(document).on('click', '.upBtn', function () {
      let content = $(this).data('content');
      let title = $(this).data('title');
      $("#content").val(content);
      $("#title").val(title);
      $("#carousel_6d0c").addClass("u-dialog-open");
    });
  </script>


  <section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-12" id="carousel_6d0c">
    <div class="u-container-style u-dialog u-white u-dialog-1">
      <div class="u-container-layout u-container-layout-1">
        <div class="u-form u-form-1">


            <div class="u-form-group u-form-group-1">
              <label for="phone-6f41" class="u-form-control-hidden u-label"></label>
              <input type="text" disabled="disabled" id="title" name="title" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" maxlength="100" required="required" >
            </div>
            <div class="u-form-group u-form-textarea u-form-group-2">
              <label for="textarea-2410" class="u-form-control-hidden u-label"></label>
              <textarea disabled="disabled" rows="15" cols="50" id="content" name="content" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="" maxlength="2000" placeholder="공지 나오는 칸"></textarea>
            </div>
            <div class="u-align-right u-form-group ">




            </div>

        </div>

      </div><button class="u-dialog-close-button u-icon u-text-black u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-efe9"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-efe9"><rect x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2" height="16"></rect><rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16" height="2"></rect></svg></button>
    </div>
  </section><style> .u-dialog-section-12 {
    min-height: 500px;
  }

  .u-dialog-section-12 .u-dialog-1 {
    width: 1006px;
    min-height: 782px;
    margin: 124px auto 60px calc(((100% - 1140px) / 2));
  }

  .u-dialog-section-12 .u-container-layout-1 {
    padding: 35px 0;
  }

  .u-dialog-section-12 .u-form-1 {
    height: 355px;
    width: 1006px;
    margin: 35px 0 0;
  }

  .u-dialog-section-12 .u-form-group-1 {
    margin-left: 0;
  }

  .u-dialog-section-12 .u-form-group-2 {
    margin-left: 0;
  }

  .u-dialog-section-12 .u-btn-1 {
    background-image: none;
    border-style: solid;
  }

  .u-dialog-section-12 .u-btn-2 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: 9px auto 0 393px;
  }

  .u-dialog-section-12 .u-btn-3 {
    border-style: solid;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    margin: -46px auto 0 520px;
  }

  .u-dialog-section-12 .u-icon-1 {
    width: 42px;
    height: 42px;
    left: auto;
    top: 18px;
    position: absolute;
    right: 9px;
    padding: 0;
  }

  @media (max-width: 1199px) {
    .u-dialog-section-12 .u-dialog-1 {
      width: 940px;
      margin-left: calc(((100% - 940px) / 2));
      height: auto;
    }

    .u-dialog-section-12 .u-form-1 {
      width: 940px;
    }

    .u-dialog-section-12 .u-btn-2 {
      margin-left: 360px;
    }

    .u-dialog-section-12 .u-btn-3 {
      margin-left: 487px;
    }
  }

  @media (max-width: 991px) {
    .u-dialog-section-12 .u-dialog-1 {
      width: 720px;
      margin-left: calc(((100% - 720px) / 2));
    }

    .u-dialog-section-12 .u-container-layout-1 {
      padding-top: 30px;
      padding-bottom: 30px;
    }

    .u-dialog-section-12 .u-form-1 {
      width: 720px;
    }

    .u-dialog-section-12 .u-btn-2 {
      margin-left: 250px;
    }

    .u-dialog-section-12 .u-btn-3 {
      margin-left: 377px;
    }
  }

  @media (max-width: 767px) {
    .u-dialog-section-12 .u-dialog-1 {
      width: 540px;
      margin-left: calc(((100% - 540px) / 2));
    }

    .u-dialog-section-12 .u-form-1 {
      width: 540px;
    }

    .u-dialog-section-12 .u-btn-2 {
      margin-left: 196px;
    }

    .u-dialog-section-12 .u-btn-3 {
      margin-left: 250px;
    }
  }

  @media (max-width: 575px) {
    .u-dialog-section-12 .u-dialog-1 {
      width: 340px;
      margin-left: calc(((100% - 340px) / 2));
    }

    .u-dialog-section-12 .u-form-1 {
      margin-bottom: -44px;
      width: 340px;
    }

    .u-dialog-section-12 .u-btn-2 {
      margin-left: auto;
    }

    .u-dialog-section-12 .u-btn-3 {
      margin-left: auto;
    }
  }</style>
    
    
    
    
  
</body></html>