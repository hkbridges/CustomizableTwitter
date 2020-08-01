RegisterNetEvent("addTweet")
AddEventHandler("addTweet", function(username)
   TriggerClientEvent('chat:addMessage', -1, {
      color = {66, 206, 245},
      multiline = true,
      args = {"[Twitter] " .. username}
   })
end)
   