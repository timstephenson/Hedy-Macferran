package com.hedymacferran.website.controller
{
	import com.hedymacferran.website.events.FlashBugEvent;
	import com.hedymacferran.website.events.HedyEvent;
	import com.hedymacferran.website.interfaces.ICSSService;
	import com.hedymacferran.website.interfaces.IDataService;
	import com.hedymacferran.website.model.HedyModel;
	import com.hedymacferran.website.signals.InitView;
	
	import flash.text.StyleSheet;
	
	import org.robotlegs.mvcs.Command;
	
	import utils.FlashBug;

	/**
	 * @author Ted Conn Mar 10, 2010
	 */
	
	public class PopulateModelCommand extends Command
	{
		[Inject] public var data:String;
		[Inject] public var model:HedyModel;
		[Inject] public var dataService:IDataService;
		[Inject] public var cssService:ICSSService; 
		[Inject] public var initViewSignal:InitView;
		
		override public function execute():void
		{
			model.homeLinks = dataService.getHomeLinks(data, cssService.getHomeStyles());
			initViewSignal.dispatch();
		}
	}
}
