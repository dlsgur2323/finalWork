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
					결제
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
                        <th class="text-center">결제번호</th>
                        <th class="text-center">청구일자</th>
                        <th class="text-center">청구물류센터명</th>
                        <th class="text-center">청구금액</th>
                        <th class="text-center">청구내용</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="text-center">
                          <a href="#">0000001</a>
                        </td>
                        <td class="text-center">2021/01/05</td>
                        <td class="text-center">선화물류센터</td>
                        <td class="text-center">12.000.000원</td>
                        <td class="text-center">월적재료</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            
            <div class="card" style="margin-top: 10px;">
            	<div class="col-12 table-responsive" style="padding: 0px; margin:0px;">
	                        <table class="table table-vcenter card-table">
	                        	<thead>
	                        		<tr>
                        				<th class="text-center">품목코드</th>
                        				<th class="text-center">품목명</th>
                        				<th class="text-center">규격</th>
                        				<th class="text-center">수량</th>
	                        		</tr>
	                        	</thead>
	                            <tbody>
	                            	<tr>
	                            		<td class="text-center">0000001</td>
	                            		<td class="text-center">코카콜라</td>
	                            		<td class="text-center">500ml * 12EA</td>
	                            		<td class="text-center">5</td>
	                            	</tr>
	                            </tbody>                           
	                        </table>
	                    </div>
            </div>
            
            <button style="margin-top: 15px;" class="btn">분할납부</button>
			<button style="margin-top: 15px;" class="btn">완전납부</button>
            
            
		</div>
		<!-- contai -->
	</div>
	<!-- content -->
</body>
</html>