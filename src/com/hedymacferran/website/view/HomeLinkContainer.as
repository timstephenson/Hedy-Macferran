package com.hedymacferran.website.view
{
	import flash.display.Sprite;

	public class HomeLinkContainer extends Sprite
	{
		public function center(contextX:Number,contextY:Number,xOffset:Number = 0,yOffset:Number = 0):void
		{
			x = (contextX / 2) - (width / 2) + xOffset;
			y = (contextY / 2) - (height / 2) + yOffset;
		}
	}
}