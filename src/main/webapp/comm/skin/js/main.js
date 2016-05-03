function iFrameHeight() {
	var ifm = document.getElementById('main_page');
	
	var left_ifm = document.getElementById('left_window');
	var winWidth = document.documentElement.clientWidth;
	var leftWidth = document.getElementById('left_window').scrollWidth;
	   ifm.width = winWidth - leftWidth - 5;
	   
   var winHeight = document.documentElement.clientHeight;
   var topHeight = document.getElementById('top_window').scrollHeight;
   		ifm.height = winHeight - topHeight - 5;
   		
//	left_ifm.height=winHeight - topHeight - 5;
}