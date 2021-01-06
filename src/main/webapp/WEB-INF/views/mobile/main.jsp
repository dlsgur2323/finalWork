<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div class="content">
    
    	<div class="row main-top">
    		<div class="col-3">
    			<a href="m.work" class="btn btn-dark main-btn">근태</a>
    		</div>
    		<div class="col-3"></div>
    		<div class="col-3">
    			<a href="m.stockcount" class="btn btn-dark main-btn">재고<br/>실사</a>
    		</div>
    	</div>
    	<div class="row main-top">
    		<div class="col-3">
    			<a href="m.receiveAndRelease" class="btn btn-dark main-btn">입하/입고<br/>출고</a>
    		</div>
    		<div class="col-3"></div>
    		<div class="col-3">
    			<a href="m.receiveList" class="btn btn-dark main-btn">입고<br/>목록</a>
    		</div>
    	</div>
    	<div class="row main-top">
    		<div class="col-3">
    			<a href="m.releaseList" class="btn btn-dark main-btn">출고<br/>목록</a>
    		</div>
    		<div class="col-3"></div>
    		<div class="col-3">
    			<a href="m.stockList" class="btn btn-dark main-btn">재고<br/>실사목록</a>
    		</div>
    	</div>
	</div><!-- /content -->
	
</div> <!-- /page -->

<script>
	window.onload = function(){
// 		goPage("mobile/main");
	}
	
	function goPage(url){
		$(".content").load('<%=request.getContextPath()%>/'+src);
	}
	
</script>
