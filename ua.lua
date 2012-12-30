local UA_PUSHURL = 'https://go.urbanairship.com/api/push/'
local UA_FEEDBACKURL = 'https://go.urbanairship.com/api/device_tokens/feedback/'
local UA_TOKENSURL = 'https://go.urbanairship.com/api/device_tokens/'

local push_alias = function (UA_APPKEY, UA_PUSHSECRET, alias, message, sound, badge)
    local payload = {
        aps = {
            alert = message,
            sound = sound,
            badge = badge
        },
        aliases = {alias}
    }
    local post_message = json.stringify(payload)
    return  http.request({
        method = "post",
        url = UA_PUSHURL,
        headers = {
            ['Content-Type'] = "application/json"
        },
        auth = {UA_APPKEY, UA_PUSHSECRET},
        data = post_message
    })
end

local device_token_feedback = function (UA_APPKEY, UA_PUSHSECRET, since)
    return  http.request({
        url = UA_FEEDBACKURL,
        headers = {
            ['Content-Type'] = "application/json"
        },
        auth = {UA_APPKEY, UA_PUSHSECRET},
        params = {
            since = since
        }
    })
end

local inactivate_device = function (UA_APPKEY, UA_PUSHSECRET, token)
    return  http.request({
        method = "delete",
        url = UA_TOKENSURL + token,
        headers = {
            ['Content-Type'] = "application/json"
        },
        auth = {UA_APPKEY, UA_PUSHSECRET}
    })
end

return { push_alias = push_alias, device_token_feedback = device_token_feedback }