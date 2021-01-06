<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<Style>
	body::-webkit-scrollbar { 
	    display: none; 
	}
	hr{
		margin: 1rem 0;
	}
</Style>
</head>
<body>
<div class="content">
	<div style="margin-left:2%; margin-bottom:2%;">
		<strong style="font-size:1.2rem;">OOOO 메인</strong>
	</div>
	
	<div class="row">
		<!-- 입고 위젯 -->
		<div class="col-1 card" style="text-align:center; margin-left:2%;">
			<div class="card-body">
				<p>금일 입고<br>예정 건수</p>
				<hr/>
				<p style="color:blue; font-weight:600; font-size:1.5rem;">5</p>
			</div>
		</div>
		<!-- 출고 위젯 -->
		<div class="col-1 card" style="text-align:center; margin-left:2%;">
			<div class="card-body">
				<p>금일 출고<br>예정 건수</p>
				<hr/>
				<p style="color:red; font-weight:600; font-size:1.5rem;">3</p>
			</div>
		</div>
		<!-- 스케줄 -->
		<div class="col-9 card" style="margin-left:2%;">
			<div class="card-body">
			</div>
		</div>
	</div>
	<div class="row" style="margin-top:3%;">
		<!-- 입고 예정 목록-->
		<div class="col-5 card" style="margin-left:2%;">
			<div class="card-header">입고 예정 목록</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table card-table table-vcenter text-nowrap datatable">
						<thead>
							<tr>
								<th class="text-center">규격 그룹 코드</th>
								<th class="text-center">규격 그룹명</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center"><a href="#">100</a></td>
								<td class="text-center"><a href="#">사이즈1</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 출고 예정 목록-->
		<div class="col-5 card" style="margin-left:2%;">
			<div class="card-header">출고 예정 목록</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table card-table table-vcenter text-nowrap datatable">
						<thead>
							<tr>
								<th class="text-center">규격 그룹 코드</th>
								<th class="text-center">규격 그룹명</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center"><a href="#">100</a></td>
								<td class="text-center"><a href="#">사이즈1</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>