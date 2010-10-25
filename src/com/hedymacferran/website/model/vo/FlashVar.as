package com.hedymacferran.website.model.vo
{
	public class FlashVar
	{
		private var _name:String;
		private var _value:String;
		
		public function FlashVar(name:String,value:String)
		{
			_name = name;
			_value = value;
		}
		
		public function get name():String
		{
			return _name;
		}
		
		public function get value():String
		{
			return _value;
		}
	}
}