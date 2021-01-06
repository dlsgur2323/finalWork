<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                            <strong>3</strong>&nbsp;건
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
                            <strong>3</strong>&nbsp;건
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
                            <strong>3</strong>&nbsp;건
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
                            <strong>3</strong>&nbsp;건
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
	                <img src="<%=request.getContextPath()%>/resources/images/temp.jpg" alt="임시그림">
	 				</div>
	 			</div>
	 	</div>
	 	 <div class="col-lg-6">
	              <div class="card">
	                <!-- <div class="card-header">
	                	<div class="card-title" style="padding-left:40%;font-weight:bold;font-size:1.5em;">금일 근무자 현황</div>
	 				</div>
	                <div class="card-body">
	                   <div class="h2 emprow" style="display:inline-block;">
                            	총책임자 :&nbsp;&nbsp;<input type="text" class="form-control" value="홍길동" readonly="" style="width: 150px; text-align: center; display:inline; font-size:1.1em;">
                        </div>
	                   <div class="h2 emprow" style="display:inline-block;">
                            	입고담당자 :&nbsp;&nbsp;<input type="text" class="form-control" value="강감찬" readonly="" style="width: 150px; text-align: center; display:inline; font-size:1.1em;">
                        </div>
	                   <div class="h2 emprow" style="display:inline-block;">
                            	출고담당자 :&nbsp;&nbsp;<input type="text" class="form-control" value="일지매" readonly="" style="width: 150px; text-align: center; display:inline; font-size:1.1em;">
                        </div>                	
	 				</div> -->
	 				<div class="card-header">
	                	<div class="card-title" style="padding-left:40%;font-weight:bold;font-size:1.5em;">금일 근무자 현황</div>
	 				</div>
	 				<div class="table-responsive">
	 				<table class="table table-vcenter table-mobile-md card-table">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>Title</th>
                        <th>Role</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td data-label="Name">
                          <div class="d-flex py-1 align-items-center">
                            <span class="avatar me-2" style="background-image: url(./static/avatars/010m.jpg)"></span>
                            <div class="flex-fill">
                              <div class="font-weight-medium">홍길동</div>
                              <div class="text-muted"><a href="#" class="text-reset">hong@whs.com</a></div>
                            </div>
                          </div>
                        </td>
                        <td data-label="Title">
                          <div>물류센터 관리</div>
                          <div class="text-muted">관리부</div>
                        </td>
                        <td class="text-muted" data-label="Role">
                          	총책임자
                        </td>
                      </tr>
                      <tr>
                        <td data-label="Name">
                          <div class="d-flex py-1 align-items-center">
                            <span class="avatar me-2" style="background-image: url(./static/avatars/010m.jpg)"></span>
                            <div class="flex-fill">
                              <div class="font-weight-medium">강감찬</div>
                              <div class="text-muted"><a href="#" class="text-reset">kangf@whs.com</a></div>
                            </div>
                          </div>
                        </td>
                        <td data-label="Title">
                          <div>입출고 관리</div>
                          <div class="text-muted">물류부</div>
                        </td>
                        <td class="text-muted" data-label="Role">
                          	담당자
                        </td>
                      </tr>
                      <tr>
                        <td data-label="Name">
                          <div class="d-flex py-1 align-items-center">
                            <span class="avatar me-2" style="background-image: url(./static/avatars/010m.jpg)"></span>
                            <div class="flex-fill">
                              <div class="font-weight-medium">일지매</div>
                              <div class="text-muted"><a href="#" class="text-reset">one@whs.com</a></div>
                            </div>
                          </div>
                        </td>
                        <td data-label="Title">
                          <div>지게차</div>
                          <div class="text-muted">설비부</div>
                        </td>
                        <td class="text-muted" data-label="Role">
                          	담당자
                        </td>
                      </tr>
                                             
                    </tbody>
                  </table>
                  </div>
	 			</div>
	 	</div>
 	</div>

 </div>
