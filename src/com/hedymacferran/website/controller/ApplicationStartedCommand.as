package com.hedymacferran.website.controller
{
	//import com.adobe.serialization.json.JSON;
	
	import com.hedymacferran.website.events.FlashBugEvent;
	import com.hedymacferran.website.events.HedyEvent;
	import com.hedymacferran.website.model.HedyModel;
	import com.hedymacferran.website.model.vo.FlashVar;
	import com.hedymacferran.website.signals.PopulateModel;
	
	import flash.events.TimerEvent;
	import flash.external.ExternalInterface;
	import flash.utils.Timer;
	
	import org.robotlegs.mvcs.Command;
	
	import utils.FlashBug;

	/**
	 * @author Ted Conn Apr 08, 2010
	 */
	
	public class ApplicationStartedCommand extends Command
	{
		[Inject] public var model:HedyModel;
		[Inject] public var populateModelSignal:PopulateModel;
		
		private var getFunction:String;
		
		override public function execute():void
		{
			populateFlashVars();
			
			if (ExternalInterface.available) {
				try {
					var result:String = ExternalInterface.call(getFunction);
					notify(result);
				} catch (error:SecurityError) {
					dispatch(new FlashBugEvent(FlashBugEvent.CONSOLE_LOG, "A SecurityError occurred: " + error.message + "\n"));
				} catch (error:Error) {
					dispatch(new FlashBugEvent(FlashBugEvent.CONSOLE_LOG, "An Error occurred: " + error.message + "\n"));
				}
			} else {
				dispatch(new FlashBugEvent(FlashBugEvent.CONSOLE_LOG, "External interface is not available for this container."));
			}
		}
		
		private function populateFlashVars():void
		{
			var getFunctionFlashVar:FlashVar = new FlashVar("getFunction",contextView.stage.loaderInfo.parameters["getFunction"]);
			var flashVars:Vector.<FlashVar> = new Vector.<FlashVar>;
			flashVars.push(getFunctionFlashVar);
			model.flashVars = flashVars; 
			
			getFunction = getFunctionFlashVar.value;
		}
		
		private function notify(data:String):void
		{
			populateModelSignal.dispatch(data);
		}
	}
}
