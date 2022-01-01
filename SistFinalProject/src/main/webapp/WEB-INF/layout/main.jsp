<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Notices CSS -->
    <link rel="stylesheet" href="css/mainnotices.css">
	<!-- Slide CSS -->
	<link rel="stylesheet" href="css/slidelist.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    

</head>
<c:set var="myid" value="${sessionScope.myid }"/>
<c:set var="logintype" value="${sessionScope.logintype }"/>
<body>

    
    <!-- End Main Top -->

    

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides" style="height: 500px;">
        <ul class="slides-container">
            <li class="text-left">
                <img src="images/mainSlideImg3.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br> Job히다</strong></h1>
                            <p class="m-b-40">We light up your future.<br> Our site will be your lighthouse. We cheer for your future.</p>
                            <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/mainSlideImg2.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br> Job히다</strong></h1>
                            <p class="m-b-40">We light up your future. <br> Our site will be your lighthouse. We cheer for your future.</p>
                            <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-right">
                <img src="images/mainSlideImg4.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br> Job히다</strong></h1>
                            <p class="m-b-40">We light up your future. <br> Our site will be your lighthouse. We cheer for your future.</p>
                            <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- End Slider -->

<!-- Start Search -->
<form action="notices/searchlist" method="get">
	<div class="container" style="margin-top: 30px;">
		<input type="text" name="search" style="position: relative; outline:none; vertical-align: middle;
		border: 2px solid #40e0d0; border-radius: 50px; width: 950px; height: 60px; font-size: 15pt; 
		padding-left: 30px;" placeholder="기업과 직무, 위치를 입력해 보세요">
        <button type="submit" id="searchgo" style="outline: none; float: right; position: absolute; 
        margin-left: 10px; background-color: #40e0d0; width: 60px; height: 60px; border: none; 
        border-radius: 80px; color: white;">
        	<i class="fa fa-search" style="display: inline; font-size: 20pt;"></i>
        </button>
    </div>
</form>
<!-- End Search -->

