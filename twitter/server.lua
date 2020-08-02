RegisterNetEvent("addTweet")
print(prefixColor)
AddEventHandler("addTweet", function(username)
   TriggerClientEvent('chat:addMessage', -1, {
      color = prefixColor,
      multiline = true,
      args = {tweetPrefix.. " " .. username}
   })
end)