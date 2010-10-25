package com.hedymacferran.website.view
{
	import com.hedymacferran.website.events.FlashBugEvent;
	import com.hedymacferran.website.events.HedyEvent;
	import com.hedymacferran.website.model.HedyModel;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class HomeLinkMediator extends Mediator
	{
		[Inject] public var homeLink:HomeLink;
		[Inject] public var model:HedyModel;
		
		override public function onRegister():void
		{
			homeLink.addEventListener(HomeLink.ROLL_OVER, onRollOver);
		}
		
		private function onRollOver(e:Event):void
		{
			
		}
	}
}