package com.hedymacferran.website.controller
{
	import com.hedymacferran.website.events.FlashBugEvent;
	
	import org.robotlegs.mvcs.Command;
	
	import utils.FlashBug;

	public class FlashBugLogCommand extends Command
	{
		[Inject] public var event:FlashBugEvent;
		
		override public function execute():void
		{
			var fb:FlashBug = new FlashBug();
			fb.log(event.data);
		}
	}
}