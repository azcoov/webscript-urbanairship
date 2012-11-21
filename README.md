##Urban Airship Module for Webscript.io

###Integration Example

    local ua = require('azcoov/webscript-urbanairship/ua.lua')
    local UA_APPKEY = '<YOUR URBAIN AIRSHIP APP KEY>'
    local UA_PUSHSECRET = '<YOUR TWILIO AUTH TOKEN>'

    ua.push_alias(UA_APPKEY, UA_PUSHSECRET, '<some user alias>', 'hello world!', 'yes');