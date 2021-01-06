<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${ref eq null }">
	<script>
		alert("직접 입력 했어요..?");
		location.href="<%=request.getContextPath()%>/";
	</script>
</c:if>		
		<div class="container-xl">
			
			<!-- 콘텐츠 헤더 -->
			<div class="page-header d-print-none">
				<div class="row align-items-center">	
					<div class="col">
						<h2 class="page-title">
							공통코드 관리
						</h2>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="card col-3">
					<div class="card-header">
						공통코드 유형
					</div>
					<div class="card-body">
						<div class="table-responsive" style="max-height:380px;">
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
										<td class="text-center">취급 품목 유형</td>
										<td class="text-center">사용중</td>
									</tr>
									<tr>
										<td class="text-center"><input type="checkbox"></td>
										<td class="text-center">20</td>
										<td class="text-center">품목 그룹</td>
										<td class="text-center">사용중</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- /table-responsive -->
					</div>
					<!-- /card-body -->
					<div class="card-footer" style="background : white;">
						<input type="button" class="btn btn-light" value="신규">
						<input type="button" class="btn btn-light" value="수정">
						<input type="button" class="btn btn-light" value="사용정지">
					</div>
					<!-- /card-footer -->
				</div>
				<!-- /card col-6 -->
				<div class="col-1"></div>
				<div class="card col-3">
					<div class="card-header">
						<div class="col-6">공통코드</div>
					</div>
					<div class="card-body">
						<div class="row" style="margin-bottom:10px;">
							<div class="col-2 text-center">10</div>
							<div class="col-4">취급 품목 유형</div>
						</div>
						<div class="table-responsive" style="height:350px;">
							
							<table class="table card-table table-vcenter text-nowrap datatable">
								<thead>
									<tr>
										<th class="w-1"></th>
										<th class="text-center">코드</th>
										<th class="text-center">코 드 명</th>
										<th class="text-center">사용여부</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center"><input type="checkbox"></td>
										<td class="text-center">101</td>
										<td class="text-center">일반</td>
										<td class="text-center">사용중</td>
									</tr>
									<tr>
										<td class="text-center"><input type="checkbox"></td>
										<td class="text-center">102</td>
										<td class="text-center">냉장</td>
										<td class="text-center">사용중</td>
									</tr>
								</tbody>
							</table>
						</div><!-- /table-responsive -->
					</div>
					<!-- /card-body -->
					<div class="card-footer" style="background : white;">
						<input type="button" class="btn btn-light" value="신규">
						<input type="button" class="btn btn-light" value="수정">
						<input type="button" class="btn btn-light" value="사용정지">
					</div>
					<!-- /card-footer -->
				</div>
				<!-- /card col-6 -->
			</div>
			<!-- /row -->
			
			
		</div><!-- /container-xl -->