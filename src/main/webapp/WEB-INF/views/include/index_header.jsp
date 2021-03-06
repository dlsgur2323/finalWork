<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Dashboard</title>
  <!-- CSS files -->
  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/tabler.min.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/tabler-flags.min.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/tabler-payments.min.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/tabler-vendors.min.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/demo.min.css" rel="stylesheet" />
  
  <link href="<%=request.getContextPath()%>/resources/css/jquery-ui.min.css" rel="stylesheet" />

  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/selectize/dist/css/selectize.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/flatpickr/dist/flatpickr.min.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/nouislider/distribute/nouislider.min.css" rel="stylesheet" />



  <style>
    .container-xl {
      max-width: 1620px;
    }

    .mingu * {
      transition: all 1s;
    }


    body {
      font-family: "Lato", sans-serif;
    }

    .sidenav {
      height: 100vh;
      width: 0;
      right: 0;
      position: fixed;
      top: 57px;
      padding-bottom: 56px;
      z-index: -1;
      background-color: white;
      overflow-x: hidden;
      transition: 0.5s;
    }

    .sidenav a {
      padding: 8px 8px 8px 32px;
      text-decoration: none;
      font-size: 25px;
      color: #818181;
      display: block;
      transition: 0.3s;
    }

    .sidenav a:hover {
      color: #f1f1f1;
    }


    @media screen and (max-height: 450px) {
      .sidenav {
        padding-top: 15px;
      }

      .sidenav a {
        font-size: 18px;
      }
      
    }
    .no-pad{
		padding : 0px;
	}
	.no-radius {
		border-radius: 0px;
	}
	.dialogDiv {
		display:none;
	}
	.ui-widget.ui-widget-content{
/*  		border : 0px solid black;  */
    	box-shadow: grey 1px 1px 3px -1px;
	}
	.ui-dialog-titlebar-close{
		border : 1px solid black;
		background : white;
	}
	.ui-widget-header{
/* 		border-bottom : 1px solid black; */
	}
  </style>

  <script>
    var flag = false;

    function openNav() {
      if (flag) {
        document.getElementById("mySidenav").style.width = "0px";

        flag = false;
      } else {

        document.getElementById("mySidenav").style.width = "250px";
        flag = true;
      }



    }
  </script>
