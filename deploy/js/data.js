//data = new Object();
var dataString = "";

$(document).ready(function(){
	$.getJSON('js/display.json', jsonCallBack );
});

function jsonCallBack( resData )
{
	dataString = JSON.stringify(resData);
	
	//swfobject.registerObject("myId", "10.0.0", "expressInstall.swf");
	var flashvars = {};
	flashvars.getFunction = "getData";
	var params = {};
	var attributes = {};
	swfobject.embedSWF("Hedy.swf", "myAlternativeContent", "100%", "100%", "9.0.0", false, flashvars, params, attributes);
}

function getData()
{
	return dataString;
}