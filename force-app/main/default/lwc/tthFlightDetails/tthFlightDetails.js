import {
    LightningElement,
    track,
    wire,
    api
} from 'lwc';
import getFlightList from '@salesforce/apex/tth_FightDetailsController.getFlightInformation';
import My_Resource from '@salesforce/resourceUrl/TTHAIRAssetFlow';

export default class TthFlightDetails extends LightningElement {

    @track flightData = [];
    flightJourneyImg = My_Resource + '/travelingwithpet/screen3_image.png';

    @api recordId;

    @wire(getFlightList, {
        recordIdContact: '$recordId'
    })
    wiredFlightData({
        error,
        data
    }) {
        if (data) {
            console.log('*** TTH FLIGHT DETAILS ***');
            console.log(data);
            this.flightData = data;
        } else if (error) {
            console.error('Error fetching flight data:', error);
        }
    }

    @api
    get isFlightDetailsAvailable() {
        return this.flightData.length > 0 ? true : false;
    }

}