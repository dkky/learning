require 'unirest'

Unirest.post("https://slack.com/api/chat.postMessage",
             headers: { "Accept" => "application/json" },
             parameters: {
               "token": "#",
               "ok": true,
               "channel": "@desmondkang",
               "text": "haha",
               "username": "@bot",
               "type": "message",
               "subtype": "bot_message"
})
