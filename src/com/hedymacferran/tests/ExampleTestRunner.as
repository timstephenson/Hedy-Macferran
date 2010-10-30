package com.hedymacferran.tests
{
	import asunit.framework.TestSuite;
	import asunit.textui.TestRunner;
	
	
	public class ExampleTestRunner extends TestRunner
	{
		public function ExampleTestRunner()
		{
			start(AllTests);
		}
	}
}