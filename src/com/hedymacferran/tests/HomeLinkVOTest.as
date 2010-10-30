package com.hedymacferran.tests
{
	import asunit.framework.TestCase;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	import flash.text.StyleSheet;
	
	public class HomeLinkVOTest extends TestCase
	{
		private var link:HomeLinkVO;
		
		private var htmlString:String = "<spam>Eggs</spam><ham>Ni</ham>";
		private var styles:StyleSheet = new StyleSheet();
		private var color:uint = 666666;
		
		public function HomeLinkVOTest(testMethod:String = null)
		{
			super(testMethod);
		}
		
		[Before]
		protected override function setUp():void
		{
			link = new HomeLinkVO(htmlString, styles, color);
		}
		
		[After]
		protected override function tearDown():void
		{
			link = null;
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
			assertTrue("HomeLinkVO instantiated", link is HomeLinkVO);
		}
		
		[Test]
		public function testHtmlText():void {
			assertEquals("Should be: " + htmlString, htmlString, link.htmlText);
		}
		
		[Test]
		public function testText():void {
			assertEquals("Should be: "+ htmlString, htmlString, link.text);
		}
		
		[Test]
		public function testCSS():void {
			assertTrue("Should be a CSS object", link.css is StyleSheet);
		}
		
		[Test]
		public function testRolloverColor():void {
			assertEquals("Should be 666666", color, link.rolloverColor);
		}
		

		
	}
}