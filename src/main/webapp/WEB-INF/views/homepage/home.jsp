<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=5.0,minimum-scale=1.0,shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="pragma" content="no-cache">
<meta name="robots" content="index,follow">
<meta name="author" content="codecalm.net">

<title>AtoZ</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/homepage.css" type="">
</head>
<body>
	<div class="page">
		<header class="header js-header">
			<div class="container">
				<div class="row">
					<div class="d-flex align-items-center position-relative" style="width:50%; display: inline-block;">
						<a href="/" class="logo"> <img src="<%=request.getContextPath()%>/resources/images/AZ.png" alt="Tabler UI Kit" title="">
							<div style="padding-top: 5px;">AtoZ</div>
						</a>
						<a class="header-menu-btn"> 
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round" class="feather feather-menu">
								<line x1="3" y1="12" x2="21" y2="12"></line>
								<line x1="3" y1="6" x2="21" y2="6"></line>
								<line x1="3" y1="18" x2="21" y2="18"></line></svg>
						</a>
					</div>
					<div class="navbar-nav flex-row order-md-last" style="width:49%; display: inline-block; float: right;">
						<div class="nav-item" style="float:right;">
							<ul class="quick-menu" style="height: 45px; display: flex; list-style: none; padding: 0px; margin: 0px;">
								<li style="margin: 0px 5px;">
									<div style="line-height: 45px;">042-222-8202</div>
								</li>
								<li style="margin: 0px 5px;">
										<input type="button"  style="background-color: #4097E5" class="btn btn-dark open-modal" value="계약신청">
								</li>
								<li style="margin: 0px 5px;">
										<button style="background-color: #4097E5" class="btn btn-dark open-modal">회원가입</button>
								</li>
								<li style="margin: 0px 5px;">
										<button style="background-color: #4097E5" class="btn btn-dark open-modal">로그인</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- #4097E5  /  #1B7ED6 -->
				
				
			</div>
		</header>

		<header class="header header-sticky js-header">
			<div class="container">
				<div class="d-flex align-items-center position-relative">
					<a href="/" class="logo header-sticky"> <img src="/img/tabler.svg" alt="AtoZ logo" title="">

						<div>AtoZ</div>

					</a> <a class="header-menu-btn"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
							stroke-linejoin="round" class="feather feather-menu">
							<line x1="3" y1="12" x2="21" y2="12"></line>
							<line x1="3" y1="6" x2="21" y2="6"></line>
							<line x1="3" y1="18" x2="21" y2="18"></line></svg>
					</a>
					<nav class="ml-auto header-nav d-none d-md-block">

						<a href="https://preview.tabler.io" rel="nofollow">Demo</a> <a href="https://github.com/tabler/tabler" rel="nofollow">Source code</a> <a href="/emails" rel="nofollow">Tabler Email</a>


					</nav>
				</div>
			</div>
		</header>

		<main class="main">
		<section class="welcome welcome-blue text-white" aria-label="Page header" style="background: #1B7ED6 url('<%=request.getContextPath()%>/resources/images/header-blue.png') no-repeat center/cover">
			<div class="container">
				<div class="row align-items-center justify-content-between">
					<div class="col-lg-6 text-center text-lg-left pr-lg-5">
						<h1 class="welcome-title">쉽게 사용하고 즉시 확인하세요!</h1>
						<p class="welcome-description">기업에 필요한 모든 기능을 제공하는 100% 웹기반 WMS.</p>

						<div class="mt-5">
							<a href="https://gum.co/tabler" class="btn btn-green">계 약 신 청</a> <a href="https://preview.tabler.io" class="btn btn-white ml-2">회 원 가 입</a>
						</div>
					</div>
					<div class="col-lg-5 pt-6 pt-lg-0">
						<div class="welcome-image welcome-image-2">

							<div class="device device-macbook-pro device-spacegray">
								<div class="device-frame">
									<picture>
									<source srcset="<%=request.getContextPath()%>/resources/images/dashboard-preview.png" type="image/webp">
									<source srcset="<%=request.getContextPath()%>/resources/images/dashboard-preview.png" type="image/png">
									<img src="<%=request.getContextPath()%>/resources/images/dashboard-preview.png" alt="ming" class="preview-image img-responsive"> </picture>
								</div>
								<div class="device-stripe"></div>
								<div class="device-header"></div>
								<div class="device-sensors"></div>
								<div class="device-btns"></div>
								<div class="device-power"></div>
							</div>

							<div style="bottom: 15%; left: 3%" class="image-label image-label-bottom d-none d-xl-block">
								<span>For free!</span>
							</div>
							<div style="top: 20%; right: 3%" class="image-label image-label-right d-none d-xxl-block">
								<span>Look great in every browser</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section" aria-label="Base features">
			<div class="container">
				<h2 class="h3 section-title text-center mb-6">AtoZ는 잘 설계된 수많은 구성 요소와 기능을 제공합니다.</h2>

				<div class="row align-items-center justify-content-center">
					<div class="col-10 col-md-5 pr-md-5 mb-5 mb-md-0">

						<picture>
						<source srcset="<%=request.getContextPath()%>/resources/images/dashboard-preview.png" type="image/webp">
						<source srcset="<%=request.getContextPath()%>/resources/images/dashboard-preview.png" type="image/jpeg">
						<img src="<%=request.getContextPath()%>/resources/images/dashboard-preview.png" alt="" class="img-responsive"> </picture>
					</div>
					<div class="col">

						<div class="row">

							<div class="col-12 mb-5 d-flex">
								<div class="icon icon-gray mr-2">
									<svg style="margin: 20px 0px;" xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
										stroke-linecap="round" stroke-linejoin="round">
										<path stroke="none" d="M0 0h24v24H0z" fill="none" />
										<rect x="7" y="4" width="10" height="16" rx="1" />
										<line x1="11" y1="5" x2="13" y2="5" />
										<line x1="12" y1="17" x2="12" y2="17.01" /></svg>
								</div>
								<div>
									<h3 class="h5">모바일 WMS</h3>
									<p class="text-muted m-0">모바일 검품/재고관리 시스템은 편리한 이동성을 가지며, 통합된 솔루션으로 물류창고와 매장, 기업 본사간의 효과적인 상품 관리 솔루션 입니다.️</p>
								</div>
							</div>

							<div class="col-12 mb-5 d-flex">
								<div class="icon icon-gray mr-2">
									<svg style="margin: 20px 0px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 232">
										<path
											d="M132.8 32h-1.6V0H112L43.2 72.8v22.4L112 168h19.2v-32H144c52.8 0 96 43.2 96 96h16v-76.8C256 87.2 200.8 32 132.8 32zM240 174.4c-20-33.6-56.8-54.4-96-54.4h-28.8v28l-56-59.2v-9.6l56-59.2v28h17.6C192 48 240 96 240 155.2v19.2z" />
										<path d="M16 77.6L78.4 12 67.2.8 0 71.2v25.6L75.2 176l12-11.2L16 90.4z" /></svg>
								</div>
								<div>
									<h3 class="h5">모바일 WMS</h3>
									<p class="text-muted m-0">모바일 검품/재고관리 시스템은 편리한 이동성을 가지며, 통합된 솔루션으로 물류창고와 매장, 기업 본사간의 효과적인 상품 관리 솔루션 입니다.️</p>
								</div>
							</div>

							<div class="col-12 mb-5 d-flex">
								<div class="icon icon-gray mr-2">
									<svg style="margin: 20px 0px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 240">
										<path
											d="M216 120c-8.8 0-16.8 3.2-24 8-17.6-13.6-42.4-9.6-56 8-12 16-10.4 37.6 3.2 52l48.8 52h8l51.2-55.2c5.6-7.2 8.8-16 8.8-24.8 0-22.4-17.6-40-40-40zm19.2 54.4L192 220.8l-40.8-44c-9.6-9.6-9.6-24.8 0-33.6 9.6-9.6 24.8-9.6 33.6 0 .8.8.8.8.8 1.6l6.4 7.2 6.4-7.2c4.8-5.6 11.2-8 17.6-8 13.6 0 24 10.4 24 24 0 4.8-1.6 9.6-4.8 13.6z" />
										<path d="M112 144H16V24l112 73.6 112-74.4V112h16V0H0v160h112v-16zm16-65.6L33.6 16h188.8L128 78.4z" /></svg>
								</div>
								<div>
									<h3 class="h5">모바일 WMS</h3>
									<p class="text-muted m-0">모바일 검품/재고관리 시스템은 편리한 이동성을 가지며, 통합된 솔루션으로 물류창고와 매장, 기업 본사간의 효과적인 상품 관리 솔루션 입니다.</p>
								</div>
							</div>

						</div>
					</div>
				</div>

				<!--<div class="mb-xl-4 text-center text-lg-left">-->
				<!--<a href="#" class="btn btn-white">See all features</a>-->
				<!--</div>-->
			</div>
		</section>
		
		<section class="section" style="background-color: #F7FAFC;">
			<div class="container">
				<div class="row">
					<div style="margin: auto;">
						<div class="col-md-6 pr-md-7" style="display: inline-block; margin: 10px;">
							<h3 class="h4 mb-1">업데이트 구독</h3>
							<p class="text-muted">AtoZ를 구독 하세요! 각 주요 업데이트에 대한 정보를 보내드립니다.</p>

							<form action="https://gumroad.com/follow_from_embed_form" class="form d-flex gumroad-follow-form-embed" method="post" target="_blank">
								<input name="seller_id" type="hidden" value="5903833945199"> <input name="email" placeholder="  귀하의 이메일 주소" type="email" class="form-input">
								<button data-custom-highlight-color="" type="submit" class="btn btn-blue ml-2">구 독 신 청</button>
							</form>
						</div>

						<div class="col-md-6 pr-md-7" style="display: inline-block; margin: 10px;">
							<h3 class="h4 mb-1">최근 업데이트</h3>

							<ul class="list">
								<li><a href="/customer-service-email.html" title="Best practices connected with customer service" class="text-inherit">모바일 WMS 기능 추가</a></li>
								<li><a href="/html-email-best-practices.html" title="10 most important things which you should keep in mind by coding HTML emails" class="text-inherit">히스토리 확인 기능 추가</a></li>
								<li><a href="/reset-password-good-practise.html" title="What should be included in reset password email" class="text-inherit"> 웹 디자인 반응형 기능 업데이트 </a></li>
								<li><a href="/user-invitation-email.html" title="What an email with user’s invitation should include" class="text-inherit">물류센터 계약 기능 삭제</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section  class="section text-center bg-light" aria-label="Ben Chestnut quote">
			<div class="container">
				<div>
					<blockquote>
						<div>
							<img style="width: 70px; height: 50px;" src="<%=request.getContextPath()%>/resources/images/AZ.png" alt="" class="avatar">
							<p>“더 나은 서비스를 제공하기 위해 모바일 WMS 기능을 추가 하였습니다. 사용에 불편함을 겪으시는 고객께서는 문의 부탁드립니다. 감사합니다!”</p>
						</div>
						<cite><strong>TEAM SOLOGI</strong>, CEO of <strong>장성보</strong></cite>
					</blockquote>
				</div>
			</div>
		</section>

		

		<section style="background-color: #F7FAFC; padding: 20px 0px;" class="section bg-light">
			<div class="container text-center">
				<h2 class="section-title mb-2" style="margin: 0px 0px 20px;">서비스를 신청 할 준비 되셨나요?</h2>
				<p class="section-description">AtoZ로 내부업무 생산성을 향상하고 효율적인 영업관리를 하십시오. 무료로!</p>
				<div class="mt-4">
					<a href="https://gum.co/tabler" class="btn btn-green" target="_blank">계 약 신 청</a> <a href="https://preview.tabler.io" class="btn btn-secondary ml-2">회 원 가 입</a>
				</div>
			</div>
		</section>


		</main>

		<footer class="footer" style="height: 70px;">
			<div class="container">
				<div class="row text-center text-lg-left">
					<div class="col-lg-6" style="line-height: 70px;">© 2021 TEAM SOLOGI</div>
				</div>
			</div>
		</footer>

	</div>
</body>
</html>