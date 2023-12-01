({
    doInit: function (component, event, helper) {

        var action = component.get('c.getChatRecord');
        var recordId = component.get('v.recordId');

        console.log('init////' + recordId);

        action.setParams({
            caseId: recordId
        });

        action.setCallback(this, function (response) {
            var state = response.getState();
            if (state === 'SUCCESS') {

                var record = response.getReturnValue();
                var identifier = component.get('v.identifier');
                var flter = 'message' + identifier;
                var txt = component.get('v.Message1');
                component.set('v.chatRecord', record.chatTranscript);
                console.log('SET REPLIES');
                component.set('v.chatReplies', record.lstReplies);

                helper.displayMessage(component, event, 'welcome*');


            } else if (state === "ERROR") {

                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {

                        var toastEvent = $A.get('e.force:showToast');
                        toastEvent.setParams({
                            'title': 'Error!',
                            'message': errors[0].message
                        });
                        toastEvent.fire();

                        console.log("Error message: " +
                            errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        $A.enqueueAction(action);


    },

    createNewKnowledge: function (component, event, helper) {

        var navService = component.find("navService");
        var pageRef = {
            type: "standard__objectPage",
            attributes: {
                objectApiName: "Knowledge__kav",
                actionName: "new"
            },
            state: {}
        }

        // Replace with your own field values
        var defaultFieldValues = {
            Title: component.get('v.KnowledgeName'),
            FAQ_Answer__c: component.get('v.KnowledgeDetails')
        };

        pageRef.state.defaultFieldValues = component.find("pageRefUtils").encodeDefaultFieldValues(defaultFieldValues);
        component.set("v.pageReference", pageRef);
        var defaultUrl = "#";

        // Generate a Link for the Aura Link example
        navService.generateUrl(pageRef)
            .then($A.getCallback(function (url) {
                component.set("v.url", url ? url : defaultUrl);
            }), $A.getCallback(function (error) {
                component.set("v.url", defaultUrl);
            }));

        var navService = component.find("navService");
        var pageRef = component.get("v.pageReference");
        event.preventDefault();
        navService.navigate(pageRef);

    },

    gotoStep: function (component, event, helper) {

        var chatRecord = component.get('v.chatRecord');
        var conversationKit = component.find("conversationKit");
        var recordId = component.get("v.recordId");
        var replyMessage = component.get('v.outputMessage');
        var chatRecordId = chatRecord.Id;
        var sessionIdShort = (chatRecordId.length > 15 ? chatRecordId.substring(0, 15) : chatRecordId);

        console.log('chatId: ' + sessionIdShort);

        conversationKit.sendMessage({
                recordId: sessionIdShort,
                message: {
                    text: replyMessage
                }
            })
            .then(function (result) {
                if (result) {
                    console.log("Successfully sent message");
                    component.set('v.thinking', true);
                    var cmpTarget = component.find('changeIt');
                    $A.util.addClass(cmpTarget, 'text-weak');
                } else {
                    console.log("Failed to send message");
                }
            });


    },
    onChatTranscriptCustomer: function (cmp, evt, helper) {
        console.log(cmp);
        console.log('--------------');
        helper.chatConversationEventListener(cmp, evt, "EndUser");
    },
    // Chat Transcript Agent
    onChatTranscriptAgent: function (cmp, evt, helper) {
        //helper.chatConversationEventListener(cmp, evt, "Agent");
    },
    onChatEnded: function (cmp, evt, helper) {
        var conversation = cmp.find("conversationKit");
        var recordId = evt.getParam("recordId");
        console.log("recordId:" + recordId);
        cmp.set('v.showFinalScreen', true);
        cmp.set('v.outputMessage', 'This chat has now ended. How did you find this interaction?');


    }

})