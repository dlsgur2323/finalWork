<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<c:set var="rlsReqNum" value="${dataMap.widgetNums.rlsReqNum}"/>
<c:set var="inReqNum" value="${dataMap.widgetNums.inReqNum}"/>
<c:set var="inPlanNum" value="${dataMap.widgetNums.inPlanNum}"/>
<c:set var="outPlanNum" value="${dataMap.widgetNums.outPlanNum}"/>
<c:set var="emplist" value="${dataMap.empList }"/>
 
<style>
	.wgrow{
	    padding: 10px 0px 0px 50px;
	}
	.wgheader{
		padding: 0px 50px;
	}
	.wgcol{
		padding-left : 80px;
	}
	.dashrow{
		margin-top : 10px;
	}
	.emprow{
		padding-left : 35%;
	}
	.prgbar{
		margin-top : 8px;
		width : 80%;
	}
</style>

<div class="container-xl">
 <div class="row row-deck row-cards">
            <div class="col-sm-6 col-lg-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div class="header wgheader">입고승인요청</div>
                  </div>
                  <div class="row wgrow">
                       <div class="col-auto">
                          <span class="bg-yellow text-white avatar">
							<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-bell-ringing" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
							  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
							  <path d="M10 5a2 2 0 0 1 4 0a7 7 0 0 1 4 6v3a4 4 0 0 0 2 3h-16a4 4 0 0 0 2 -3v-3a7 7 0 0 1 4 -6" />
							  <path d="M9 17v1a3 3 0 0 0 6 0v-1" />
							  <path d="M21 6.727a11.05 11.05 0 0 0 -2.794 -3.727" />
							  <path d="M3 6.727a11.05 11.05 0 0 1 2.792 -3.727" />
							</svg>
                          </span>                          
                        </div>
                        <div class="col wgcol"> 
                        <div class="h1 mb-3">
                            <strong>${inReqNum}</strong>&nbsp;건
                          </div>
                        </div>
                  </div>
                </div>
              </div>
            </div>           
            <div class="col-sm-6 col-lg-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div class="header wgheader">출고승인요청</div>
                  </div>
                  <div class="row wgrow">
                       <div class="col-auto">
                          <span class="bg-purple text-white avatar">
                          	<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-bell-ringing" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
							  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
							  <path d="M10 5a2 2 0 0 1 4 0a7 7 0 0 1 4 6v3a4 4 0 0 0 2 3h-16a4 4 0 0 0 2 -3v-3a7 7 0 0 1 4 -6" />
							  <path d="M9 17v1a3 3 0 0 0 6 0v-1" />
							  <path d="M21 6.727a11.05 11.05 0 0 0 -2.794 -3.727" />
							  <path d="M3 6.727a11.05 11.05 0 0 1 2.792 -3.727" />
							</svg>
                          </span>                                                   
                        </div>
                        <div class="col wgcol"> 
                        <div class="h1 mb-3">
                            <strong>${rlsReqNum}</strong>&nbsp;건
                          </div>
                        </div>
                  </div>
                </div>
              </div>
            </div>           
            <div class="col-sm-6 col-lg-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div class="header wgheader">금일입고예정</div>
                  </div>
                  <div class="row wgrow">
                       <div class="col-auto">
							<span class="bg-green text-white avatar">
		         				<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-building-warehouse" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
								  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
								  <path d="M3 21v-13l9 -4l9 4v13" />
								  <path d="M13 13h4v8h-10v-6h6" />
								  <path d="M13 21v-9a1 1 0 0 0 -1 -1h-2a1 1 0 0 0 -1 1v3" />
								</svg>
					 		</span>                          
                        </div>
                        <div class="col wgcol"> 
                        <div class="h1 mb-3">
                            <strong>${inPlanNum}</strong>&nbsp;건
                          </div>
                        </div>
                  </div>
                </div>
              </div>
            </div>           
            <div class="col-sm-6 col-lg-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div class="header wgheader">금일출고예정</div>
                  </div>
                  <div class="row wgrow">
                       <div class="col-auto">
                          <span class="bg-blue text-white avatar">
							<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-truck-delivery" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
							  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
							  <circle cx="7" cy="17" r="2" />
							  <circle cx="17" cy="17" r="2" />
							  <path d="M5 17h-2v-4m-1 -8h11v12m-4 0h6m4 0h2v-6h-8m0 -5h5l3 5" />
							  <line x1="3" y1="9" x2="7" y2="9" />
							</svg>
                          </span>                          
                        </div>
                        <div class="col wgcol"> 
                        <div class="h1 mb-3">
                            <strong>${outPlanNum}</strong>&nbsp;건
                        </div>
                        </div>
                  </div>
                </div>
              </div>
            </div>           
 	</div>
	<div class="row row-deck row-cards dashrow">
		<div class="col-lg-6">
			<div class="card">
				<div class="card-body">
					<img src="<%=request.getContextPath()%>/resources/images/temp.jpg"
						alt="임시그림">
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="card">
				<div class="card-header">
					<div class="card-title"
						style="padding-left: 40%; font-weight: bold; font-size: 1.5em;">금일
						근무자 현황</div>
				</div>
				<div class="table-responsive" id="emptbl">
					<table class="table table-vcenter table-mobile-md card-table"
						id="emptable">
						<thead>
							<tr>
								<th>Name</th>
								<th>Title</th>
								<th>Role</th>
							</tr>
						</thead>
						<tbody id="emptbody">
						<c:forEach var="emp" items="${emplist }">						
							<tr class="emptr">
								<td data-label="Name" style="width:350px;">
									<div class="d-flex py-1 align-items-center">
										<span class="avatar me-2"
											style="background-image: url(./static/avatars/010m.jpg)"></span>
										<div class="flex-fill">
											<div class="font-weight-medium">${emp.emp_name }&nbsp;(${emp.emp_phone })</div>
											<div class="progress progress-sm prgbar">
												<div class="progress-bar" style="" role="progressbar"
													aria-valuenow="" aria-valuemin="0"
													aria-valuemax="120" id="prgrsbar">
												</div>																	
												<script>
												prgset();												
												function prgset(){
													var workdate = '${emp.work_date}';
													console.log(workdate);
													var now = new Date().getTime();
													console.log(now); 
													var worktime = new Date(workdate).getTime();
													console.log(worktime); 
													
													var ttime = now - worktime;
													ttime = ttime / 1000 / 60 / 60; 
													var tpcnt = (ttime / 8) * 100;
													tpcnt = tpcnt.toFixed(2);
													console.log(ttime);
													if(ttime < 1){
														$('#prgrsbar').css('width','0%');
														$('#prgrsbar').attr('aria-valuenow','0%');
													}else{
														let pixset = ttime * 15;
														$('#prgrsbar').css('width',tpcnt+"%");
														$('#prgrsbar').attr('aria-valuenow',tpcnt);
													}
												}
												</script>
											</div>
										</div>
									</div>
								</td>
								<td data-label="Title">
									<div>${emp.emp_job}</div>
									<div class="text-muted">${emp.dept_name}</div>
								</td>
								<td class="text-muted" data-label="Role">${emp.rnk_name}</td>								
							</tr>
							</c:forEach>
						</tbody>						
					</table>
					<hr>
				</div>
			</div>
		</div>
	</div>
</div>
