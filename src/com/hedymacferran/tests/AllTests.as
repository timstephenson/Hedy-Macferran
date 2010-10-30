package com.hedymacferran.tests {
	import asunit.framework.TestSuite;

	public class AllTests extends TestSuite {

		public function AllTests() {
			addTest(new ExampleCommandTest());
			addTest(new FlashVarTest());
			addTest(new HomeLinkVOTest());
			addTest(new HedyModelTest());
			addTest(new DataServiceTest());
			addTest(new JSONServiceTest());
		}
	}
}
