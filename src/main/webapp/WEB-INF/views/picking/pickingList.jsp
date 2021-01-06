<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<div class="container-xl">
		<!-- 콘텐츠 헤더 -->
		<div class="page-header d-print-none">
			<div class="row align-items-center">	
				<div class="col">
					<h2 class="page-title">
						피킹 작업 목록
					</h2>
				</div>
			</div>
		</div>
		<!-- /page-header -->
		<div class="card col-10">
			<div class="card-header">
				<div class="row">
					<div class="col-12">
						<div class="row" style="margin-left:5px;margin-top:10px;line-height:190%;">
							품목명&nbsp;&nbsp; <input type="text" style="width:145px; height:25px;" class="form-control">&nbsp;&nbsp;
							담당자&nbsp;&nbsp; <input type="text" style="width:145px; height:25px;" class="form-control">
						</div>
					</div> 
					<div class="col-12">
						<div class="row" style="margin-left:5px;margin-top:10px;line-height:250%;">
							상태&nbsp;&nbsp;
							<select class="form-select" style="display:inline-block; width:100px;">
								<option>작업대기</option>
								<option>작업중</option>
							</select> 
							&nbsp;&nbsp;
							작업예정일시&nbsp;&nbsp; <input style="width:145px;" class="form-control" type="date">&nbsp;&nbsp; ~ 
							&nbsp;&nbsp;<input style="width:145px;" class="form-control" type="date">
						</div>
					</div> 
				</div>
			</div>
			<!-- /card-head -->
			<div class="card-body">
				<div class="table-responsive" style="max-height:500px;">
					<table class="table card-table table-vcenter text-nowrap datatable">
						<thead>
							<tr>
								<th class="w-1"></th>
								<th class="text-center">피킹번호</th>
								<th class="text-center">품목명</th>
								<th class="text-center">수량</th>
								<th class="text-center">작업예정일시</th>
								<th class="text-center">담당자</th>
								<th class="text-center">상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center"><input type="checkbox"></td>
								<td class="text-center">10</td>
								<td class="text-center">취급 품목 유형</td>
								<td class="text-center">사용중</td>
								<td class="text-center">사용중</td>
								<td class="text-center">사용중</td>
								<td class="text-center">사용중</td>
							</tr>
							<tr>
								<td class="text-center"><input type="checkbox"></td>
								<td class="text-center">20</td>
								<td class="text-center">품목 그룹</td>
								<td class="text-center">사용중</td>
								<td class="text-center">사용중</td>
								<td class="text-center">사용중</td>
								<td class="text-center">사용중</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /table-responsive -->
				<input type="button" class="btn btn-light" value="담당자 배정">
				<input type="button" class="btn btn-light" value="승인">
				<input type="button" class="btn btn-light" value="거절">
			</div>
			<!-- /card-body -->
		</div>
		<!-- /card -->
	</div>