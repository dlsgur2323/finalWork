  
  
  
  
  
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/selectize/dist/js/standalone/selectize.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/flatpickr/dist/flatpickr.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/flatpickr/dist/plugins/rangePlugin.js"></script>
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/libs/nouislider/distribute/nouislider.min.js"></script>
  <!-- Tabler Core -->
  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/tabler.min.js"></script>
  
  <script>
  	function setMode(mode){
  		if(mode == "com"){
	  		window.location.href="<%=request.getContextPath()%>/common/setMode?mode=company";
  		}else if(mode == "ware"){
	  		window.location.href="<%=request.getContextPath()%>/common/setMode?mode=warehouse";
  		}
  		
  	}
  </script>
  
</body>
</html>