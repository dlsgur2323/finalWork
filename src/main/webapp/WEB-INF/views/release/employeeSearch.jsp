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
                            담당자 검색
                        </h2>
                    </div>
                </div>
            </div>
			
            <div class="col-4 card" style="padding:5px;">
                <div class="col-12 card-body" style="padding: 0px 8px;">
                	<div class="row" style="">
	                    <div class="col-12 table-responsive" style="padding: 5px; margin:0px;">
	            <div>
		            <h4 class="col-2" style="display:inline-block; margin-right:1%;">직원명</h4>
		            <input class="col-3" type="text" class="form-control" name="example-text-input" style="margin-right:2.5%; margin-left: -1%;">
		            <h4 class="col-2" style="display:inline-block; margin-right:1%;">담당업무</h4>
		            <input class="col-3" type="text" class="form-control" name="example-text-input" style="margin-right:2.5%; margin-left: -1%;">
	           	</div>
                    <table class="table card-table table-vcenter text-nowrap datatable">
                <thead>
                  <tr>
                    <th class="text-center">직원 ID</th>
                    <th class="text-center">직원명</th>
                    <th class="text-center">담당업무</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="text-center">abc123</td>
                    <td class="text-center">홍길동</td>
                    <td class="text-center">피킹</td>
                  </tr>
                  <tr>
                    <td class="text-center">ddl01083</td>
                    <td class="text-center">임정혁</td>
                    <td class="text-center">출고</td>
                  </tr>
                  
                </tbody>
                 
              </table>
	                    </div>
                    </div>
                    
                    <div class="row">
	                    <div class="col-3" style="padding:5px; margin: auto;">
	                    	<a href="#" class="btn btn-light w-100">
			                  	닫기
			                </a>
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