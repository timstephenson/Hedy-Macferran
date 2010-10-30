package com.hedymacferran.tests
{
	import asunit.framework.TestCase;
	
	import com.hedymacferran.website.model.services.DataService;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	import com.hedymacferran.website.view.HomeLink;
	
	import flash.text.StyleSheet;
	
	public class DataServiceTest extends TestCase
	{		
		private var dataService:DataService;
		
		public function DataServiceTest(testMethod:String = null)
		{
			super(testMethod);
		}
		
		[Before]
		protected override function setUp():void
		{
			dataService = new DataService();
		}
		
		[After]
		protected override function tearDown():void
		{
			dataService = null;
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
			assertTrue("DataService instantiated", dataService is DataService);
		}
		
		[Test]
		public function testGetHomeLinks():void {
			var data:Vector.<HomeLinkVO> = dataService.getHomeLinks("Some data", new StyleSheet);
			assertTrue("Should be a Vector.<HomeLinkVO>", data is Vector.<HomeLinkVO>);
		}
	}
}