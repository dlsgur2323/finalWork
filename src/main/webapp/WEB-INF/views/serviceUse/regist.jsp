<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 이메일, 전화번호, 가입신청시 경로 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<form action="serviceRegist.do" method="post">
              <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">서비스 이용신청</h5>
                  </div>
                  <div class="modal-body">
                    <div class="mb-3">
                      <label class="form-label">아이디</label>
                      <input type="text" class="form-control" name="example-text-input" placeholder="id">
                    </div>
                    <div class="mb-3">
                      <label class="form-label">비밀번호</label>
                      <input type="password" class="form-control" name="example-text-input" placeholder="password">
                    </div>
                    <label class="form-label">권한</label>
                    <div class="form-selectgroup-boxes row mb-3">
                      <div class="col-lg-4">
                        <label class="form-selectgroup-item">
                          <input type="radio" name="report-type" value="1" class="form-selectgroup-input" checked="">
                          <span class="form-selectgroup-label d-flex align-items-center p-3">
                            <span class="me-3">
                              <span class="form-selectgroup-check"></span>
                            </span>
                            <span class="form-selectgroup-label-content">
                              <span class="form-selectgroup-title strong mb-1">기업</span>

                            </span>
                          </span>
                        </label>
                      </div>
                      <div class="col-lg-4">
                        <label class="form-selectgroup-item">
                          <input type="radio" name="report-type" value="1" class="form-selectgroup-input">
                          <span class="form-selectgroup-label d-flex align-items-center p-3">
                            <span class="me-3">
                              <span class="form-selectgroup-check"></span>
                            </span>
                            <span class="form-selectgroup-label-content">
                              <span class="form-selectgroup-title strong mb-1">물류센터</span>

                            </span>
                          </span>
                        </label>
                      </div>
                      <div class="col-lg-4">
                        <label class="form-selectgroup-item">
                          <input type="radio" name="report-type" value="1" class="form-selectgroup-input">
                          <span class="form-selectgroup-label d-flex align-items-center p-3">
                            <span class="me-3">
                              <span class="form-selectgroup-check"></span>
                            </span>
                            <span class="form-selectgroup-label-content">
                              <span class="form-selectgroup-title strong mb-1">기업+물류센터</span>

                            </span>
                          </span>
                        </label>
                      </div>
                     
                    </div>
                    <div class="me-3">
                      <label class="form-label">기업명</label>
                      <input type="text" class="form-control" name="example-text-input" placeholder="기업명">
                    </div>
                    <div class="mb-3">
                      <label class="form-label">대표자명</label>
                      <input type="text" class="form-control" name="example-text-input" placeholder="대표자명">
                    </div>
                    <div class="mb-3">
                      <label class="form-label">이메일</label>
                      <input type="text" class="form-control" name="example-text-input" placeholder="대표자명">
                    </div>
                    <div class="mb-3">
                      <label class="form-label">사업자등록번호</label>
                      <input type="text" class="form-control" name="example-text-input" placeholder="사업자등록번호">
                    </div>
                    <div class="mb-3">
                    <label class="form-label">주소</label>
                      <input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호" style="width:300px; display:inline-block">
						<input type="button" class="btn btn-primary ms-auto" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="margin-bottom:1px">
						<input type="text"  class="form-control"id="sample4_roadAddress" placeholder="도로명주소" style="margin-top:3px">
<!-- 						<input type="text" id="sample4_jibunAddress" placeholder="지번주소"> -->
						<input type="text"  class="form-control"id="sample4_detailAddress" placeholder="상세주소" style="margin-top:3px">
<!-- 						<input type="text" id="sample4_extraAddress" placeholder="참고항목"> -->
                    </div>
                    <div class="mb-3">
                      <label class="form-label">전화번호</label>
                      <input type="text" class="form-control" name="example-text-input" placeholder="전화번호">
                    </div>
                    
                  </div>
                  
                  <div class="modal-footer">
                    <a href="<%=request.getContextPath() %>/common/indexPage" class="btn btn-link link-secondary" >
                      	취소
                    </a>
                    <a href="serviceRegist" class="btn btn-primary ms-auto" >
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                        <line x1="12" y1="5" x2="12" y2="19"></line>
                        <line x1="5" y1="12" x2="19" y2="12"></line>
                      </svg>
                     	가입신청
                    </a>
                  </div>
                </div>
              </div>
              </form>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
//                 document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
//                 // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
//                 if(roadAddr !== ''){
//                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
//                 } else {
//                     document.getElementById("sample4_extraAddress").value = '';
//                 }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } 
//                 else if(data.autoJibunAddress) {
//                     var expJibunAddr = data.autoJibunAddress;
//                     guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
//                     guideTextBox.style.display = 'block';
//                 } 
                else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
