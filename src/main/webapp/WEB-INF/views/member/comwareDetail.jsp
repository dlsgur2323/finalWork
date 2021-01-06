<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<style>
	hr{
		margin: 1rem 0;
	}
	.card{
		margin: 0% 2% 0% 2%;
	}
</style>
</head>
<body>
<div style="margin:4% 0% 2% 5%;">
	<strong style="font-size:1.2rem;">기업, 물류센터 상세보기</strong>
</div>

<div class="col-12">
	<!-- Cards with tabs component -->
	<div class="card-tabs ">
	<!-- Cards navigation -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a href="#tab-top-1" class="nav-link active" data-bs-toggle="tab">기업</a></li>
		<li class="nav-item"><a href="#tab-top-2" class="nav-link" data-bs-toggle="tab">물류센터</a></li>
	</ul>
		<div class="tab-content">
			<!-- Content of card #1 -->
			<div id="tab-top-1" class="card tab-pane show active">
				<div class="card-body">
					<div class="row">
						<div class="col-4"><strong>회원 아이디</strong></div>
						<div class="col-8">test</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>기업명</strong></div>
						<div class="col-8">test</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>대표자명</strong></div>
						<div class="col-8">테스트</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>사업자등록번호</strong></div>
						<div class="col-8">000-00-000000</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>이메일</strong></div>
						<div class="col-8">test@test.com</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>전화번호</strong></div>
						<div class="col-8">02-000-0000</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>주소</strong></div>
						<div class="col-8" style="margin-bottom:3%;">test</div>
						<div id="map" style="width:95%;height:200px; border:1px solid black; margin:auto;"></div>
					</div>
				</div>
			</div>
			<!-- Content of card #2 -->
			<div id="tab-top-2" class="card tab-pane">
				<div class="card-body">
					<div class="row">
						<div class="col-4"><strong>회원 아이디</strong></div>
						<div class="col-8">test</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>기업명</strong></div>
						<div class="col-8">test</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>대표자명</strong></div>
						<div class="col-8">테스트</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>사업자등록번호</strong></div>
						<div class="col-8">000-00-000000</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>이메일</strong></div>
						<div class="col-8">test@test.com</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>전화번호</strong></div>
						<div class="col-8">02-000-0000</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>면적</strong></div>
						<div class="col-8">50000m²</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>사진</strong></div>
						<div class="col-8">
							<div class="row">
								<div class="col-3" style="border:1px solid black; height:150px;"></div>
								<div class="col-3" style="border:1px solid black; height:150px; margin:0% 2% 0% 2%;"></div>
								<div class="col-3" style="border:1px solid black; height:150px;"></div>
							</div>
						</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-4"><strong>주소</strong></div>
						<div class="col-8" style="margin-bottom:3%;">test</div>
						<div id="map" style="width:95%;height:200px; border:1px solid black; margin:auto;"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="modifyBtn" value="수정"/>
<input type="button" class="btn btn-white" id="removeBtn" style="margin:0% 2% 0% 2%;" value="삭제"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="취소"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>