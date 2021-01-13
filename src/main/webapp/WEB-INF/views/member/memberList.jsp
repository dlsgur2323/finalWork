<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	tr:hover{
		background-color:#f6f4fa;
	}
	.clickabletr{
		cursor: pointer;
	}
	tr{
		text-align:center;
	}
</style>
<c:set var="searchMap" value="${pageMaker.searchMap }"/>
<div class="container-xl">
	<div style="margin-bottom:2%;">
		<strong style="font-size:1.2rem;">회원 목록</strong>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<select class="form-select" id="searchType" style="display:inline-block; width:15%; display:inline;">
						<option value="" ${searchMap.get('searchType') eq '' ? 'selected' : '' }>검색 구분</option>
						<option value="cl_id" ${searchMap.get('searchType') eq 'cl_id' ? 'selected' : '' }>회원 아이디</option>
						<option value="cl_ceo" ${searchMap.get('searchType') eq 'cl_ceo' ? 'selected' : '' }>대표자명</option>
						<option value="cl_name" ${searchMap.get('searchType') eq 'cl_name' ? 'selected' : '' }>기업명</option>
						<option value="cl_regno" ${searchMap.get('searchType') eq 'cl_regno' ? 'selected' : '' }>사업자등록번호</option>
					</select>
					<input type="text" class="form-control" id="keyword" value="${searchMap.get('keyword') }" placeholder="Search for…" style="width:30%; display:inline;">
					<button class="btn btn-white btn-icon" aria-label="Button" style="display:inline;" onclick="search_go()">
						<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
							<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
							<circle cx="10" cy="10" r="7"></circle>
							<line x1="21" y1="21" x2="15" y2="15"></line>
						</svg>
					</button>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table card-table table-vcenter text-nowrap datatable">
							<thead>
								<tr>
									<th class="text-center">회원 아이디</th>
									<th class="text-center">대표자명</th>
									<th class="text-center">기업명</th>
									<th class="text-center">사업자등록번호</th>
									<th class="text-center">활성 여부</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty clientlist}">
										<tr>
											<td colspan="5">가입된 회원이 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="client" items="${clientlist }" varStatus="status">
											<tr class="clickabletr" onclick=
																			<c:choose>
																				<c:when test="${client.type_code eq 'CL001'}">"getCompanyDetail('${client.cl_id }')"</c:when>
																				<c:when test="${client.type_code eq 'CL002'}">"openDial($('#dialog2'),500,900)"</c:when>
																				<c:otherwise>"openDial($('#dialog3'),500,900)"</c:otherwise>
																			</c:choose>>
												<td>${client.cl_id }</td>
												<td>${client.cl_ceo }</td>
												<td>${client.cl_name }</td>
												<td>${client.cl_regno }</td>
												<td>
													<c:choose>
														<c:when test="${client.act_yn eq 1}">
															활성
														</c:when>
														<c:otherwise>
															비활성
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card-footer" style="background-color:white;text-align: right;">
					<%@ include file="/WEB-INF/views/common/pagination.jsp" %>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="dialog1" class="dialogDiv" title="기업회원 상세보기">
	<%@ include file="companyDetail.jsp" %>
</div>
<div id="dialog2" class="dialogDiv" title="물류센터회원 상세보기">
	<%@ include file="warehouseDetail.jsp" %>
</div>
<div id="dialog3" class="dialogDiv" title="기업/물류센터회원 상세보기">
	<%@ include file="comwareDetail.jsp" %>
</div>

<%@ include file="/WEB-INF/views/common/popupDial_js.jsp" %>
<script>
function search_go(){
	var data = {
			searchType : $("#searchType").val(),
			keyword : $("#keyword").val()
	}
	searchList_go(1,'${searchMap.url}',data);
}
function getCompanyDetail(cl_id) {
	$.ajax({
		url : '<%=request.getContextPath()%>/SY/member/companyDetail?cl_id='+cl_id,
		type:'get',
		success:function(res){
			$('#cl_id').html(res.cl_id);
			$('#cl_name').html(res.cl_name);
			$('#cl_ceo').html(res.cl_ceo);
			$('#cl_regno').html(res.cl_regno);
			$('#cl_email').html(res.cl_email);
			$('#cl_tel').html(res.cl_tel);
			$('#cl_addr').html(res.cl_addr.split(",")[1] + " " + res.cl_addr.split(",")[2])
			openDial($('#dialog1'),500,800);
		}
	});
}
</script>