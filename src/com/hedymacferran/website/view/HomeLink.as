package com.hedymacferran.website.view
{
	import com.greensock.TweenLite;
	import com.greensock.plugins.TintPlugin;
	import com.greensock.plugins.TweenPlugin;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.StyleSheet;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	import utils.FlashBug;
	
	public class HomeLink extends Sprite
	{
		private var _data:HomeLinkVO;
		private var _offset:Number;
		
		public static var ROLL_OVER:String 	= "homeLinkRollOver";
		public static var ROLL_OUT:String 	= "homeLinkRollOut";
		
		public function HomeLink(data:HomeLinkVO)
		{
			_data = data;
			build(_data.text, data.css);
			
			buttonMode = true;
			mouseChildren = false;
			TweenPlugin.activate([TintPlugin]);
			addEventListener(MouseEvent.ROLL_OVER, onRollOver);
			addEventListener(MouseEvent.ROLL_OUT, onRollOut);
		}
		
		private function onRollOver(e:MouseEvent):void
		{
			rollOver();
			dispatchEvent(new Event(ROLL_OVER));
		}
		
		private function rollOver():void
		{
			TweenLite.to(this,.5,{"tint":_data.rolloverColor});
		}
		
		private function onRollOut(e:MouseEvent):void
		{
			rollOut();
			dispatchEvent(new Event(ROLL_OUT));
		}
		
		private function rollOut():void
		{
			TweenLite.to(this,.5,{"tint":null});
		}
		
		private function build(htmlText:String,styles:StyleSheet):void
		{
			var tf:TextField = new TextField();
			tf.styleSheet = styles;
			tf.autoSize = TextFieldAutoSize.CENTER;
			tf.embedFonts = true;
			tf.htmlText = htmlText;
			addChild(tf);
			
			_offset = Math.abs(tf.x);
		}
		
		public function get text():String
		{
			return _data.text;
		}
		
		public function get offset():Number
		{
			return _offset;
		}
	}
}