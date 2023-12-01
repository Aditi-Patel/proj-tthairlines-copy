public with sharing class tth_FightDetailsController {
    public tth_FightDetailsController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<xDO_TTHAIR_Flight__c> getFlightInformation(string recordIdContact) {

        List<xDO_TTHAIR_Flight__c> objFlightDetails = new List<xDO_TTHAIR_Flight__c>();
        try{
        xDO_TTHAIR_PNR__c objPNR = [select Id, Name from xDO_TTHAIR_PNR__c where xDO_TTHAIR_Contact__c = :recordIdContact and xDO_TTHAIR_PNR_Status__c = 'Confirmed' LIMIT 1 ];
        xDO_TTHAIR_Ininerary__c objItineray = [select Id, xDO_TTHAIR_Flight_Schedule__c from xDO_TTHAIR_Ininerary__c where xDO_TTHAIR_PNR__c =: objPNR.Id];
        objFlightDetails = [select xDO_TTHAIR_FlightNumber__c,xDO_TTHAIR_Flight_Name__c,xDO_TTHAIR_DEP_CODE__c,xDO_TTHAIR_ARR_CODE__c, xDO_TTHAIR_Arrival_Time__c,xDO_TTHAIR_Departure_Time__c,xDO_TTHAIR_Departure_City__c,xDO_TTHAIR_Arrival_City__c from xDO_TTHAIR_Flight__c where Id =:objItineray.xDO_TTHAIR_Flight_Schedule__c Limit 1];
        }
        catch(Exception ex){
          System.debug(ex);
        }
        return objFlightDetails;
        
    }
}