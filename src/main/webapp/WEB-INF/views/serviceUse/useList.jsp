<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="content">
<div class="container-xl">
<div class="card">
          <div class="card-header">
            <h3 class="card-title">이용신청 목록</h3>
            <div class="col-xl">
                <button class="btn btn-light" style="margin-left:15px">
                  	기업
                </button>
                <button class="btn btn-light" style="margin-left:5px">
                  	물류창고
                </button>
              </div>
          </div>

          <div class="card-body">
            <!-- form -->
            <div class="table-responsive">
              <table class="table card-table table-vcenter text-nowrap datatable">
                <thead>
                  <tr>
                    <th class="text-center">회원아이디</th>
                    <th class="text-center">기업명</th>
                    <th class="text-center">대표자명</th>
               
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="text-center"><a href="<%=request.getContextPath() %>/serviceUse/WDetail" class="text-reset" tabindex="-1">goodmn</a></td>
                    <td class="text-center">
                      	굿모닝물류
                    </td>
                    <td class="text-center">
                      	홍길동
                    </td>
                  </tr>
                  <tr>
                    <td class="text-center"><a href="<%=request.getContextPath() %>/serviceUse/EDetail" class="text-reset" tabindex="-1">gsretail</a></td>
                    <td class="text-center">
                      	gs리테일
                    </td>
                    <td class="text-center">
                      	허연수
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- /form -->
          </div>
        </div>
        </div>
        </div>