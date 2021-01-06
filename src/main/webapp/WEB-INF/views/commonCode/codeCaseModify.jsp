<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="content">
	    <div class="container-xl" style="width:450px; height:500px;">
	    	<!-- 콘텐츠 헤더 -->
				<div class="page-header d-print-none">
					<div class="row align-items-center">	
						<div class="col">
							<h2 class="page-title">
								공통코드 유형 검색
							</h2>
						</div>
					</div>
				</div>
				<div class="card col-12">
					<div class="card-body">
						<div class="table-responsive" style="height:380px;">
							<table class="table card-table table-vcenter text-nowrap datatable">
								<thead>
									<tr>
										<th class="w-1"></th>
										<th class="text-center">유형 코드</th>
										<th class="text-center">유 형 명</th>
										<th class="text-center">사용여부</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center"><input type="checkbox"></td>
										<td class="text-center">10</td>
										<td class="text-center"><input type="text" style="height:30px;" class="form-control"></td>
										<td class="text-center">
											<select>
												<option>사용중</option>
												<option>사용정지</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="text-center"><input type="checkbox"></td>
										<td class="text-center">20</td>
										<td class="text-center"><input type="text" style="height:30px;" class="form-control"></td>
										<td class="text-center">
											<select>
												<option>사용중</option>
												<option>사용정지</option>
											</select>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- /table-responsive -->
					</div>
					<!-- card-body -->
				</div>
				<!-- /card col-12 -->
				<div class="row" style="margin-top : 10px;">
					<div class="col-2">
						<input type="button" class="btn btn-white" value="저장">
					</div>
					<div class="col-2">
						<input type="button" class="btn btn-white" value="취소">
					</div>
				</div>
				
	    </div>
	</div>