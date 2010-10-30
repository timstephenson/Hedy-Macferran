package com.hedymacferran.website.model.services
{
	import com.adobe.serialization.json.JSON;
	import com.hedymacferran.website.interfaces.IDataService;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	import flash.text.StyleSheet;
	
	import org.robotlegs.mvcs.Actor;
	
	import utils.FlashBug;
	
	
	public class JSONService extends DataService implements IDataService
	{
		override public function getHomeLinks(data:String, homeCSS:StyleSheet):Vector.<HomeLinkVO>
		{
			var homeLinks:Vector.<HomeLinkVO> = new Vector.<HomeLinkVO>;
			var jsonData:Object = decodeData(data);

			for each(var item:Object in jsonData.Web.homeLinks)
			{
				var homeLinkVO:HomeLinkVO = new HomeLinkVO(item.text, homeCSS, uint("0x"+item.overColor));
				homeLinks.push(homeLinkVO);
			}
			
			return homeLinks;
		}
		
		public function decodeData(data:String):Object {
			return JSON.decode(data);
		}
	}
}