<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="content">
		<div class="container-xl">
			
			<div class="page-header d-print-none">
	          <div class="row align-items-center">
	            <div class="col">
	              <h2 class="page-title">
					발주 요청 조회	                
	              </h2>
	            </div>
	          </div>
        	</div>
        	
        	<div class="col-12">
              <div class="card">
                <div class="table-responsive" style="margin-bottom: 0px;">
                  <table class="table table-vcenter card-table">
                    <thead>
                      <tr>
                      	<th class="w-1 "></th>
                        <th class="text-center">발주요청일</th>
                        <th class="text-center">거래처명</th>
                        <th class="text-center">품목</th>
                        <th class="text-center">납기일자</th>
                        <th class="text-center">수량</th>
                        <th class="text-center">진행상태</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                      	<td class="text-center"><input class="form-check-input m-0 align-middle" type="checkbox" aria-label="Select invoice"></td>
                        <td class="text-center">
                          <a href="#">2021/01/05</a>
                        </td>
                        <td class="text-center">선화과자</td>
                        <td class="text-center">치즈맛감자</td>
                        <td class="text-center">2021/01/10</td>
                        <td class="text-center">
                         	30
                        </td>
                        <td class="text-center"><a href="#" class="text-reset">요청</a></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
			
			<button style="margin-top: 15px;" class="btn">신규요청</button>
			<button style="margin-top: 15px;" class="btn">선택삭제</button>
			
		</div>
		<!-- contai -->
	</div>
	<!-- content -->
</body>
</html>