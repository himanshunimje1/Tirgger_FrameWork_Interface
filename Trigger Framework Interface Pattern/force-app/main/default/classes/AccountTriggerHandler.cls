/**
 * @description       : AccountTriggerHandler
 * @author            : HimanshuNimje@live.com
 * @group             : 
 * @last modified on  : 01-20-2024
 * @last modified by  : HimanshuNimje@live.com
**/

public without sharing class AccountTriggerHandler implements ITriggerHandler {
	public static Boolean isTriggerDisabled = true;

	public void BeforeInsert(List<SObject> newList){
		//Example 
		 checkPhoneNull((List<Account>)newList, null);
	}

	public void BeforeUpdate(List<SObject> newList, Map<Id, SObject> newItems, List<SObject> oldList, Map<Id, SObject> oldMap){
		//checkFormatPhoneNumber((List<Account>)newList, (Map<Id, Account>)oldMap);
	}

	public void BeforeDelete(List<SObject> oldList, Map<Id, SObject> oldItems){
	}

	public void AfterInsert(List<SObject> newList, Map<Id, SObject> newItems){
	}

	public void AfterUpdate(List<SObject> newList, Map<Id, SObject> newItems, List<SObject> oldList, Map<Id, SObject> oldItems){
	}

	public void AfterDelete(List<SObject> oldList, Map<Id, SObject> oldItems){
	}

	public void AfterUndelete(List<SObject> newList, Map<Id, SObject> newItems){
	}

	public Boolean IsDisabled(){
		if (ApplicationSettings__c.getInstance().RunTriggers__c == true) {
			return false;
		}
		else {
			return isTriggerDisabled;
		}
	}

	
	public void checkPhoneNull(List<Account> newAccounts, Map<Id, Account> oldAccountMap){
		for (Account newAccount : newAccounts) {
			    if(newAccount.phone == null){
                    newAccount.addError('Phone Cannot be null');
                }
		}
	}

	
}
