##Urban Airship Module for Webscript.io

###Integration Examples

    local ua = require('azcoov/webscript-urbanairship/ua.lua')
    local UA_APPKEY = '<YOUR URBAIN AIRSHIP APP KEY>'
    local UA_PUSHSECRET = '<YOUR TWILIO AUTH TOKEN>'

#### Send a push notification

    ua.push_alias(UA_APPKEY, UA_PUSHSECRET, '<some user alias>', 'hello world!', 'yes', '3');

#### Call Apple's Feedback API

    ua.device_token_feedback(UA_APPKEY, UA_PUSHSECRET, '<a recent date in the past>');

#### Deactivate a device

    ua.inactivate_device(UA_APPKEY, UA_PUSHSECRET, '<device apn token>');