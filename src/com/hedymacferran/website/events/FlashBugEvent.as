package com.hedymacferran.website.events
{
	import flash.events.Event;
	import utils.FlashBug;
	
	public class FlashBugEvent extends Event
	{
		public static const CONSOLE_LOG:String = "consoleLog";
		
		public var data:Object;
		
		public function FlashBugEvent(type:String, data:Object = null)
		{
			super(type);
			this.data = data;
		}
		
		/* override clone so the event can be redispatched */
		public override function clone():Event 
		{
			return new FlashBugEvent(type, data);
		}
	}
}