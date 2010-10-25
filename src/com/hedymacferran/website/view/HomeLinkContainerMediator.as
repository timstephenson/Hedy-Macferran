package com.hedymacferran.website.view
{
	import com.hedymacferran.website.events.FlashBugEvent;
	import com.hedymacferran.website.events.HedyEvent;
	import com.hedymacferran.website.model.HedyModel;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	import com.hedymacferran.website.signals.InitView;
	
	import flash.display.Shape;
	
	import org.robotlegs.mvcs.Mediator;
	
	import utils.FlashBug;
	
	public class HomeLinkContainerMediator extends Mediator
	{
		[Inject] public var homeLinkContainer:HomeLinkContainer;
		[Inject] public var model:HedyModel;
		[Inject] public var initView:InitView;
		
		private var _offset:Number;
		
		override public function onRegister():void
		{
			initView.add(onDataParsed);
			eventMap.mapListener(eventDispatcher, HedyEvent.RESIZE, onResize, HedyEvent);
		}
		
		private function onDataParsed():void
		{
			mediatorMap.mapView(HomeLink,HomeLinkMediator);
			var fb:FlashBug = new FlashBug();
			var tempOffset:Number = 0;
			
			for each (var homeLinkVO:HomeLinkVO in model.homeLinks)
			{
				var homeLink:HomeLink = new HomeLink(homeLinkVO);
				homeLink.y = homeLinkContainer.height;
				homeLinkContainer.addChild(homeLink);
				tempOffset = Math.max(homeLink.offset,tempOffset);
			}
			_offset = tempOffset;
			homeLinkContainer.center(contextView.stage.stageWidth,contextView.stage.stageHeight,tempOffset);
		}
		
		private function onResize(e:HedyEvent):void
		{
			homeLinkContainer.center(e.data.x,e.data.y,_offset);			
		}
	}
}