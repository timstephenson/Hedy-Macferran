package com.hedymacferran.tests
{
	import asunit.framework.TestCase;
	
	import com.hedymacferran.website.model.HedyModel;
	import com.hedymacferran.website.model.vo.FlashVar;
	import com.hedymacferran.website.model.vo.HomeLinkVO;
	
	import flash.text.StyleSheet;
	
	public class HedyModelTest extends TestCase
	{		
		private var model:HedyModel;
		private var flashVars:FlashVar;
		private var flashVarVector:Vector.<FlashVar> = new Vector.<FlashVar>;
		private var linkVector:Vector.<HomeLinkVO> = new Vector.<HomeLinkVO>;
		private var link:HomeLinkVO;
		
		[Before]
		protected override function setUp():void
		{
			var htmlString:String = "<spam>Eggs</spam><ham>Ni</ham>";
			var styles:StyleSheet = new StyleSheet();
			var color:uint = 666666;
			
			link = new HomeLinkVO(htmlString, styles, color);
			linkVector.push(link);
			
			flashVars = new FlashVar("FlashTest", "FlashValue");
			flashVarVector.push(flashVars);
			model = new HedyModel();
		}
		
		[After]
		protected override function tearDown():void
		{
			link = null;
			flashVars = null;
			model = null;	
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
			assertTrue("HedyModel instantiated", model is HedyModel);
		}
		
		[Test]
		public function testHomeLinks():void {
			model.homeLinks = linkVector;
			assertEquals("Should equal linkVector", linkVector, model.homeLinks);
		}
		
		[Test]
		public function testFlashVars():void {
			model.flashVars = flashVarVector;
			assertEquals("Should equal flashVarVector", flashVarVector, model.flashVars);
		}
		
	}
}