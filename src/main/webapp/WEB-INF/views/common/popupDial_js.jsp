<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
		/*
			<div id="dialog1" class="dialogDiv" title="공통코드 유형 등록">
			</div>
			
			id는 자유롭게 하면 됩니다. 아래의 함수 호출 시 인자 dialog 자리에 해당 id 를 넣어주면 됩니다.
			class 는 반드시 dialogDiv로 지정해줘야 합니다.
			title 은 팝업의 상단에 적힐 타이틀을 의미합니다.
			
			div 안에 내용을 만들 때, class를 content로는 지정하면 안됩니다.
		*/
		
		
		// 팝업창 종료
	 	function closeDial(dialog){
	 		$(dialog).dialog("close");
	 	}
		// 팝업 내부 input 초기화
	 	function resetDial(dialog){
	 		$(dialog).find("input").not("input[type='button']").val("");
	 		$(dialog).find("textarea").val("");
	 		
	 	}
		
		// 팝업띄우기
	 	function openDial(dialog, width, height, tof){
	 		var bool = true;
			if(tof==false){
	 			bool = tof;
	 		}
 		 $(dialog).dialog({
 			  classes : {
 				  	"ui-dialog" : "no-pad",
 				  	"ui-dialog-titlebar" : "no-radius"
 				  },
 		      autoOpen: false,
 		      height: height,
 		      width: width,
 		      modal: bool,
 		      resizable : false,
 		      close : function(event,ui){
 		    	  resetDial(dialog);
 		      }
 		      
 		  });
 		  $('button.ui-dialog-titlebar-close').html('<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 30 30" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg>');
	 		
	      dialog.dialog( "open" );
	      dialog.dialog({dialogClass : "index-z"});
	      $(".index-z").css("z-index","2222");
	      dialog.dialog("moveToTop");
	 	}
	</script>		