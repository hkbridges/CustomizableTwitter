RegisterNetEvent("dotweet")
AddEventHandler("dotweet", function()
   TriggerEvent("addTweet", fulluser, fullmessage)
end)

RegisterNetEvent("namelogging")
AddEventHandler("namelogging", function(tusername, logname)
   if webhook then
      PerformHttpRequest(webhookLink, function(err, text, headers) end, 'POST', json.encode({username = "Twitter Name Change", content = "```".. logname.. "" .. " set their handle to "..tusername .. "```"}), { ['Content-Type'] = 'application/json' })
   end
end)

RegisterNetEvent("tweetlogging")
AddEventHandler("tweetlogging", function(tusername, message, loggingname)
   if webhook then
      PerformHttpRequest(webhookLink, function(err, text, headers) end, 'POST', json.encode({username = "Twitter Logs", content = "```".. "".. loggingname.. "" .. " tweeted as @".. tusername .. " | " .. '"' .. message .. '"'.. "```"}), { ['Content-Type'] = 'application/json' })
   end
end)

function notify(msg)
   SetNotificationTextEntry("STRING")
   AddTextComponentString(msg)
   DrawNotification(true, false)
end

RegisterNetEvent("addTweet")
AddEventHandler("addTweet", function(fulluser, fullmessage)
   TriggerClientEvent('chat:addMessage', -1, {
      templateId = 'tweet',
      color = prefixColor,
      multiline = true,
      args = {tweetPrefix.. " " .. fulluser, fullmessage}
   })
end)

