package com.hedymacferran.website.interfaces
{
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	import flash.text.StyleSheet;

	public interface IDataService
	{
		function getHomeLinks(data:String, homeCSS:StyleSheet):Vector.<HomeLinkVO>;
	}
}