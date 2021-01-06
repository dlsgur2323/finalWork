<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
<div class="content">
	<div style="margin-left:2%; margin-bottom:2%;">
		<strong style="font-size:1.2rem;">회원 리스트</strong>
	</div>
	<div class="card" style="margin:0% 2% 0% 2%;">
		<div class="card-header">
			<select class="form-select" style="display:inline-block; width:15%; display:inline;">
				<option>회원 아이디</option>
				<option>대표자명</option>
				<option>기업명</option>
				<option>사업자등록번호</option>
				<option>상태</option>
			</select>
			<input type="text" class="form-control" placeholder="Search for…" style="width:30%; display:inline;">
			<a href="#" class="btn btn-white btn-icon" aria-label="Button" style="display:inline;">
				<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
					<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
					<circle cx="10" cy="10" r="7"></circle>
					<line x1="21" y1="21" x2="15" y2="15"></line>
				</svg>
			</a>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table card-table table-vcenter text-nowrap datatable">
					<thead>
						<tr>
							<th class="text-center">회원 아이디</th>
							<th class="text-center">대표자명</th>
							<th class="text-center">기업명</th>
							<th class="text-center">사업자등록번호</th>
							<th class="text-center">상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center"><a href="#">abccom123</a></td>
							<td class="text-center"><a href="#">김인혁</a></td>
							<td class="text-center"><a href="#">abcd마트</a></td>
							<td class="text-center"><a href="#">882-24-21469</a></td>
							<td class="text-center"><a href="#">승인 대기</a></td>
						</tr>
						<tr>
							<td class="text-center"><a href="#">adidaz5</a></td>
							<td class="text-center"><a href="#">이영섭</a></td>
							<td class="text-center"><a href="#">아디다즈</a></td>
							<td class="text-center"><a href="#">382-44-12369</a></td>
							<td class="text-center"><a href="#">탈퇴</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="card-footer" style="background-color:white;">
		</div>
	</div>
</div>