<!-- Start Slide list -->
  <div class="slide_title">
    <b style="font-size: 18px; color: black">마감 임박 공고</b>
    <a href="notices/appcntlist" style="float: right; "><b>더보기</b></a>
  </div>
  <div style="position: relative;">
  <div class="pre_wrap">
  	<span class="glyphicon glyphicon-chevron-left pre1"></span>
  </div>
  <div class="slide_wrapper">
  
    <ul class="slides1">
      
      <c:forEach var="ddto" items="${dlist }" varStatus="i" end="7">
  	    <li>
  	    <div class="notice">
		<div class="godetail" num=${ddto.num }>
		  <div class="logo">
		    <img alt="" src="../images/${ddto.photo }">
		    
		  </div>
		  <div class="cinfo">
		    <b style="font-size: 15px;">${ddto.name }</b> <br>
		    ${ddto.subject }<br><br>
		    <button class="type"><b>${ddto.type }</b></button>
		    <button class="loc"><b>${ddto.location }</b></button>
		    <button class="perso"><b>${ddto.personnel }명</b></button>
		  </div>
		  
		    
		 
		  </div>
		  
		  <div class="period">
		    <hr style="margin-bottom: 5px;">
		    <b style="color: gray; ">${ddto.period_start } ~ ${ddto.period_end }</b>
		  
		    
		    <c:if test="${ddto.check==0 }">
		    <span class="glyphicon glyphicon-heart-empty scrap" 
		    style="margin-left: 25px; font-size: 20px; color: gray; cursor: pointer;" 
		    num="${ddto.num }" userId="${myid }" logintype="${logintype }"></span>
		    </c:if>
		    
		    <c:if test="${ddto.check==1 }">
		    <span class="glyphicon glyphicon-heart scrapdel" 
		    style="margin-left: 25px; font-size: 20px; color: red; cursor: pointer;" 
		    num="${ddto.num }" userId="${myid }" logintype="${logintype }"></span>
		    </c:if>
		  </div>
		</div>
        </li>
      
      </c:forEach>
      
    </ul>
    
    
  
  </div>
  <div class="next_wrap">
  	<span class="glyphicon glyphicon-chevron-right next1"></span>
  </div>
  </div>
  
 
  
  <hr width="1100px" align="center" style="margin-top: 30px;">
  
  
  <div class="slide_title">
    <b style="font-size: 18px; color: black">지원자가 많은 공고</b>
    <a href="notices/appcntlist" style="float: right; "><b>더보기</b></a>
  </div>
  <div style="position: relative;">
  <div class="pre_wrap">
  	<span class="glyphicon glyphicon-chevron-left pre"></span>
  </div>
  <div class="slide_wrapper">
  
    <ul class="slides">
      
      <c:forEach var="appdto" items="${applist }" varStatus="i" end="7">
  	    <li>
  	    <div class="notice">
		<div class="godetail" num=${appdto.num }>
		  <div class="logo">
		    <img alt="" src="../images/${appdto.photo }">
		    
		  </div>
		  <div class="cinfo">
		    <b style="font-size: 15px;">${appdto.name }</b> <br>
		    ${appdto.subject }<br><br>
		    <button class="type"><b>${appdto.type }</b></button>
		    <button class="loc"><b>${appdto.location }</b></button>
		    <button class="perso"><b>${appdto.personnel }명</b></button>
		  </div>
		  
		    
		 
		  </div>
		  
		  <div class="period">
		    <hr style="margin-bottom: 5px;">
		    <b style="color: gray; ">${appdto.period_start } ~ ${appdto.period_end }</b>
		  
		    
		    <c:if test="${appdto.check==0 }">
		    <span class="glyphicon glyphicon-heart-empty scrap" 
		    style="margin-left: 25px; font-size: 20px; color: gray; cursor: pointer;" 
		    num="${appdto.num }" userId="${myid }" logintype="${logintype }"></span>
		    </c:if>
		    
		    <c:if test="${appdto.check==1 }">
		    <span class="glyphicon glyphicon-heart scrapdel" 
		    style="margin-left: 25px; font-size: 20px; color: red; cursor: pointer;" 
		    num="${appdto.num }" userId="${myid }" logintype="${logintype }"></span>
		    </c:if>
		  </div>
		</div>
        </li>
      
      </c:forEach>
      
    </ul>
    
    
  
  </div>
  <div class="next_wrap">
  	<span class="glyphicon glyphicon-chevron-right next"></span>
  </div>
  </div>
  <!-- 임시방편 -->
  <div style="height: 600px;">
  
  </div>
  
  <script type="text/javascript">
  
  var slides = document.querySelector('.slides');
  var slide = document.querySelectorAll('.slides li');
  var currentIdx = 0;
  var slideCount = slide.length;
  var slideWidth = 250;
  var slideMargin = 30;
  
  slides.style.width = (slideWidth+slideMargin)*slideCount - slideMargin + 'px';
  
  function moveSlide(num){
	  slides.style.left = - 280*num + 'px';
	  currentIdx = num;
  }  
  
  $("span.next").click(function(){
	  if(currentIdx < slideCount-4){
		  
		  moveSlide(currentIdx+1); 
	  }else{
		  moveSlide(0);
	  }
	  
  });
  
  $("span.pre").click(function(){
	  if(currentIdx > 0){
		  moveSlide(currentIdx-1); 
	  }else{
		  moveSlide(slideCount-4);
	  }
	  
  });
  
  var slides1 = document.querySelector('.slides1');
  var slide1 = document.querySelectorAll('.slides1 li');
  var currentIdx1 = 0;
  var slideCount1 = slide1.length;
  var slideWidth1 = 250;
  var slideMargin1 = 30;
  
  slides1.style.width = (slideWidth1+slideMargin1)*slideCount1 - slideMargin1 + 'px';
  
  function moveSlide1(num){
	  slides1.style.left = - 280*num + 'px';
	  currentIdx1 = num;
  }  
  
  $("span.next1").click(function(){
	  if(currentIdx1 < slideCount1-4){
		  
		  moveSlide1(currentIdx1+1); 
	  }else{
		  moveSlide1(0);
	  }
	  
  });
  
  $("span.pre1").click(function(){
	  if(currentIdx1 > 0){
		  moveSlide1(currentIdx1-1); 
	  }else{
		  moveSlide1(slideCount1-4);
	  }
	  
  });
  
 
  
  </script>
  
  <!-- End Slide list -->
  
  
    <!-- Start Categories  -->
    <!-- <div class="categories-shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/t-shirts-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="#">T-shirts</a>
                    </div>
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/shirt-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="#">Shirt</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/wallet-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="#">Wallet</a>
                    </div>
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/women-bag-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="#">Bags</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/shoes-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="#">Shoes</a>
                    </div>
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/women-shoes-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="#">Women Shoes</a>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- End Categories -->

    <!-- Start Products  -->
   <!--  <div class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>Featured Products</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="special-menu text-center">
                        <div class="button-group filter-button-group">
                            <button class="active" data-filter="*">All</button>
                            <button data-filter=".top-featured">Top featured</button>
                            <button data-filter=".best-seller">Best seller</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row special-list">
                <div class="col-lg-3 col-md-6 special-grid best-seller">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <p class="sale">신입</p>
                            </div>
                            <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                </ul>
                                <a class="cart" href="#">공고보기</a>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>당근마켓</h4>
                            <h5> 2021-12-14 ~ 2021-12-31</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid top-featured">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <p class="new">New</p>
                            </div>
                            <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                </ul>
                                <a class="cart" href="#">Add to Cart</a>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>Lorem ipsum dolor sit amet</h4>
                            <h5> $9.79</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid top-featured">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <p class="sale">Sale</p>
                            </div>
                            <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                </ul>
                                <a class="cart" href="#">Add to Cart</a>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>Lorem ipsum dolor sit amet</h4>
                            <h5> $10.79</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid best-seller">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <p class="sale">Sale</p>
                            </div>
                            <img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                </ul>
                                <a class="cart" href="#">Add to Cart</a>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>Lorem ipsum dolor sit amet</h4>
                            <h5> $15.79</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- End Products  -->

    <!-- Start Blog  -->
    <!-- <div class="latest-blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>latest blog</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="blog-box">
                        <div class="blog-img">
                            <img class="img-fluid" src="images/blog-img.jpg" alt="" />
                        </div>
                        <div class="blog-content">
                            <div class="title-blog">
                                <h3>Fusce in augue non nisi fringilla</h3>
                                <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed mollis. Praesent laoreet lacinia elit id lobortis.</p>
                            </div>
                            <ul class="option-blog">
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Likes"><i class="far fa-heart"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Views"><i class="fas fa-eye"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Comments"><i class="far fa-comments"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="blog-box">
                        <div class="blog-img">
                            <img class="img-fluid" src="images/blog-img-01.jpg" alt="" />
                        </div>
                        <div class="blog-content">
                            <div class="title-blog">
                                <h3>Fusce in augue non nisi fringilla</h3>
                                <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed mollis. Praesent laoreet lacinia elit id lobortis.</p>
                            </div>
                            <ul class="option-blog">
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Likes"><i class="far fa-heart"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Views"><i class="fas fa-eye"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Comments"><i class="far fa-comments"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="blog-box">
                        <div class="blog-img">
                            <img class="img-fluid" src="images/blog-img-02.jpg" alt="" />
                        </div>
                        <div class="blog-content">
                            <div class="title-blog">
                                <h3>Fusce in augue non nisi fringilla</h3>
                                <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed mollis. Praesent laoreet lacinia elit id lobortis.</p>
                            </div>
                            <ul class="option-blog">
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Likes"><i class="far fa-heart"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Views"><i class="fas fa-eye"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Comments"><i class="far fa-comments"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- End Blog  -->


    <!-- Start Instagram Feed  -->
   <!--  <div class="instagram-box">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-01.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-02.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-03.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-04.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-06.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-07.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-08.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-09.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- End Instagram Feed  -->


    <!-- Start Footer  -->
    <!-- <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>About ThewayShop</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                </p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>Information</h4>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Customer Service</a></li>
                                <li><a href="#">Our Sitemap</a></li>
                                <li><a href="#">Terms &amp; Conditions</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Delivery Information</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Contact Us</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street Wichita,<br> KS 67213 </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705 770</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer> -->
    <!-- End Footer  -->

    <!-- Start copyright  -->
   <!--  <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :
            <a href="https://html.design/">html design</a></p>
    </div> -->
    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
   <script type="text/javascript">

