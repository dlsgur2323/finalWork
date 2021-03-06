<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<Style>
 	body::-webkit-scrollbar {  
 	    display: none;  
 	} 
	#calendar, #calendar1{
		margin: 0 auto;
	    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    	font-size: 14px;
	}
</Style>
	<div class="container-xl">
		
		<div class="row">
			<div class="col-3">
				<div class="card">
					<div class="card-body">
						<p>금일 입고 예정 건 수</p>
						<span class="bg-blue text-white avatar">
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="7" cy="17" r="2" /><circle cx="17" cy="17" r="2" /><path d="M5 17h-2v-11a1 1 0 0 1 1 -1h9v12m-4 0h6m4 0h2v-6h-8m0 -5h5l3 5" /><path d="M6 10h4m-2 -2v4" /></svg>
						</span>
						<p style="float:right; font-size:1.5rem;">${cot }건</p>
					</div>
				</div>
			</div>
			<div class="col-3">
				<div class="card">
					<div class="card-body">
						<p>금일 출고 예정 건 수</p>
						<span class="bg-red text-white avatar">
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="7" cy="17" r="2" /><circle cx="17" cy="17" r="2" /><path d="M5 17h-2v-4m-1 -8h11v12m-4 0h6m4 0h2v-6h-8m0 -5h5l3 5" /><line x1="3" y1="9" x2="7" y2="9" /></svg>
						</span> 
						<p style="float:right; font-size:1.5rem;">${crt }건</p>
					</div>
				</div>
			</div>
			<div class="col-3">
				<div class="card">
					<div class="card-body">
						<p>계약중인 물류센터 수</p>
						<span class="bg-green text-white avatar">
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="9" cy="7" r="4" /><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" /><path d="M16 3.13a4 4 0 0 1 0 7.75" /><path d="M21 21v-2a4 4 0 0 0 -3 -3.85" /></svg>
						</span> 
						<p style="float:right; font-size:1.5rem;">${ctc }건</p>
					</div>
				</div>
			</div>
			<div class="col-3">
				<div class="card">
					<div class="card-body">
						<p>확인하지 않은 쪽지</p>
						<span class="bg-yellow text-white avatar">
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 20l1.3 -3.9a9 8 0 1 1 3.4 2.9l-4.7 1" /><line x1="12" y1="12" x2="12" y2="12.01" /><line x1="8" y1="12" x2="8" y2="12.01" /><line x1="16" y1="12" x2="16" y2="12.01" /></svg>
						</span> 
						<p style="float:right; font-size:1.5rem;">${cmn }건</p>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<div class="row" style="margin-top:2%;">
			<div class="col-6">
				<div class="card">
					<div class="card-header">입고 스케줄</div>
					<div class="card-body" id="calendar" style="width:100%;"></div>
				</div>
			</div>
			<div class="col-6">
				<div class="card">
					<div class="card-header">출고 스케줄</div>
					<div class="card-body" id="calendar1" style="width:100%;"></div>
				</div>
			</div>
		</div>
		
		
		
		
		<div class="row" style="margin-top:2%;">
			<!-- 입고 예정 목록-->
			<div class="col-6">
				<div class="card">
					<div class="card-header">입고 예정 목록</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table card-table table-vcenter text-nowrap datatable">
								<thead>
									<tr>
										<th class="text-center">보내는 곳</th>
										<th class="text-center">받는 물류센터명</th>
										<th class="text-center">물류센터 담당자명</th>
										<th class="text-center">발주 담당자명</th>
										<th class="text-center">발주 신청일</th>
										<th class="text-center">납품일</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${empty receivelist}">
											<tr>
												<td colspan="6" style="text-align:center">금일 입고 예정이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="receive" items="${receivelist }" varStatus="status">
												<tr>
													<td>${receive.sender }</td>
													<td>${receive.cl_name }</td>
													<td>${receive.wh_mngr }</td>
													<td>${receive.ord_mngr }</td>
													<td>${receive.req_ymd }</td>
													<td>${receive.deli_ymd }</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- 출고 예정 목록-->
			<div class="col-6">
				<div class="card">
					<div class="card-header">출고 예정 목록</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table card-table table-vcenter text-nowrap datatable">
								<thead>
									<tr>
										<th class="text-center">보내는 곳</th>
										<th class="text-center">목적지명</th>
										<th class="text-center">담당직원명</th>
										<th class="text-center">출고일자</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${empty releaselist }">
											<tr>
												<td colspan="4" style="text-align:center">금일 출고 예정이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="release" items="${releaselist }" varStatus="status">
												<tr>
													<td>${release.cl_name }</td>
													<td>${release.dst_name }</td>
													<td>${release.emp_id }</td>
													<td>${release.rls_ymd }</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialDate: new Date(),
      locale:'ko',
      selectable: true,
      businessHours: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: {
//     	  url : 'dashboard/orderSchedule?cl_code='+${loginUser.cl_code}
      }
    });
    var calendarEl1 = document.getElementById('calendar1');
    var calendar1 = new FullCalendar.Calendar(calendarEl1, {
   	    initialView: 'listWeek',
   		locale:'ko',
   	    initialDate: new Date(),
   	    navLinks: true, // can click day/week names to navigate views
   	    dayMaxEvents: true, // allow "more" link when too many events
	   	events: {
//     	  url : 'dashboard/releaseSchedule?cl_code='+${loginUser.cl_code}
	   	}
    });

    calendar.render();
    calendar1.render();
  
</script>