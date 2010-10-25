package com.hedymacferran.website.model.services
{
	import com.hedymacferran.website.interfaces.IDataService;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	import flash.text.StyleSheet;
	
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author Ted Conn Feb 26, 2010
	 */
	
	public class DataService extends Actor implements IDataService
	{
		public function getHomeLinks(data:String, homeCSS:StyleSheet):Vector.<HomeLinkVO>
		{
			return new Vector.<HomeLinkVO>;	
		}
	}
}