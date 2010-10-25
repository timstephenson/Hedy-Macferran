package com.hedymacferran.website.model
{
	import com.hedymacferran.website.model.vo.FlashVar;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	import org.robotlegs.mvcs.Actor;

	public class HedyModel extends Actor
	{
		private var _homeLinks:Vector.<HomeLinkVO>;
		private var _flashVars:Vector.<FlashVar>;
		
		public function HedyModel()
		{
		}
		
		public function set homeLinks(v:Vector.<HomeLinkVO>):void
		{
			_homeLinks = v;
		}
		
		public function get homeLinks():Vector.<HomeLinkVO>
		{
			return _homeLinks;
		}
		
		public function set flashVars(v:Vector.<FlashVar>):void
		{
			_flashVars = v;
		}
		
		public function get flashVars():Vector.<FlashVar>
		{
			return _flashVars;
		}
	}
}