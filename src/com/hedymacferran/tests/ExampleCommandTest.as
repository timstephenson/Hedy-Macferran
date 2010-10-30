package com.hedymacferran.tests
{
	import asunit.framework.TestCase;
	import com.hedymacferran.website.controller.ExampleCommand;

	public class ExampleCommandTest extends TestCase
	{
		private var instance:ExampleCommand;

		public function ExampleCommandTest(testMethod:String = null)
		{
			super(testMethod);
		}

		protected override function setUp():void
		{
			instance = new ExampleCommand();
		}

		protected override function tearDown():void
		{
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("ExampleCommand instantiated", instance is ExampleCommand);
		}

//		public function test():void 
//		{
//			assertTrue("failing test", false);
//		}
		
		public function testExampleTest():void {
			assertEquals("Shoule be Example.", "Example", instance.exampleTest());
		}
	}
}
