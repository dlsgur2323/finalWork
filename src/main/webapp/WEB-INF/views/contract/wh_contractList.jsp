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
					<strong>계약 현황</strong>
				</h2>
			</div>
			<div class="card-body border-bottom py-3">
				<div class="d-flex">
					<div class="ms-auto text-muted" style="padding-left: 70%;">						
						<div class="ms-2 d-inline-block">
							<select class="form-select">
								<option value="1">계약상태</option>
								<option value="2">요청대기</option>
								<option value="3">계약</option>
							</select>
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
							<th>기업명</th>
							<th>계약시작일</th>
							<th>계약종료일</th>
							<th>계약면적</th>
							<th>계약상태</th>
							<th>계약요청일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input class="form-check-input m-0 align-middle"
								type="checkbox" aria-label="Select invoice"> <input
								type="hidden" value="wh_code" name="wh_code"></td>
							<td><span class="text-muted">001</span></td>
							<td><a href="#" data-bs-toggle="modal"
								data-bs-target="#modal-report">두리화장품</a></td>
							<td></td>
							<td></td>
							<td>1000</td>
							<td>요청대기</td>
							<td>2020-01-02</td>
						</tr>
						<tr>
							<td><input class="form-check-input m-0 align-middle"
								type="checkbox" aria-label="Select invoice"></td>
							<td><span class="text-muted">002</span></td>
							<td><a href="#" data-bs-toggle="modal"
								data-bs-target="#modal-report">삼진유통</a></td>
							<td>2019-12-29</td>
							<td>2021-12-29</td>
							<td>2000</td>
							<td>계약</td>
							<td>2019-12-27</td>
						</tr>
						<tr>
							<td><input class="form-check-input m-0 align-middle"
								type="checkbox" aria-label="Select invoice"></td>
							<td><span class="text-muted">003</span></td>
							<td><a href="#" data-bs-toggle="modal"
								data-bs-target="#modal-report">광진무역</a></td>
							<td>2019-11-29</td>
							<td>2021-11-29</td>
							<td>1000</td>
							<td>계약</td>
							<td>2019-11-27</td>
						</tr>
						<tr>
							<td><input class="form-check-input m-0 align-middle"
								type="checkbox" aria-label="Select invoice"></td>
							<td><span class="text-muted">004</span></td>
							<td><a href="#" data-bs-toggle="modal"
								data-bs-target="#modal-report">유림상사</a></td>
							<td></td>
							<td></td>
							<td>200</td>
							<td>반려</td>
							<td>2019-11-10</td>
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
				<h5 class="modal-title">00기업</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-6">
							<div class="mb-3">
								<label class="form-label">대표자명</label> <input type="text"
									class="form-control" value="000" readonly>
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
					<div class="row">
						<div class="col-lg-6">
							<div class="mb-3">
								<label class="form-label">희망계약기간 (년)</label> 
								<input type="text" class="form-control" value="0" readonly>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="mb-3">
								<label class="form-label">희망계약면적 (m2)</label> 
								<input type="text" class="form-control" value="0000" readonly>
							</div>
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
						<line x1="5" y1="12" x2="19" y2="12"></line></svg> 계약승인
				</a>
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
