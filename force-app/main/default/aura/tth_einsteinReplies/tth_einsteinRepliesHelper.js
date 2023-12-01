({
    chatConversationEventListener: function (component, evt, speaker) {

        var transcriptText = evt.getParam("content");
        component.set("v.searchTerm", transcriptText);
        var recordId = component.get("v.recordId");
        var chatRecordId = evt.getParam("recordId");

        //Confirm that the Event came from the Chat that the cmp is on
        if (recordId.includes(chatRecordId)) {
            this.displayMessage(component, evt, transcriptText);
        }

    },

    displayMessage: function (component, event, transcriptText) {
        console.log('Inside Display Function');
        var record = component.get('v.chatReplies');
        var identifier = component.get('v.identifier');
        var label = record.find(item => transcriptText.includes(item.Name));

        if (label) {

            identifier++;
            component.set('v.identifier', identifier);

            var i = 0;
            var speed = 25;

            var lstOutput = label.xDO_TTHAIR_Source__c.split(',');
            component.set('v.outputLabel', lstOutput);

            var txt = label.xDO_TTHAIR_Response_Message__c;
            component.set('v.outputMessage', '');
            typeWriter();


            function typeWriter() {

                if (i < txt.length) {
                    var tmp = component.get('v.outputMessage');
                    component.set('v.outputMessage', tmp + txt.charAt(i));
                    i++;

                    setTimeout(typeWriter, speed);
                }

            }
            component.set('v.thinking', false);
            var cmpTarget = component.find('changeIt');
            $A.util.removeClass(cmpTarget, 'text-weak');

        } else {
            console.log('Inside Blank Function');
            component.set('v.showBlankScreen', true);
        }
    }
})