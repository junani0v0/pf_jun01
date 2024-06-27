<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Swiper Demo</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">

  <!-- Demo styles -->
  <style>
    html,
    body {
      position: relative;
      height: 100%;
    }

    body {
      background: #fff;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .swiper {
      width: 50%; /* 부모 요소의 너비에 맞춤 */
      height: 50%; /* 부모 요소의 높이에 맞춤 */
    }

    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .swiper-slide img {
	  max-width: 100%; /* 이미지의 최대 너비 설정 */
	  max-height: 100%; /* 이미지의 최대 높이 설정 */
	  height: auto; /* 높이를 자동으로 설정하여 비율 유지 */
	}

    .autoplay-progress {
      position: absolute;
      right: 16px;
      bottom: 16px;
      z-index: 10;
      width: 48px;
      height: 48px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: bold;
      color: var(--swiper-theme-color);
    }

    .autoplay-progress svg {
      --progress: 0;
      position: absolute;
      left: 0;
      top: 0px;
      z-index: 10;
      width: 100%;
      height: 100%;
      stroke-width: 4px;
      stroke: var(--swiper-theme-color);
      fill: none;
      stroke-dashoffset: calc(125.6px * (1 - var(--progress)));
      stroke-dasharray: 125.6;
      transform: rotate(-90deg);
    }
  </style>

	<!--================================
	    START SLIDE AREA
	=================================-->
	<!-- Swiper -->
	
	 
	<div class="swiper mySwiper">
	  <div class="swiper-wrapper">
	    <div class="swiper-slide">
	    	<img src="<c:url value='/assest/template/images/slide/slide1.jpg'/>" alt="" class="slide">
	    </div>
	    <div class="swiper-slide">
	    	<img src="<c:url value='/assest/template/images/slide/slide4.png'/>" alt="" class="slide">
	    </div>
	    <div class="swiper-slide">
	    	<img src="<c:url value='/assest/template/images/slide/slide5.png'/>" alt="" class="slide">
	    </div>
	    <div class="swiper-slide">
	    	<img src="<c:url value='/assest/template/images/slide/slide6.png'/>" alt="" class="slide">
	    </div>
	    <div class="swiper-slide">
	    	<img src="<c:url value='/assest/template/images/slide/slide9.png'/>" alt="" class="slide">
	    </div>
	  </div>
	  <div class="swiper-button-next"></div>
	  <div class="swiper-button-prev"></div>
	  <div class="swiper-pagination"></div>
	  <div class="autoplay-progress">
	      <svg viewBox="0 0 48 48">
	        <circle cx="24" cy="24" r="20"></circle>
	      </svg>
	    </div>
	</div>
	
	<!--================================
	    END SLIDE AREA
	=================================-->
	
	<!--================================
	    START FEATURE AREA
	=================================-->
	<section class="features section--padding">
	    <!-- start container -->
	    <div class="container">
	        <!-- start row -->
	        <div class="row">
	            <!-- start search-area -->
	            <div class="col-lg-4 col-md-6">
	                <div class="feature">
	                    <div class="feature__img">
	                        <img src="<c:url value='/assest/template/images/slide/error_sq1.jpg'/>" alt="feature" />
	                    </div>
	                    <div class="feature__title">
	                        <h3>Best UX Research</h3>
	                    </div>
	                    <div class="feature__desc">
	                        <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the mattis,
	                            leo quam aliquet diam congue is laoreet elit metus.</p>
	                    </div>
	                </div>
	                <!-- end /.feature -->
	            </div>
	            <!-- end /.col-lg-4 col-md-6 -->
	
	            <!-- start search-area -->
	            <div class="col-lg-4 col-md-6">
	                <div class="feature">
	                    <div class="feature__img">
	                        <img src="<c:url value='/assest/template/images/slide/error_sq2.jpg'/>" alt="feature" />
	                    </div>
	                    <div class="feature__title">
	                        <h3>Fully Responsive</h3>
	                    </div>
	                    <div class="feature__desc">
	                        <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the mattis,
	                            leo quam aliquet diam congue is laoreet elit metus.</p>
	                    </div>
	                </div>
	                <!-- end /.feature -->
	            </div>
	            <!-- end /.col-lg-4 col-md-6 -->
	
	            <!-- start search-area -->
	            <div class="col-lg-4 col-md-6">
	                <div class="feature">
	                    <div class="feature__img">                        
	                        <img src="<c:url value='/assest/template/images/slide/error_sq3.jpg'/>" alt="feature" />
	                    </div>
	                    <div class="feature__title">
	                        <h3>Buy & Sell Easily</h3>
	                    </div>
	                    <div class="feature__desc">
	                        <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the mattis,
	                            leo quam aliquet diam congue is laoreet elit metus.</p>
	                    </div>
	                </div>
	                <!-- end /.feature -->
	            </div>
	            <!-- end /.col-lg-4 col-md-6 -->
	        </div>
	        <!-- end /.row -->
	    </div>
	    <!-- end /.container -->
	</section>
	<!--================================
	    END FEATURE AREA
	=================================-->
		
	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	
	<!-- Swiper -->
	
<script>
	  const progressCircle = document.querySelector(".autoplay-progress svg");
	  var swiper = new Swiper(".mySwiper", {
	    speed: 800, // 전환 속도를 느리게 조정 (기본값: 300)
	    effect: "cube", // 큐빅 효과 설정
	    cubeEffect: {
	      shadow: true,
	      slideShadows: true, // 양 옆에 그림자 추가
	      shadowOffset: 20, // 그림자의 위치 조정
	      shadowScale: 0.94, // 그림자의 크기 조정
	    },
	    spaceBetween: 30,
	    centeredSlides: true,
	    loop: true,
	    autoplay: {
	      delay: 2500,
	      disableOnInteraction: false
	    },
	    pagination: {
	      el: ".swiper-pagination",
	      clickable: true
	    },
	    navigation: {
	      nextEl: ".swiper-button-next",
	      prevEl: ".swiper-button-prev"
	    },
	    on: {
	    	autoplayTimeLeft(s, time, progress) {
	            progressCircle.style.setProperty("--progress", 1 - progress);
	          }
	      }
	  });
</script>
