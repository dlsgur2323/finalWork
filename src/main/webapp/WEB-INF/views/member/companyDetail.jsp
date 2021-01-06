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
	<strong style="font-size:1.2rem;">기업회원 상세보기</strong>
</div>

<div class="card">
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

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="modifyBtn" value="수정"/>
<input type="button" class="btn btn-white" id="removeBtn" style="margin:0% 2% 0% 2%;" value="삭제"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="취소"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>