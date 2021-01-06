<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<div style="margin:4% 0% 2% 5%;">
	<strong style="font-size:1.2rem;">쪽지</strong>
</div>

<div class="col-12">
	<!-- Cards with tabs component -->
	<div class="card-tabs ">
	<!-- Cards navigation -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a href="#tab-top-1" class="nav-link active" data-bs-toggle="tab">전체</a></li>
		<li class="nav-item"><a href="#tab-top-2" class="nav-link" data-bs-toggle="tab">미확인</a></li>
		<li class="nav-item"><a href="#tab-top-3" class="nav-link" data-bs-toggle="tab">확인</a></li>
	</ul>
		<div class="tab-content">
			<!-- Content of card #1 -->
			<div id="tab-top-1" class="card tab-pane show active">
				<div class="card-body">
					<div class="table-responsive">
						<table class="table card-table table-vcenter text-nowrap datatable">
							<thead>
								<tr>
									<th class="text-center">보낸 기업</th>
									<th class="text-center">내용</th>
									<th class="text-center">발송일자</th>
									<th class="text-center">상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center"><a href="#">아디다즈</a></td>
									<td class="text-center"><a href="#">금일 입고 신청 사항 변경안...</a></td>
									<td class="text-center"><a href="#">21-01-04</a></td>
									<td class="text-center"><a href="#">미확인</a></td>
								</tr>
								<tr>
									<td class="text-center"><a href="#">코팡</a></td>
									<td class="text-center"><a href="#">금일 출고 관련 사항입니다.</a></td>
									<td class="text-center"><a href="#">20-12-31</a></td>
									<td class="text-center"><a href="#">확인</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Content of card #2 -->
			<div id="tab-top-2" class="card tab-pane">
				<div class="card-body">
					<div class="table-responsive">
						<table class="table card-table table-vcenter text-nowrap datatable">
							<thead>
								<tr>
									<th class="text-center">보낸 기업</th>
									<th class="text-center">내용</th>
									<th class="text-center">발송일자</th>
									<th class="text-center">상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center"><a href="#">아디다즈</a></td>
									<td class="text-center"><a href="#">금일 입고 신청 사항 변경안...</a></td>
									<td class="text-center"><a href="#">21-01-04</a></td>
									<td class="text-center"><a href="#">미확인</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Content of card #3 -->
			<div id="tab-top-3" class="card tab-pane">
				<div class="card-body">
					<div class="table-responsive">
						<table class="table card-table table-vcenter text-nowrap datatable">
							<thead>
								<tr>
									<th class="text-center">보낸 기업</th>
									<th class="text-center">내용</th>
									<th class="text-center">발송일자</th>
									<th class="text-center">상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center"><a href="#">코팡</a></td>
									<td class="text-center"><a href="#">금일 출고 관련 사항입니다.</a></td>
									<td class="text-center"><a href="#">20-12-31</a></td>
									<td class="text-center"><a href="#">확인</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="sendBtn" value="쪽지 보내기"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="취소"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>