</head>
<body class="antialiased sidebar-closed sidebar-collapse">
	<div class="page">
		<aside class="navbar navbar-vertical navbar-expand-lg navbar-light">
	      <div class="container-fluid">
	        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	        <h1 class="navbar-brand navbar-brand-autodark">
	          <a href="#">
	            AtoZ
	          </a>
	        </h1>
	        <div class="navbar-nav flex-row d-lg-none">
	          <div class="nav-item dropdown">
	            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
	              stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
	              <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	              <rect x="3" y="5" width="18" height="14" rx="2" />
	              <polyline points="3 7 12 13 21 7" /></svg>
	            <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown"
	              aria-label="Open user menu">
	              <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="28" height="28" viewBox="0 0 24 24"
	                stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
	                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	                <circle cx="12" cy="7" r="4" />
	                <path d="M6 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" /></svg>
	              <div class="d-none d-xl-block ps-2">
	                <div style="font-size: 8px;">장성보</div>
	                <div class="mt-1 small text-muted" style="font-size: 6px;">시스템 관리자</div>
	              </div>
	            </a>
	            <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
	              <a href="#" class="dropdown-item">Profile</a>
	              <a href="#" class="dropdown-item">Logout</a>
	            </div>
	          </div>
	        </div>
	        
	        <div class="collapse navbar-collapse" id="navbar-menu">
	
	          <ul class="navbar-nav pt-lg-3">
				 
				<c:forEach var="menu" items="${menuList }">
					<c:if test="${fn:contains(menu.mn_auth, mode) }">
					
		            <li class="nav-item dropdown">
		              <a class="nav-link dropdown-toggle"
		                 data-bs-toggle="dropdown" role="button" aria-expanded="false">
		                <span class="nav-link-icon d-md-none d-lg-inline-block">
		                <svg xmlns="http://www.w3.org/2000/svg"
		                    class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
		                    fill="none" stroke-linecap="round" stroke-linejoin="round">
		                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
		                    <path d="M1 4 3v4a1 1 0 0 0 1 1h4"></path>
		                    <path d="M17 21h-10a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v11a2 2 0 0 1 -2 2z"></path>
		                    <line x1="9" y1="9" x2="10" y2="9"></line>
		                    <line x1="9" y1="13" x2="15" y2="13"></line>
		                    <line x1="9" y1="17" x2="15" y2="17"></line>
		                  </svg>
		                </span>
		                <span class="nav-link-title">
		                  ${menu.mn_name }
		                </span>
		              </a>
		              <div class="dropdown-menu">
		                <div class="dropdown-menu-columns">
		                  <div class="dropdown-menu-column">
		                  
		                  	<c:forEach var="sub" items="${subList }">
		                  		<c:if test="${sub.up_code eq menu.mn_code }">
		                  			<c:if test="${fn:contains(sub.mn_auth, mode) }">
					                    <a class="dropdown-item" href="javascript:goPage('${sub.mn_code }','${sub.mn_url }','${sub.mn_name}')">${sub.mn_name }</a>
		                  			</c:if>
		                  		</c:if>
		                  	</c:forEach>
		                  	
		                  </div>
		                </div>
		              </div>
		            </li>
		            </c:if>
				</c:forEach>          
	            
	          </ul>
	        </div>
	      </div>
	    </aside>
	
	
	    <header class="navbar navbar-expand-md navbar-light d-none d-lg-flex d-print-none sticky-top">
	      <div class="container-xl">
	        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	
	        <div class="navbar-nav flex-row order-md-last">
	        	<div  style="margin-right : 20px;">
					<input type="button" value="시스템" <c:if test="${mode eq 'SY'}">disabled</c:if>  onclick="setMode('sys');" class="btn btn-light lh-1 " style="margin-top:5%;">
					<input type="button" value="기업" <c:if test="${mode eq 'CO'}">disabled</c:if>  onclick="setMode('com');" class="btn btn-light lh-1  " style="margin-top:5%;">
		          	<input type="button" value="물류" <c:if test="${mode eq 'WH'}">disabled</c:if> onclick="setMode('ware');" class="btn btn-light lh-1  " style="margin-top:5%;">
	        	</div>
	          <a href="#" class="nav-link d-flex lh-1 text-reset p-0">
	            <svg style="height: 30px; width: 30px;" xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
	              height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
	              stroke-linejoin="round">
	              <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	              <path
	                d="M5 4h4l2 5l-2.5 1.5a11 11 0 0 0 5 5l1.5 -2.5l5 2v4a2 2 0 0 1 -2 2a16 16 0 0 1 -15 -15a2 2 0 0 1 2 -2" />
	              <path d="M15 7a2 2 0 0 1 2 2" />
	              <path d="M15 3a6 6 0 0 1 6 6" /></svg>
	          </a>
	          <a style="margin: 0px 10px 0px 15px;" href="#" class="nav-link d-flex lh-1 text-reset p-0">
	            <svg style="height: 30px; width: 30px;" xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
	              height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
	              stroke-linejoin="round">
	              <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	              <rect x="3" y="5" width="18" height="14" rx="2" />
	              <polyline points="3 7 12 13 21 7" /></svg>
	          </a>
	          <div class="nav-item dropdown" style="margin-left: 3px;">
	            <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown"
	              aria-label="Open user menu">
	              <svg style="height: 30px; width: 30px;" xmlns="http://www.w3.org/2000/svg" class="icon" width="32"
	                height="32" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
	                stroke-linecap="round" stroke-linejoin="round">
	                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	                <circle cx="12" cy="7" r="4" />
	                <path d="M6 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" /></svg>
	              <div class="d-none d-xl-block ps-2" style="padding:0px 0px 0px 0px;">
	                <div style="font-size: 10px; font-weight: bold;">장성보</div>
	                <div style="font-size: 8px; font-weight: bold;" class="mt-1 small text-muted">시스템 관리자</div>
	              </div>
	            </a>
	            <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
	              <a href="#" class="dropdown-item">Profile</a>
	              <a href="#" class="dropdown-item">Logout</a>
	            </div>
	          </div>
	
	          <div id="mySidenav" class="sidenav">
	            <div style=" height:100%;width:100%;border-left: 1px solid #DCDCDD; z-index: -1;">
	              <div class="card" style="margin: 5px;">
	                <div class="card-body">
	                  <p>계약신청이 1건 있습니다.</p>
	                </div>
	              </div>
	            </div>
	
	          </div>
	
	          <a href="#" style="margin-left: 15px; font-size:30px;cursor:pointer;float:right; " onclick="openNav()"
	            class="nav-link d-flex lh-1 text-reset p-0">
	            <svg style="height: 33px; width: 33px;" xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
	              height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
	              stroke-linejoin="round">
	              <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	              <rect x="4" y="4" width="6" height="6" rx="1" />
	              <rect x="14" y="4" width="6" height="6" rx="1" />
	              <rect x="4" y="14" width="6" height="6" rx="1" />
	              <rect x="14" y="14" width="6" height="6" rx="1" /></svg>
	          </a>
	
	        </div>
	
	
	
	        <div class="collapse navbar-collapse" id="navbar-menu">
	          <div class="d-flex flex-column flex-md-row flex-fill align-items-stretch align-items-md-center">
	            <ul class="navbar-nav">
	              <li class="nav-item">
	                <a class="nav-link" href="">
	                  <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg"
	                      class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
	                      fill="none" stroke-linecap="round" stroke-linejoin="round">
	                      <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
	                      <polyline points="5 12 3 12 12 3 21 12 19 12"></polyline>
	                      <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7"></path>
	                      <path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6"></path>
	                    </svg>
	                  </span>
	                  <span class="nav-link-title">
	                    Home
	                  </span>
	                </a>
	              </li>
	            </ul>
	
	          </div>
	        </div>
	      </div>
	    </header>