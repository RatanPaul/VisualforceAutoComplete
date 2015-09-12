@isTest
private class RN_Test_AutoComplete 
{
	private static testMethod void test() 
	{
	    Account objAccount = new Account(Name = 'Test');
	    insert objAccount;
        List<Account> lstAccount = RN_AutoComplete.fetchSObjects('Account','Name', 'test');
        system.assertEquals(lstAccount.size(), 1);
        RN_AutoCompleteCtrl obj = new RN_AutoCompleteCtrl();
        obj.save();
	}

}