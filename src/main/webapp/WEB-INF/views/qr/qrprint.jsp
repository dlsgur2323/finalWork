<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="container-xl">
	<div class="row" style="margin-top:20px;"><h1>입고대기 현황</h1></div>
	<hr style="margin-top:10px;"/>
	<div class="row">
		<div class="col-7">
			<div class="card">
				<div class="table-responsive">
		        	<table class="table card-table table-vcenter text-nowrap datatable">
		            	<thead>
		                  <tr>
		                    <th class="w-1"></th>
		                    <th class="w-1 text-center">No</th>
		                    <th class="text-center">품목코드</th>
		                    <th class="text-center">품목명</th>
		                    <th class="text-center">기업명</th>
		                    <th class="text-center">품목구분</th>
		                    <th class="text-center">품목그룹</th>
		                    <th class="text-center">품목유형</th>
		                    <th class="text-center">바코드</th>
		                  </tr>
		                </thead>
		                <tbody>
		                  <tr>
		                    <!-- 체크박스 -->
		                    <td><input class="form-check-input m-0 align-middle" type="checkbox" aria-label="Select invoice"></td>
		                    <td class="text-center"><span class="text-muted">1</span></td>
		                    <td class="text-center"><a href="invoice.html" class="text-reset" tabindex="-1">001</a></td>
		                    <td class="text-center">CTR001</td>
		                    <td class="text-center">대덕인재개발식품</td>
		                    <td class="text-center">원재료</td>
		                    <td class="text-center">식품</td>
		                    <td class="text-center">냉동</td>
		                    <td class="text-center">3600029145</td>
		                  </tr>
		                </tbody>
		              </table>
		          </div>
			</div>
		</div>
		<div class="col-5">
			<div class="card">
				<div class="qr-create" style="border:2px solid black;width:100%;height:450px;">qr</div>
			</div>
		</div>
	</div><!-- /row -->
	<div class="row" style="float:right;">
	    <a href="#" class="btn btn-dark" style="width:150px; height:40px; margin-right:10px; margin-top:30px;">
	    	QR코드 인쇄
	    </a>
	</div>
	
</div><!-- /container-xl -->
		