$(document).on('click','span.scrap',function(){
	
	var tag = $(this);
	var user_id = $(this).attr("userId");
	var notice_num = $(this).attr("num");
	var logintype = $(this).attr("logintype");
	//alert(user_id+","+notice_num);
	
	
	if(${sessionScope.loginok==null}){
		 alert("로그인이 필요한 서비스입니다");
		 location.href='/login/main';
		 return;
	}else if(logintype=="corp"){
		alert("개인 회원만 이용 가능한 서비스입니다");
		return;
	}else{
		$.ajax({
			
			type: "get",
			url: "notices/insertscrap",
			data: {"user_id":user_id,"notice_num":notice_num},
			success: function(data){
				
				//ajax로 스크랩이 되면서 success에서 이거 실행하기
				tag.attr("class","glyphicon glyphicon-heart scrapdel");
				tag.css("color","red");
					
				
			}
			
		});
	}
	
	
	
	

});

$(document).on('click','span.scrapdel',function(){
	var tag = $(this);
	var user_id = $(this).attr("userId");
	var notice_num = $(this).attr("num");
	
	$.ajax({
		
		type: "get",
		url: "notices/deletetscrap",
		data: {"user_id":user_id,"notice_num":notice_num},
		success: function(data){
			
			//ajax로 스크랩이 삭제되면서 success에서 이거 실행하기
			tag.attr("class","glyphicon glyphicon-heart-empty scrap");
			tag.css("color","gray");
				
			
		}
		
	});
	
	

});

$("#btntype").click(function(){
	
	var idx = $("#seltype option").index($("#seltype option:selected"));
	if(idx==0){
		location.href='main';
		return;
	}else{
		var hireType=$("#seltype option:selected").text();
		location.href='notices/typelist?type='+hireType;
		return;
	}
	
	
	
	//alert(hireType);

});

$("div.godetail").click(function(){
	
	var num = $(this).attr("num");
	
	location.href="notices/detail?num="+num;
});


</script>
</body>

</html>