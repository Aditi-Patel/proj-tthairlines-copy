({
    doInit: function (component, event, helper) {
        var action = component.get("c.getContact");
        var currentRecord = component.get("v.recordId");

        action.setParams({
            currentRecord: currentRecord
        });
        action.setCallback(this, function (response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                component.set("v.customer", response.getReturnValue());
                var result = response.getReturnValue();
                var tripStatus = result.tripStatus;;
                var inverseColor = component.get('v.inverseIconColors');
                var imgTrip = '/resource/GenieCustomer360Icons/icons/type=Value_' + inverseColor + '.png';

                switch (tripStatus) {
                    case 'Pre Trip':
                        imgTrip = '/resource/GenieCustomer360Icons/icons/type=PreTrip_' + inverseColor + '.png';
                        break;
                    case 'On-going':
                        imgTrip = '/resource/GenieCustomer360Icons/icons/type=Ongoing_' + inverseColor + '.png';
                        break;
                    case 'Completed':
                        imgTrip = '/resource/GenieCustomer360Icons/icons/type=Completed_' + inverseColor + '.png';
                        break;
                }
                component.set('v.tripImage', imgTrip);

                var imgMemberStatus = '/resource/GenieCustomer360Icons/icons/type=Active_' + inverseColor + '.png';
                var membershipStatus = component.get("v.customer.membershipStatus").toLowerCase();

                switch (membershipStatus) {
                    case 'active':
                        imgMemberStatus = '/resource/GenieCustomer360Icons/icons/type=Active_' + inverseColor + '.png';
                        break;
                    case 'inactive':
                        imgMemberStatus = '/resource/GenieCustomer360Icons/icons/type=Inactive_' + inverseColor + '.png';
                        break;
                }
                component.set('v.memberStatusImage', imgMemberStatus);

            } else {
                console.log("Failed with state" + state);
            }
        });
        $A.enqueueAction(action);
    }
})