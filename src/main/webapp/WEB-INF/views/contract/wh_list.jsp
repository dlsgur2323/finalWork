<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.caroimg{	
	height : 300px;
}
</style>

<div class="container-xl">
	<div class="row row-deck row-cards">
		<div class="card">
			<div class="card-header">
				<h2 class="card-title">
					<strong>물류센터 목록</strong>
				</h2>
			</div>
			<div class="card-body border-bottom py-3">
				<div class="d-flex">
					<div class="ms-auto text-muted" style="padding-left: 70%;">
						Search :
						<div class="ms-2 d-inline-block">
							<select class="form-select">
								<option value="1">취급유형</option>
								<option value="2">주소</option>
							</select>
						</div>
					</div>
					<div class="ms-auto text-muted">
						<div class="ms-2 d-inline-block">
							<input type="text" class="form-control form-control-md"
								aria-label="Search invoice">
						</div>
					</div>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table card-table table-vcenter text-nowrap datatable">
					<thead>
						<tr>
							<th class="w-1"><input
								class="form-check-input m-0 align-middle" type="checkbox"
								aria-label="Select all invoices"></th>
							<th class="w-1">No. <svg xmlns="http://www.w3.org/2000/svg"
									class="icon icon-sm text-dark icon-thick" width="24"
									height="24" viewBox="0 0 24 24" stroke-width="2"
									stroke="currentColor" fill="none" stroke-linecap="round"
									stroke-linejoin="round">
									<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
									<polyline points="6 15 12 9 18 15"></polyline></svg>
							</th>
							<th>물류센터명</th>
							<th>주소</th>
							<th>취급유형</th>
							<th>총면적(제곱미터)</th>
							<th>대표자명</th>
							<th>전화번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input class="form-check-input m-0 align-middle"
								type="checkbox" aria-label="Select invoice"> <input
								type="hidden" value="wh_code" name="wh_code"></td>
							<td><span class="text-muted">001401</span></td>
							<td><a href="#" data-bs-toggle="modal"
								data-bs-target="#modal-report">(주)남서물류터미널</a></td>
							<td>경기도 용인시 처인구 남사면</td>
							<td>냉동,냉장,실온</td>
							<td>49,863</td>
							<td>최송영</td>
							<td>031-321-6668</td>
						</tr>
						<tr>
							<td><input class="form-check-input m-0 align-middle"
								type="checkbox" aria-label="Select invoice"></td>
							<td><span class="text-muted">001402</span></td>
							<td><a href="#" data-bs-toggle="modal"
								data-bs-target="#modal-report">SLS덕평물류센터1</a></td>
							<td>경기도 이천시 호법면</td>
							<td>냉동,냉장,실온</td>
							<td>10,248</td>
							<td>김대옹</td>
							<td>031-637-5400</td>
						</tr>
						<tr>
							<td><input class="form-check-input m-0 align-middle"
								type="checkbox" aria-label="Select invoice"></td>
							<td><span class="text-muted">001403</span></td>
							<td><a href="#" data-bs-toggle="modal"
								data-bs-target="#modal-report">SLS덕평물류센터2</a></td>
							<td>경기도 이천시 마장면</td>
							<td>냉동,냉장,실온</td>
							<td>31,735</td>
							<td>김대옹</td>
							<td>031-637-5400</td>
						</tr>
						<tr>
							<td><input class="form-check-input m-0 align-middle"
								type="checkbox" aria-label="Select invoice"></td>
							<td><span class="text-muted">001404</span></td>
							<td><a href="#" data-bs-toggle="modal"
								data-bs-target="#modal-report">SLS덕평물류센터3</a></td>
							<td>경기도 이천시 호법면</td>
							<td>냉동,냉장,실온</td>
							<td>28,760</td>
							<td>김대옹</td>
							<td>031-637-5400</td>
						</tr>

					</tbody>
				</table>
			</div>
			<div class="card-footer d-flex align-items-center">
				<p class="m-0 text-muted">
					Showing <span>1</span> to <span>8</span> of <span>16</span> entries
				</p>
				<ul class="pagination m-0 ms-auto">
					<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true"> <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
					<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
					<polyline points="15 6 9 12 15 18"></polyline></svg> prev
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item active"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#"> next
					<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
					<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
					<polyline points="9 6 15 12 9 18"></polyline></svg>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="modal modal-blur fade show" id="modal-report" tabindex="-1"
	style="display: none; padding-right: 16px;" aria-modal="true"
	role="dialog">
	<div class="modal-dialog modal-lg modal-dialog-centered"
		role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">00물류센터</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="mb-3">
					<div id="carousel-controls" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-inner" style="padding-left: 20%;">
							<div class="carousel-item">
								<img class="d-block w-80 caroimg" alt=""
									src="<%=request.getContextPath()%>/resources/images/temp.jpg">
							</div>
							<div class="carousel-item active">
								<img class="d-block w-80 caroimg" alt=""
									src="<%=request.getContextPath()%>/resources/images/temp.jpg">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carousel-controls"
							role="button" data-bs-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Previous</span>
						</a> <a class="carousel-control-next" href="#carousel-controls"
							role="button" data-bs-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Next</span>
						</a>
					</div>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-6">
							<div class="mb-3">
								<label class="form-label">대표자명</label> <input type="text"
									class="form-control" value="000" readonly>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="mb-3">
								<label class="form-label">총면적</label> <input type="text"
									class="form-control" value="0000" readonly>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="mb-3">
								<label class="form-label">주소</label> <input type="text"
									class="form-control" value="00도 00시 000" readonly>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="mb-3">
								<label class="form-label">사업자등록번호</label> <input type="text"
									class="form-control" value="000-0000-0000" readonly>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-body">
					<div class="col-lg-8"></div>
					<div class="col-lg-4">
						<div class="ms-auto text-muted">
							<div class="mb-3">
								<label class="form-label">희망계약기간</label> <select
									class="form-select">
									<option value="1" selected="selected">Private</option>
									<option value="2">Public</option>
									<option value="3">Hidden</option>
								</select>
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<a href="#" class="btn btn-link link-secondary"
							data-bs-dismiss="modal"> Cancel </a> <a href="#"
							class="btn btn-primary ms-auto" data-bs-dismiss="modal"> <svg
								xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
								height="24" viewBox="0 0 24 24" stroke-width="2"
								stroke="currentColor" fill="none" stroke-linecap="round"
								stroke-linejoin="round">
								<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
								<line x1="12" y1="5" x2="12" y2="19"></line>
								<line x1="5" y1="12" x2="19" y2="12"></line></svg> 계약요청하기
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
 	/* function openmodal(){
 		var whmodal = document.getElementById('modal-report');
 		whmodal.style.display="block";
 	} */
 </script>   
