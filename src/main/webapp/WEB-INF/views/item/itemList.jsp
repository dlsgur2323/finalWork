<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
<style>
	hr{
		margin:1rem 0;
	}
</style>
</head>
<body>
<div style="margin:4% 0% 2% 5%;">
	<strong style="font-size:1.2rem;">품목 수정</strong>
</div>

<div class="card" style="margin: 0% 2% 0% 2%;">
	<div class="card-body">
		<div class="row">
			<div class="col-4"><strong>품목 코드</strong></div>
			<div class="col-8">A001</div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-4"><strong>품목명</strong></div>
			<div class="col-8"><input type="text" name="" value=""/></div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-4"><strong>바코드</strong></div>
			<div class="col-8"><input type="text" name="" value=""/></div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-4"><strong>품목 구분</strong></div>
			<div class="col-8">
				<input type="radio" name="" value="원재료"/> 원재료 
				<input type="radio" name="" value="제품"/> 제품 
				<input type="radio" name="" value="상품"/> 상품 
			</div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-4"><strong>규격 번호</strong></div>
			<div class="col-8"><input type="text" name="" value=""/></div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-4"><strong>품목 그룹 코드</strong></div>
			<div class="col-8"><input type="text" name="" value=""/></div>
		</div>
		<hr/>
	</div>
</div>

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="registBtn" value="수정"/>
<input type="button" class="btn btn-white" id="registBtn" value="삭제"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="취소"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>