package com.hedymacferran.website.signals
{
	import com.hedymacferran.website.model.vo.FlashVar;
	
	import org.osflash.signals.Signal;
	
	public class PopulateModel extends Signal
	{
		public function PopulateModel()
		{
			super(String);
		}
	}
}