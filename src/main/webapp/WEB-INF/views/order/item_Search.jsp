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
                            품목 검색
                        </h2>
                    </div>
                </div>
            </div>
			
            <div class="col-4 card" style="padding:5px;">
                <div class="col-12 card-body" style="padding: 0px 8px;">
                
                	<div class="row">
	                    <div class="col-4 table-responsive" style="display:inline-block; padding: 5px; margin:0px;">
	                        <table class="table card-table table-vcenter text-nowrap datatable">
	                        	<thead>
	                        		<tr>
	                        			<th class="text-center" style="border:1px solid #DBDCDE;padding: 9px 16px;">검색</th>
	                        		</tr>
	                        	</thead>
	                        </table>
	                    </div>
	                    
	                      <div class="col-8 input-icon" style="display:inline-block; padding:5px;">
	                          <input type="text" class="form-control" placeholder="Search…" style="border-radius: 0px;">
	                          <span class="input-icon-addon">
	                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="10" cy="10" r="7"></circle><line x1="21" y1="21" x2="15" y2="15"></line></svg>
	                          </span>
                        </div>
                	</div>
                
                	
                	
                	
                	<div class="row">
	                    <div class="col-12 table-responsive" style="padding: 5px; margin:0px;">
	                        <table class="table card-table table-vcenter text-nowrap datatable" border=1>
	                        	<thead>
	                        		<tr>
	                        			<th class="text-center">선택</th>
                        				<th class="text-center">품목코드</th>
                        				<th class="text-center">품목명</th>
                        				<th class="text-center">규격</th>
	                        		</tr>
	                        	</thead>
	                            <tbody>
	                            	<tr>
	                            		<td class="text-center"><input class="form-check-input m-0 align-middle" type="checkbox" aria-label="Select invoice"></td>
	                            		<td class="text-center">0000001</td>
	                            		<td class="text-center">코카콜라</td>
	                            		<td class="text-center">500ml * 12EA</td>
	                            	</tr>
	                            	<tr>
	                            		<td class="text-center"><input class="form-check-input m-0 align-middle" type="checkbox" aria-label="Select invoice"></td>
	                            		<td class="text-center">0000001</td>
	                            		<td class="text-center">코카콜라</td>
	                            		<td class="text-center">500ml * 12EA</td>
	                            	</tr>
	                            	<tr>
	                            		<td class="text-center"><input class="form-check-input m-0 align-middle" type="checkbox" aria-label="Select invoice"></td>
	                            		<td class="text-center">0000001</td>
	                            		<td class="text-center">코카콜라</td>
	                            		<td class="text-center">500ml * 12EA</td>
	                            	</tr>
	                            </tbody>                           
	                        </table>
	                    </div>
                	</div>
                    
                    <div class="row">
	                    <div class="col-12" style="padding:5px; margin: auto;">
	                    	<div style="display: inline-block;">
		                    	<a href="#" class="btn btn-light w-100">
				                  	신규
				                </a>
	                    	</div>
	                    	<div style="display: inline-block;">
		                    	<a href="#" class="btn btn-light w-100">
				                  	닫기
				                </a>
	                    	</div>
                    	</div>
                    </div>
                    
                    
                    
                    
                </div>
                <!-- card-body -->
            </div>
            <!-- card --> 
        </div>
        <!-- container -->
    </div>
    <!-- content -->
</body>

</html>