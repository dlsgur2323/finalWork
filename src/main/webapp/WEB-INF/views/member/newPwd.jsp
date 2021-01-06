<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<style>
	hr{
		margin: 1rem 0;
	}
</style>
</head>
<body>
<div style="margin:4% 0% 2% 5%;">
	<strong style="font-size:1.2rem;">비밀번호 재설정</strong>
</div>

<div class="card" style="margin: 0% 2% 0% 2%;">
	<div class="card-body">
		<div class="row">
			<div class="col-4"><strong>새 비밀번호</strong></div>
			<div class="col-8">
				<input type="password" name="" value="" />
			</div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-4"><strong>새 비밀번호 확인</strong></div>
			<div class="col-8">
				<input type="password" name="" value="" />
			</div>
		</div>
	</div>
</div>

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="findPwdBtn" value="제출"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="취소"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>