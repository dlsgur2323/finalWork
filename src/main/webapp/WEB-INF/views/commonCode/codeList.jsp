<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<style>
		.clickableTr{
			cursor: pointer;
		}
		.clickableTr:hover{
			background : rgb(241,244,249);
		}
	</style>
	
		<div class="container-xl">
			
			<!-- 콘텐츠 헤더 -->
			<div class="page-header d-print-none">
				<div class="row align-items-center">	
					<div class="col">
						<h2 class="page-title">
							공통코드 관리
						</h2>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="card col-3">
					<div class="card-header">
						공통코드 유형
					</div>
					<div class="card-body">
						<div class="table-responsive" style="max-height:380px;">
							<table class="table card-table table-vcenter text-nowrap datatable">
								<thead>
									<tr>
										<th class="text-center"><input type="checkbox" onclick="checkAll('type',this);" id="typeAllCheck"></th>
										<th class="text-center">유형 코드</th>
										<th class="text-center">유 형 명</th>
										<th class="text-center">사용여부</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${typeList }" var="type" varStatus="status">
										<c:if test="${status.first}">
											<c:set value="${type.type_code}" var="first_code" />
											<c:set value="${type.type_name }" var="first_name" />
										</c:if>
									<tr class="clickableTr" onclick="setType('${type.type_code}','${type.type_name }')">
										<td class="text-center"><input name="type" value="${type.type_code },${type.type_name},${type.act_yn}"
												onclick="if($('#typeAllCheck').prop('checked')){$('#typeAllCheck').prop('checked',false);}" type="checkbox"></td>
										<td class="text-center">${type.type_code }</td>
										<td class="text-center">${type.type_name }</td>
										<td class="text-center">${type.act_yn eq 1 ? '사용중' : '사용중지' }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /table-responsive -->
					</div>
					<!-- /card-body -->
					<div class="card-footer" style="background : white;">
						<input type="button" class="btn btn-light" onclick="openDial($('#dialog1'), 550, 320);" value="신규">
						<input type="button" class="btn btn-light" onclick="typeModifyForm();" value="수정">
					</div>
					<!-- /card-footer -->
				</div>
				<!-- /card col-6 -->
				<div class="col-1"></div>
				<div class="card col-3">
					<div class="card-header">
						<div class="col-6">공통코드</div>
					</div>
					<div class="card-body">
						<div class="row" style="margin-bottom:10px;">
							<div class="col-3 text-center" id="typeCode"></div>│&nbsp;&nbsp;
							<div class="col-4" id="typeName"></div>
						</div>
						<div class="table-responsive" style="height:350px;">
							
							<table class="table card-table table-vcenter text-nowrap datatable">
								<thead>
									<tr>
										<th class="text-center"><input type="checkbox" onclick="checkAll('code',this);" id="codeAllCheck"></th>
										<th class="text-center">코드</th>
										<th class="text-center">코 드 명</th>
										<th class="text-center">사용여부</th>
									</tr>
								</thead>
								<tbody id="codeTable">
								
								</tbody>
							</table>
						</div><!-- /table-responsive -->
					</div>
					<!-- /card-body -->
					<div class="card-footer" style="background : white;">
						<input type="button" id="dialbtn" onclick="openDial($('#dialog2'),550,370);" class="btn btn-light" value="신규">
						<input type="button" class="btn btn-light" onclick="codeModifyForm();" value="수정">
					</div>
					<!-- /card-footer -->
				</div>
				<!-- /card col-6 -->
			</div>
			<!-- /row -->
			
			
		</div><!-- /container-xl -->
		
		
		<div id="dialog1" class="dialogDiv" title="공통코드 유형 등록">
			<div class="container-xl" style="width:500px; height:200px;">
		    	<!-- 콘텐츠 헤더 -->
				<div class="page-header d-print-none">
					<div class="row align-items-center">	
						<div class="col">
							<h2 class="page-title">
								공통코드 유형 등록
							</h2>
						</div>
					</div>
				</div>
				<div class="card col-12">
					<div class="card-body">
						<table class="table card-table table-vcenter">
							<tr>
								<td class="text-center">유형 코드</td>
								<td><input type="text" id="regTypeCode" maxlength="5" onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎ가-힣ㅏ-ㅣ]/g, &#39;&#39;);"  class="form-control" placeholder="ex) 10"></td>
							</tr>
							<tr>
								<td class="text-center">유 형 명</td>
								<td><input type="text" id="regTypeName" maxlength="8" onkeyup="this.value=this.value.replace(/[\a-zA-Z0-9]/g, &#39;&#39;);" class="form-control" placeholder="ex) 취급 품목 유형"></td>
							</tr>
						</table>
					</div>
					<!-- card-body -->
				</div>
				<!-- /card col-12 -->
				<div class="row" style="margin-top : 10px;">
					<div class="col-2">
						<input type="button" class="btn btn-white" onclick="registType();" value="저장">
					</div>
					<div class="col-2" >
						<input type="button" class="btn btn-white" onclick="resetDial($('#dialog1'))" value="초기화">
					</div>
					<div class="col-2" >
						<input type="button" class="btn btn-white" onclick="closeDial($('#dialog1'))" value="취소">
					</div>
				</div>
					
		    </div>
		</div>
		
		<div id="dialog2" class="dialogDiv" title="공통코드 등록">
			<div class="container-xl" style="width:500px; height:200px;">
	    	<!-- 콘텐츠 헤더 -->
				<div class="page-header d-print-none">
					<div class="row align-items-center">	
						<div class="col">
							<h2 class="page-title">
								공통코드 유형 등록
							</h2>
						</div>
					</div>
				</div>
				<div class="card col-12">
					<div class="card-body">
						<table class="table card-table table-vcenter">
							<tr>
								<td class="text-center">유형 코드</td>
								<td><input type="text" id="regType" class="form-control" readonly onclick="openDial($('#dialog3'), 400,600);" placeholder="ex) 10"></td>
							</tr>
							<tr>
								<td class="text-center">코 드</td>
								<td><input type="text" id="regCode" class="form-control" maxlength="5" onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎ가-힣ㅏ-ㅣ]/g, &#39;&#39;);" placeholder="ex) 101"></td>
							</tr>
							<tr>
								<td class="text-center">코 드 명</td>
								<td><input type="text" id="regName" class="form-control" maxlength="8" placeholder="ex) 일반"></td>
							</tr>
						</table>
					</div>
					<!-- card-body -->
				</div>
				<!-- /card col-12 -->
				<div class="row" style="margin-top : 10px;">
					<div class="col-2">
						<input type="button" class="btn btn-white" onclick="registCode();" value="저장">
					</div>
					<div class="col-2" >
						<input type="button" class="btn btn-white" onclick="resetDial($('#dialog2'))" value="초기화">
					</div>
					<div class="col-2" >
						<input type="button" class="btn btn-white" onclick="closeDial($('#dialog2'))" value="취소">
					</div>
				</div>
				
	    	</div>
		</div>
		
		<div id="dialog3" class="dialogDiv" title="공통코드 유형 검색">
			<%@ include file="codeSearch.jsp" %>	
		</div>
		
		<div id="dialog4" class="dialogDiv" title="공통코드 수정">
			<%@ include file="codeModify.jsp" %>	
		</div>
		
		<div id="dialog5" class="dialogDiv" title="공통코드 유형 수정">
			<%@ include file="codeCaseModify.jsp" %>	
		</div>
		
		
	<%@ include file="/WEB-INF/views/common/popupDial_js.jsp" %>
	
	
	<script type="text/x-handlebars-template"  id="code-list-template" >
	{{#each .}}
		<tr>
			<td class="text-center"><input name="code" value="{{type_code}},{{cm_code}},{{cm_name}},{{act_yn}}" 
					onclick="if($('#codeAllCheck').prop('checked')){$('#codeAllCheck').prop('checked',false);}" type="checkbox"></td>
			<td class="text-center">{{cm_code}}</td>
			<td class="text-center">{{cm_name}}</td>
			<td class="text-center">{{parseYn act_yn}}</td>
		</tr>
	{{/each}}
	</script>
	
	<script type="text/x-handlebars-template"  id="code-modify-template" >
	{{#each .}}
		<tr>
			<td class="text-center"><input name="modifyCodeCheck" value="{{code}},{{type}}"
						onclick="if($('#modifyCodeAllCheck').prop('checked')){$('#modifyCodeAllCheck').prop('checked',false);}" type="checkbox"></td>
			<td class="text-center">{{type}}</td>
			<td class="text-center">{{code}}</td>
			<td class="text-center"><input type="text" style="height:30px;" class="form-control" value="{{name}}"></td>
			<td class="text-center">
				<select id="modifyCodeAct">
					<option {{selectYn act_yn 1}} value="1">사용중</option>
					<option {{selectYn act_yn 0}} value="0">사용정지</option>
				</select>
			</td>
		</tr>
	{{/each}}
	</script>
	
	<script type="text/x-handlebars-template"  id="type-modify-template" >
	{{#each .}}
		<tr>
			<td class="text-center"><input name="modifyTypeCheck" value="{{type}}"
						onclick="if($('#modifyTypeAllCheck').prop('checked')){$('#modifyTypeAllCheck').prop('checked',false);}" type="checkbox"></td>
			<td class="text-center">{{type}}</td>
			<td class="text-center"><input name="modifyTypeName" type="text" style="height:30px;" class="form-control" value="{{name}}"></td>
			<td class="text-center">
				<select id="modifyTypeAct">
					<option {{selectYn act_yn 1}} value="1">사용중</option>
					<option {{selectYn act_yn 0}} value="0">사용정지</option>
				</select>
			</td>
		</tr>
	{{/each}}
	</script>
	
	<script>
	
		Handlebars.registerHelper({
			"parseYn":function(act_yn){
				var str = "";
				if(act_yn == 1){
					str = "사용중";
				} else {
					str = "사용중지";
				}
				return str;
			},
			"selectYn" : function(act_yn, value){
				console.log(act_yn + ", " + value);
				var str = "";
				if(act_yn == value){
					str = "selected";
				}
				return str;
			}
		});
			
		
		function checkAll(name,target){
			if($(target).prop("checked")){
				$("input[name='"+name+"']").prop("checked", true);
			} else {
				$("input[name='"+name+"']").prop("checked", false);
			}
		}
		
		
		function setType(type_code, type_name){
			document.getElementById("typeCode").innerHTML = type_code;
			document.getElementById("typeName").innerHTML = type_name;
			
			
			getPage("<%=request.getContextPath()%>/SY/coCode/codeList?type="+type_code);
		}

		function setSearchType(type_code){
			regType.value = type_code;
			closeDial($('#dialog3'));
		}
		function getPage(pageInfo){	 
			$.getJSON(pageInfo,function(data){
				console.log(data);
				printData(data,$('#codeTable'),$('#code-list-template'));
			});
		}
		
		
		var printData = function(Arr,target,templateObject){
			var template = Handlebars.compile(templateObject.html());
			var html = template(Arr);
			$(target).html(html);
		}
		
		function codeModifyForm(){
			var checkbox = document.querySelectorAll('input[name="code"]');
			var str = [];
			var cnt = 0;
			for(check of checkbox){
				if($(check).prop("checked")){
					cnt += 1;
					var val = check.value;
					var arr = val.split(",");
					var jack = {type : arr[0], code : arr[1], name : arr[2], act_yn : arr[3]};
					str.push(jack);
				}
			};
			if(cnt > 0){
				openDial($('#dialog4'),550,620);
				printData(str, $('#codeModifyDiv'),$('#code-modify-template'));
			} else {
				alert("선택된 대상이 없습니다.")
			}
			
		}
		
		function typeModifyForm(){
			var checkbox = document.querySelectorAll('input[name="type"]');
			var str = [];
			var cnt = 0;
			for(check of checkbox){
				if($(check).prop("checked")){
					cnt += 1;
					var val = check.value;
					var arr = val.split(",");
					var jack = {type : arr[0], name : arr[1], act_yn : arr[2]};
					str.push(jack);
				}
			};
			if(cnt > 0){
				openDial($('#dialog5'),550,620);
				printData(str, $('#typeModifyDiv'),$('#type-modify-template'));
			} else {
				alert("선택된 대상이 없습니다.");
			}
			
		}
		
		function registType(){
			var re1 = /^[a-zA-Z0-9]{5}$/;
			var re2 = /^[가-힣]{1,8}$/;
			
			var type_code = $("#regTypeCode").val();
			var type_name = $("#regTypeName").val();
			
			if(type_code == null || type_code == ""){
				alert("유형코드를 입력하세요.");
				return;
			}
			if(!re1.test(type_code)){
				alert("유형 코드는 5 글자의 영문자와 숫자만 허용됩니다.");
				return;
			}
			
			if(type_name == null || type_name == ""){
				alert("유형코드 이름을 입력하세요.");
				return;
			}
			if(!re2.test(type_name)){
				alert("유형코드 이름은 1~8 글자의 한글만 허용됩니다.");
				return;
			}
			
			$.ajax({
				url : "<%=request.getContextPath()%>/SY/coCode/registCodeType",
				type : "post",
				data : {type_code : type_code.toUpperCase(), type_name : type_name},
				success : function(){
					window.location.reload();
				},
				error : function(e){
					if(e.status == 400){
						alert("중복된 유형코드 또는 중복된 유형코드명이 존재합니다.")
					} else {
						alert("서버 내부 오류 입니다. 잠시 후 다시 시도해주세요.")
					}
				}
			});
			
		}
		
		function registCode(){
			var re1 = /^[a-zA-Z0-9]{5}$/;
			var re2 = /^[가-힣]{1,8}$/;
			
			var type_code = $("#regType").val();
			var cm_code = $("#regCode").val();
			var cm_name = $("#regName").val();
			
			if(type_code == null || type_code == ""){
				alert("유형코드를 선택하세요.");
				return;
			}
			
			if(!re1.test(cm_code)){
				alert("코드는 5 글자의 영문자와 숫자만 허용됩니다.");
				return;
			}
			
			if(cm_name == null || cm_name == ""){
				alert("코드명을 입력하세요.");
				return;
			}
			
			$.ajax({
				url : "<%=request.getContextPath()%>/SY/coCode/registCode",
				type : "post",
				data : {type_code : type_code, cm_code : cm_code.toUpperCase() , cm_name : cm_name},
				success : function(){
					window.location.reload();
				},
				error : function(e){
					if(e.status == 400){
						alert("중복된 코드 또는 중복된 코드명이 존재합니다.")
					} else {
						alert("서버 내부 오류 입니다. 잠시 후 다시 시도해주세요.")
					}
				}
			});
			
		}
		
		function modifyType(){
			var checkbox = document.querySelectorAll('input[name="modifyTypeCheck"]');
			var str = [];
			var cnt = 0;
			for(check of checkbox){
				if($(check).prop("checked")){
					cnt += 1;
					var name = $(check).parents('tr').find("input[type='text']").val();
					var act = $(check).parents('tr').find("select").val();
					
					var code = check.value;
					
					var re2 = /^[가-힣]{1,8}$/;
					
					if(name == null || name == ""){
						alert("유형코드 이름을 입력하세요.");
						return;
					}
					if(!re2.test(name)){
						alert("유형코드 이름은 1~8 글자의 한글만 허용됩니다.");
						return;
					}
					
					var jack = {type_code : code, type_name : name, act_yn : act};
					str.push(jack);
				}
			};
			if(cnt > 0){
				$.ajax({
					url : "<%=request.getContextPath()%>/SY/coCode/modifyCodeType",
					type : "post",
					data : {codeList : JSON.stringify(str)},
					success : function(){
						window.location.reload();
					},
					error : function(e){
						if(e.status == 400){
							alert("중복된 코드 또는 중복된 코드명이 존재합니다.")
						} else {
							alert("서버 내부 오류 입니다. 잠시 후 다시 시도해주세요.")
						}
					}
				});
				
			} else {
				alert("선택된 대상이 없습니다.");
			}
			
		}
		
		function modifyCode(){
			var checkbox = document.querySelectorAll('input[name="modifyCodeCheck"]');
			var str = [];
			var cnt = 0;
			for(check of checkbox){
				if($(check).prop("checked")){
					cnt += 1;
					var name = $(check).parents('tr').find("input[type='text']").val();
					var act = $(check).parents('tr').find("select").val();
					
					var chArr = check.value.split(",");
					
					var code = chArr[0];
					var type_code = chArr[1];
					
					if(name == null || name == ""){
						alert("코드명을 입력하세요.");
						return;
					}
					
					if(name.length > 8){
						alert("코드명은 1~8 글자의 한글만 허용됩니다.");
						return;
					}
					
					
					var jack = {type_code : type_code, cm_code : code, cm_name : name, act_yn : act};
					str.push(jack);
				}
			};
			if(cnt > 0){
				$.ajax({
					url : "<%=request.getContextPath()%>/SY/coCode/modifyCode",
					type : "post",
					data : {codeList : JSON.stringify(str)},
					success : function(){
						window.location.reload();
					},
					error : function(e){
						if(e.status == 400){
							alert("중복된 코드 또는 중복된 코드명이 존재합니다.")
						} else {
							alert("서버 내부 오류 입니다. 잠시 후 다시 시도해주세요.")
						}
					}
				});
				
			} else {
				alert("선택된 대상이 없습니다.");
			}
			
		}
		
		setType('${first_code}', '${first_name}');
	</script>
	
	
		
		
		
		
		