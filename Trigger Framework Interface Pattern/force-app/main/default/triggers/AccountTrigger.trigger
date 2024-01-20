/**
 * @description       : AccountTrigger
 * @author            : HimanshuNimje@live.com
 * @group             : 
 * @last modified on  : 01-20-2024
 * @last modified by  : HimanshuNimje@live.com
**/
trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    	TriggerDispatcher.Run(new AccountTriggerHandler());
}
