<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="content">
<div class="container-xl">
<div class="card">
          <div class="card-header">
            <h3 class="card-title">출고내역리스트</h3>
          </div>

          <div class="card-body">
            <!-- form -->
            <div class="table-responsive">
            <div>
		            <h4 class="col-1" style="display:inline-block; margin-right:1%;">출고번호</h4>
		            <input class="col-2" type="text" class="form-control" name="example-text-input" style="margin-right:2.5%; margin-left: -3%;">
	           	</div>
              <table class="table card-table table-vcenter text-nowrap datatable">
                <thead>
                  <tr>
                    <th class="w-1"></th>
                    <th class="w-1 text-center">출고번호</th>
                    <th class="text-center">물류센터명</th>
                    <th class="text-center">도착지점명</th>
                    <th class="text-center">출고담당자</th>
                    <th class="text-center">납기일</th>
                    <th class="text-center">총 출고수량</th>
                    <th class="text-center">출고유형</th>
                    <th class="text-center">절차상태</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <!-- 체크박스 -->
                    <td><input class="form-check-input m-0 align-middle" type="checkbox" aria-label="Select invoice"></td>
                    <td class="text-center"><a href="invoice.html" class="text-reset" tabindex="-1">2020/12/29-1</a></td>
                    <td class="text-center">굿모닝물류</td>
                    <td class="text-center">
                      	부산 해운대점 CU
                    </td>
                    <td class="text-center">홍길동</td>
                    <td class="text-center">
                      2020/12/31
                    </td>
                    <td class="text-center">
                      8
                    </td>
                    <td class="text-center">출하</td>
                    <td class="text-center">피킹</td>
                  </tr>
                  <tr>
                    <!-- 체크박스 -->
                    <td><input class="form-check-input m-0 align-middle" type="checkbox" aria-label="Select invoice"></td>
                    <td class="text-center"><a href="invoice.html" class="text-reset" tabindex="-1">2020/12/29-2</a></td>
                    <td class="text-center">굿모닝물류</td>
                    <td class="text-center">
                      	대전 중구청점 CU
                    </td>
                    <td class="text-center">-</td>
                    <td class="text-center">
                      2020/12/31
                    </td>
                    <td class="text-center">
                      8
                    </td>
                    <td class="text-center">출하</td>
                    <td class="text-center">-</td>
                  </tr>
                </tbody>
              </table>
              <ul class="pagination" style="float:right;">
                    <li class="page-item disabled">
                      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><polyline points="15 6 9 12 15 18"></polyline></svg>
                        prev
                      </a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item">
                      <a class="page-link" href="#">
                        next <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><polyline points="9 6 15 12 9 18"></polyline></svg>
                      </a>
                    </li>
                  </ul>
              <button class="btn btn-light" style="margin-left:15px; margin-top:10px">
                  	확인
                </button>

            </div>
            <!-- /form -->
          </div>
        </div>
        </div>
        </div>