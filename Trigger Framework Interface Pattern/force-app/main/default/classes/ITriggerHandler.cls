/**
 * @description       : AccountTriggerHandler
 * @author            : HimanshuNimje@live.com
 * @group             : 
 * @last modified on  : 01-20-2024
 * @last modified by  : HimanshuNimje@live.com
**/
public interface ITriggerHandler {

    void BeforeInsert(List<SObject> newItems); 
 
    void BeforeUpdate(List<SObject> newList, Map<Id, SObject> newItems, List<SObject> oldList, Map<Id, SObject> oldItems);
 
    void BeforeDelete(List<SObject> oldList, Map<Id, SObject> oldItems); 
 
    void AfterInsert(List<SObject> newList, Map<Id, SObject> newItems);
 
    void AfterUpdate(List<SObject> newList, Map<Id, SObject> newItems, List<SObject> oldList, Map<Id, SObject> oldItems);
 
    void AfterDelete(List<SObject> oldList, Map<Id, SObject> oldItems);
 
    void AfterUndelete(List<SObject> newList, Map<Id, SObject> newItems);
 
    Boolean IsDisabled();
}