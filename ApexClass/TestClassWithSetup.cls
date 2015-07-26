@isTest(seeAllData=false)
private class {{ api_name }} {
	
	@testSetup
	static void setupData(){

		/* 	
		The @testSetup annotation will extend the 
		scope of any data created in this method
		to be accessible in all test methods in 
		this class.

		The method annotated with @testSetup will
		be ran prior to any test methods in the
		class resulting in less calls to create data.   
		*/

		//Remove me
		insert new account(
			name = 'YOUR_ACCOUNT_NAME'
		);		
	}


	static testMethod void testMethod_a(){

		//Remove me
		list<account> accounts = new list<account>([
			SELECT 	Id
			FROM	Account
			WHERE	Name = 'YOUR_ACCOUNT_NAME'
		]);

		//remove me
		System.assertEquals(
			1,
			accounts.size()
		);
	}
}