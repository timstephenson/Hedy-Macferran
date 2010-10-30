package com.hedymacferran.tests
{
	import asunit.framework.TestCase;
	import flash.text.StyleSheet;
	
	import com.hedymacferran.website.model.services.JSONService;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	public class JSONServiceTest extends TestCase
	{		
		private var data:JSONService;
		
		private var dataString:String = "{\"Web\": {\"pageTitle\": \"Hedy Macferran\", \"homeLinks\": [{\"text\":\"<span class=\'homeLink1\'>HEDY MACFERRAN</span>\",\"overColor\":\"EB0A44\"},{\"text\":\"<span class=\'homeLink2\'>TOAST & FLURRY</span>\",\"overColor\":\"26251C\"}]}}";
		
		public function JSONServiceTest(testMethod:String = null)
		{
			super(testMethod);
		}
		
		[Before]
		protected override function setUp():void
		{
			data = new JSONService();
		}
		
		[After]
		protected override function tearDown():void
		{
			data = null;
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
			assertTrue("JSONService instantiated", data is JSONService);
		}
		
		[Test] 
		public function testDecodeDataShouldBeObject():void {
			assertTrue("Should be an object", data.decodeData(dataString) is Object);
		}
		[Test] 
		public function testDecodeDataShouldHave2Links():void {
			assertEquals("Should have 2 links", 2, data.decodeData(dataString).Web.homeLinks.length);
		}
		[Test] 
		public function testDecodeDataShouldHavePageTitle():void {
			assertEquals("Should be Hedy Macferran", "Hedy Macferran", data.decodeData(dataString).Web.pageTitle);
		}
		
		[Test]
		public function testGetHomeLinksShouldBeVector():void {
			assertTrue("Should be a Vector.<HomeLinksVO>", data.getHomeLinks(dataString, new StyleSheet()) is Vector.<HomeLinkVO>);
		}
		
		[Test]
		public function testGetHomeLinksShouldReturn2Links():void {
			assertEquals("Should have 2 links", 2, data.getHomeLinks(dataString, new StyleSheet()).length);
		}
		
		
	}
}