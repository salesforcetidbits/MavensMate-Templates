@isTest(seeAllData=false)
private class {{ api_name }} {
	
	@testSetup
	static void setupData(){

		/* 	
			The @testSetup annotation will extend the 
			scope of any data created in this method
			to be accessable in all test methods in 
			this class.

			The method annotated with @testSetup will
			be ran prior to any test methods in the
			class, resulting in 
		*/

		//Remove me
		insert new account(
			name = 'Callimachus'
		);		
	}


	static testMethod void testMethod_a(){

		//Remove me
		list<account> accounts = new list<account>([
			SELECT 	Id
			FROM	Account
			WHERE	Name = 'Callimachus'
		]);

		//remove me
		System.assertEquals(
			1,
			accounts.size()
		);
	}
}