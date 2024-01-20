/**
 * @description       : TriggerDispatcher
 * @author            : HimanshuNimje@live.com
 * @group             : 
 * @last modified on  : 01-20-2024
 * @last modified by  : HimanshuNimje@live.com
**/
public class TriggerDispatcher {
    
    public static void Run(ITriggerHandler handler) {
        // Check to see if the trigger has been disabled. If it has, return - Controlled by Custom Metadata Type called - ApplicationSetting__c.RunTriggers__c       
        if (handler.IsDisabled())
            return;
        
        if (Trigger.IsBefore) {        
            if (Trigger.IsInsert)
                handler.BeforeInsert(trigger.new);
            
            if (Trigger.IsUpdate)
                handler.BeforeUpdate(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
            
            if (Trigger.IsDelete)
                handler.BeforeDelete(trigger.old, trigger.oldMap);
        }
        

        if (Trigger.IsAfter) {
            if (Trigger.IsInsert)
                handler.AfterInsert(trigger.new, trigger.newMap);
            
            if (Trigger.IsUpdate)
                handler.AfterUpdate(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
            
            if (trigger.IsDelete)
                handler.AfterDelete(trigger.old, trigger.oldMap);
            
            if (trigger.isUndelete)
                handler.AfterUndelete(trigger.new, trigger.newMap);
        }
    }
}