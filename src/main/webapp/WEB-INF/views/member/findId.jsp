<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<div style="margin:4% 0% 2% 5%;">
	<strong style="font-size:1.2rem;">회원 아이디 찾기</strong>
</div>

<div class="card" style="margin: 0% 2% 0% 2%;">
	<div class="card-body">
		<div class="row">
			<div class="col-4"><strong>사업자등록번호</strong></div>
			<div class="col-8">
				<input type="text" name="" style="width:20%;"/> - <input type="text" name="" style="width:20%;"/> - <input type="text" name="" style="width:40%;"/>
			</div>
		</div>
	</div>
</div>

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="findIdBtn" value="아이디 찾기"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="취소"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>