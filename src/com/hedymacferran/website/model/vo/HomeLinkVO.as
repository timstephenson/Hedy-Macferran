package com.hedymacferran.website.model.vo
{
	import flash.text.StyleSheet;

	public class HomeLinkVO
	{
		private var _htmlText:String;
		private var _text:String;
		private var _css:StyleSheet;
		private var _rolloverColor:uint;
		
		public function HomeLinkVO(htmlText:String, styles:StyleSheet, overColor:uint)
		{
			_htmlText = htmlText;
			_css = styles;
			_text = parseOutText(_htmlText);
			_rolloverColor = overColor;
		}
		
		public function get htmlText():String
		{
			return _htmlText;
		}
		
		public function get text():String
		{
			return _text;
		}
		
		public function get css():StyleSheet
		{
			return _css;
		}
		
		public function get rolloverColor():uint
		{
			return _rolloverColor;
		}
		
		private function parseOutText(htmlText:String):String
		{
			return htmlText;
		}
	}
}