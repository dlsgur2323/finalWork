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
	<strong style="font-size:1.2rem;">쪽지 보내기</strong>
</div>

<div class="card" style="margin: 0% 2% 0% 2%;">
	<div class="card-header">
		<div class="col-3">
			<strong>보낸 사람</strong>
		</div>
		<div class="col-9" style="display:inherit;">
			<input type="text" class="form-control" style="width:50%;" disabled>
			<a href="#" class="btn btn-white btn-icon" aria-label="Button">
				<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
					<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
					<circle cx="10" cy="10" r="7"></circle>
					<line x1="21" y1="21" x2="15" y2="15"></line>
				</svg>
			</a>
		</div>
	</div>
	<div class="card-body">
		<div class="row">
			<div class="col-12">내용</div>
		</div>
		<textarea rows="10" cols="80"></textarea>
	</div>
</div>

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="sendBtn" value="전송"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="닫기"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>