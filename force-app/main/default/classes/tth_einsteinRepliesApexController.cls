public with sharing class tth_einsteinRepliesApexController {
    public tth_einsteinRepliesApexController() {

    }
    
    @AuraEnabled
    public static EinsteinResponseWrapper getChatRecord() {
        
        List<xDO_TTHAIR_Einstein_Replies__c> msgs = [SELECT Name, xDO_TTHAIR_Identifier__c , xDO_TTHAIR_Response_Message__c,xDO_TTHAIR_Source__c   FROM xDO_TTHAIR_Einstein_Replies__c ];
        LiveChatTranscript ct = [SELECT Id, Name FROM LiveChatTranscript WHERE STATUS = 'InProgress' ORDER BY CreatedDate DESC LIMIT 1];
        EinsteinResponseWrapper epw = new EinsteinResponseWrapper();
        epw.lstReplies = msgs;
        epw.chatTranscript = ct;        
        return epw;
    }
    
    
    public class EinsteinResponseWrapper {
        
        @AuraEnabled
        public List<xDO_TTHAIR_Einstein_Replies__c> lstReplies {get; set;}
        @AuraEnabled
        public LiveChatTranscript chatTranscript {get; set;}
        
    }
}