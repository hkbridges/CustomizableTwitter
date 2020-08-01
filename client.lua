RegisterCommand("twtname", function(source, args, rawCommand)
    username = args[1]
end)

RegisterCommand("tweet", function(source, args, rawCommand)
    message = table.concat(args, " ")
    if username == nil then
    username = GetPlayerName(PlayerId())
    end
    TriggerEvent("dotweet")
end)


RegisterNetEvent("dotweet")
AddEventHandler("dotweet", function()
    TriggerServerEvent("addTweet", "^3" .. "@"..username ..":" .. " " .. "^7" .. message)
end)

