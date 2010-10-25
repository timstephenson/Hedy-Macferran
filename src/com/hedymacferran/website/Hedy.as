package com.hedymacferran.website
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.text.Font;
	
	import utils.FlashBug;
	
	/**
	 * @author Ted Conn
	 */
	
	[SWF(width="500", height="500", frameRate='30', backgroundColor='#FFFFFF')]
	
	public class Hedy extends Sprite
	{
		public static var fb:FlashBug = new FlashBug();
		
		public function Hedy()
		{
			this.stage.align = StageAlign.TOP_LEFT;
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var context:HedyContext = new HedyContext(this);
		}
	}
}