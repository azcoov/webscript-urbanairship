local UA_PUSHURL = 'https://go.urbanairship.com/api/push/'

local push_alias = function (UA_APPKEY, UA_PUSHSECRET, alias, message, sound)
    local payload = {
        aps = {
            alert = message,
            sound = sound
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
