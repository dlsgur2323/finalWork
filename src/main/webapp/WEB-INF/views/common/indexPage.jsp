<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div class="content">
		
		
	</div><!-- /content -->
	
</div> <!-- /page -->

<script>
	window.onpopstate = function(){
		var url = history.state.url;
		var mCode = history.state.mCode;
		goPage(mCode,url,true);
	}
	window.onload = function(event) {
		goPage("${menu.mn_code}","${menu.mn_url}");
	}
	function goPage(mCode, url, ispop){
		
		if(!ispop){
			if(typeof(history.pushState) == 'function') {
				var renewURL = location.href;
				//현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
				renewURL = renewURL.substring(0, renewURL.lastIndexOf("/")+1);
				renewURL += mCode;
				
				
				//페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
				history.pushState({mCode : mCode, url : url}, null, renewURL);
				
			}else {
				location.hash = "#"+mCode;
			}
		}
		
		$(".content").load('<%=request.getContextPath()%>'+url);
		document.title = "${menu.mn_name}";
	}
	
</script>
