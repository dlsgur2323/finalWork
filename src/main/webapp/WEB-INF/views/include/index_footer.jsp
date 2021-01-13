  
  
  
  
  
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <script src="<%=request.getContextPath()%>/resources/js/jquery-ui.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/selectize/dist/js/standalone/selectize.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/flatpickr/dist/flatpickr.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/flatpickr/dist/plugins/rangePlugin.js"></script>
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/nouislider/distribute/nouislider.min.js"></script>
  <!-- Tabler Core -->
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/tabler.min.js"></script>
  
  <script>
  	function setMode(mode){
  		if(mode == "com"){
	  		window.location.href="<%=request.getContextPath()%>/common/setMode?mode=CO";
  		}else if(mode == "ware"){
	  		window.location.href="<%=request.getContextPath()%>/common/setMode?mode=WH";
  		}else if(mode="sys"){
	  		window.location.href="<%=request.getContextPath()%>/common/setMode?mode=SY";
  		}
  		
  	}
  </script>
  <script>
	window.onpopstate = function(){
		var url = history.state.url;
		var mCode = history.state.mCode;
		var title = history.state.title;
		goPage(mCode, url, title, true);
	}
		
	goPage("${menu.mn_code}","${menu.mn_url}","${menu.mn_name}");
		
	function goPage(mCode, url, title, ispop){
		
		if(!ispop){
			if(typeof(history.pushState) == 'function') {
				var renewURL = location.href;
				//현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
				renewURL = renewURL.substring(0, renewURL.lastIndexOf("/")+1);
				renewURL += mCode;
				
				
				//페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
				history.pushState({mCode : mCode, url : url, title : title}, null, renewURL);
				
			}else {
				location.hash = "#"+mCode;
			}
		}
		
		$(".content").load('<%=request.getContextPath()%>'+url);
		document.title = title;
	}
	
</script>
  
</body>
</html>