package com.hedymacferran.tests
{
	
	import asunit.framework.TestCase;
	
	import com.hedymacferran.website.model.services.CSSService;
	
	import flash.text.StyleSheet;
	
	public class CSSServiceTest extends TestCase
	{		
		private var css:CSSService;
		
		public function CSSServiceTest(testMethod:String = null)
		{
			super(testMethod);
		}
		
		[Before]
		protected override function setUp():void
		{
			css = new CSSService();
		}
		
		[After]
		protected override function tearDown():void
		{
			css = null;
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
			assertTrue("CSSService instantiated", css is CSSService);
		}
		
		[Test]
		public function testGetHomeStylesIsStyleSheet():void {
			assertTrue("Should return a stylesheet", css.getHomeStyles() is StyleSheet);
		}
		
		[Test]
		public function testGetHomeStylesHasHomeLink1():void {
			assertTrue("Should have homelink1.",  css.getHomeStyles().styleNames.indexOf(".homelink1") > -1);
		}
		
		[Test]
		public function testGetHomeStylesHas5LinkStyles():void {
			assertEquals("Should have 5 link styles", 5, css.getHomeStyles().styleNames.length);
		}
	}
}