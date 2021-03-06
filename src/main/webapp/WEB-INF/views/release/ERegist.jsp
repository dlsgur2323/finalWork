<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="content">
<div class="container-xl">
<div class="page-header d-print-none">
                <div class="row align-items-center">
                    <div class="col">
                        <h2 class="page-title">
                            출고요청등록
                        </h2>
                    </div>
                </div>
            </div>

          <div class="col-8 card" style="padding:5px;">
          <div class="col-12 card-body" style="padding: 0px 8px;">
            <!-- form -->
            <div class="table-responsive">
            <div>
	            <h4 class="col-1"style="display:inline-block;">일자</h4>
	            <input class="col-2" type="date" class="form-control" name="example-text-input" style="margin-right:2%; margin-left: -5%;">
	            <h4 class="col-1"style="display:inline-block;">출고유형</h4>
	            <input class="col-2" type="text" class="form-control" name="example-text-input" style="margin-right:2%; margin-left: -1%;">
	            <h4 class="col-1"style="display:inline-block;">도착지명</h4>
	            <input class="col-2" type="text" class="form-control" name="example-text-input" style="margin-left: -1%;">
            </div>
              <table class="table card-table table-vcenter text-nowrap datatable">
                <thead>
                  <tr>
                    <th class="w-1"></th>
                    <th class="text-center">품목코드</th>
                    <th class="text-center">품목명</th>
                    <th class="text-center">규격</th>
                    <th class="text-center">출고예정수량</th>
                    <th class="text-center">납기일</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <!-- 체크박스 -->
                    <td><input class="form-check-input m-0 align-middle" type="checkbox" aria-label="Select invoice"></td>
                    <td class="text-center"><input type="text" class="form-control" name="example-text-input" ></td>
                    <td class="text-center"><input type="text" class="form-control" name="example-text-input"></td>
                    <td class="text-center">
                      	<input type="text" class="form-control" name="example-text-input" >
                    </td>
                    <td class="text-center">
                      <input type="text" class="form-control" name="example-text-input">
                    </td>
                    <td class="text-center">
                      <input type="date" class="form-control" name="example-text-input">
                    </td>
                  </tr>
                </tbody>
              </table>
              <button class="btn btn-light" style="margin-left:15px; margin-top:10px">
                  	요청 등록
                </button>
                <button class="btn btn-light" style="margin-left:5px; margin-top:10px">
                  	인쇄
                </button>
                <button class="btn btn-light" style="margin-left:5px; margin-top:10px">
                  	삭제
                </button>
            </div>
            <!-- /form -->
          </div>
        </div>
        </div>
        </div>
        </div>