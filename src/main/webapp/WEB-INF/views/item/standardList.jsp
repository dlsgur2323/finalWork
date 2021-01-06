<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
<div style="margin:4% 0% 2% 5%;">
	<strong style="font-size:1.2rem;">규격 정보 목록</strong>
</div>

<div class="card" style="margin: 0% 2% 0% 2%;">
	<div class="card-header" style="text-align:right; display:inline-block;">
		<select class="form-select" style="display:inline-block; width:40%;">
			<option>규격 그룹 코드</option>
			<option>규격 그룹 명</option>
		</select>
		<input type="text" class="form-control" placeholder="Search for…" style="width:30%; display:inline-block;">
		<a href="#" class="btn btn-white btn-icon" aria-label="Button">
			<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
				<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
				<circle cx="10" cy="10" r="7"></circle>
				<line x1="21" y1="21" x2="15" y2="15"></line>
			</svg>
		</a>
	</div>
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

<div style="margin-top:2%; margin-left:5%;">
<input type="button" class="btn btn-white" id="registBtn" value="신규"/>
<input type="button" class="btn btn-white" id="cancelBtn" value="취소"/>
</div>
<script>
	window.onload=function(){
		
	}
</script>