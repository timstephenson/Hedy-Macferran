package com.hedymacferran.website.events
{
	import flash.events.Event;
	
	public class HedyEvent extends Event
	{
		public static const GET_FLASHVARS:String 	= "getFlashVars";
		public static const DATA_READY:String 		= "dataReady";
		public static const DATA_PARSED:String 		= "dataParsed";
		public static const RESIZE:String 			= "resize";
		
		public var data:Object;
		
		public function HedyEvent(type:String, data:Object = null)
		{
			super(type);
			this.data = data;
		}
		
		/* override clone so the event can be redispatched */
		public override function clone():Event {
			return new FlashBugEvent(type, data);
		}
	}
}