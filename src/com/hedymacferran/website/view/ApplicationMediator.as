package com.hedymacferran.website.view
{
	import com.hedymacferran.website.events.FlashBugEvent;
	import com.hedymacferran.website.events.HedyEvent;
	import com.hedymacferran.website.model.HedyModel;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	import utils.FlashBug;
	
	public class ApplicationMediator extends Mediator
	{
		[Inject] public var appView:ApplicationView;
		[Inject] public var model:HedyModel;
		
		private var homeLinkContainer:Sprite;
		
		override public function onRegister():void
		{
			addHomeLinkContainer();
			
			contextView.stage.addEventListener(Event.RESIZE, onResize);
		}
		
		private function addHomeLinkContainer():void
		{
			mediatorMap.mapView(HomeLinkContainer, HomeLinkContainerMediator);
			homeLinkContainer = new HomeLinkContainer();
			appView.addChild(homeLinkContainer);
		}
		
		private function onResize(e:Event):void
		{
			dispatch(new HedyEvent(HedyEvent.RESIZE, {"x":contextView.stage.stageWidth, "y":contextView.stage.stageHeight} ) );
		}
	}
}