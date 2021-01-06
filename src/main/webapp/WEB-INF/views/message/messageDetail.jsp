<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<Style>
	.col-3{
		width: 40%;
	}
</Style>
</head>
<body>
<div style="margin:4% 0% 2% 5%;">
	<strong style="font-size:1.2rem;">쪽지 보기</strong>
</div>

<div class="card" style="margin: 0% 2% 0% 2%;">
	<div class="card-header">
		<div class="row">
			<div class="col-3" style="margin-bottom:2%;"><strong>보낸 사람</strong></div>
			<div class="col-3">코팡</div>
			<div class="col-3"><strong>보낸 날짜</strong></div>
			<div class="col-3">20-12-27</div>
		</div>
	</div>
	<div class="card-body">
		<div class="row">
			<div class="col-12">내용</div>
		</div>
		<textarea rows="10" cols="80" disabled="disabled">금일 입고 시 주의 사항</textarea>
	</div>
</div>

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="removeBtn" value="삭제"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="닫기"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>