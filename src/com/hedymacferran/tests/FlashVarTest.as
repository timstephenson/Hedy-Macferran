package com.hedymacferran.tests
{
	import asunit.framework.TestCase;
	import com.hedymacferran.website.model.vo.FlashVar;
	
	public class FlashVarTest  extends TestCase
	{		
		private var flashVars:FlashVar;
		
		public function FlashVarTest(testMethod:String = null)
		{
			super(testMethod);
		}
		
		[Before]
		protected override function setUp():void
		{
			flashVars = new FlashVar("FlashTest", "FlashValue");
		}
		
		[After]
		protected override function tearDown():void
		{
			flashVars = null;
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test]
		public function testInstantiated():void 
		{
			assertTrue("FlashVar instantiated", flashVars is FlashVar);
		}
		
		[Test]
		public function testName():void {
			assertEquals("Name should be FlashTest", "FlashTest", flashVars.name);
		}
		
		[Test]
		public function testValue():void {
			assertEquals("Value should be FlashValue", "FlashValue", flashVars.value);
		}
		
		
	}
}