package com.hedymacferran.tests
{
	import asunit.framework.TestSuite;
	import com.hedymacferran.tests.ExampleCommandTest;

	public class AllTests extends TestSuite {

		public function AllTests() {
			addTest(new ExampleCommandTest());
		}
	}
}
