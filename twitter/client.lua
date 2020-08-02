RegisterCommand(nameCommand, function(source, args, rawCommand)
    username = args[1]
    notify("~o~Handle set to".. "~w~" .." @".. username)
end)

RegisterCommand(tweetCommand, function(source, args, rawCommand)
    message = table.concat(args, " ")
    if username == nil then
    username = GetPlayerName(PlayerId())
    end
    if message == "" then
        notify("~r~You must add a message to your tweet.")
    else
    TriggerEvent("dotweet")
    end
end)


RegisterNetEvent("dotweet")
AddEventHandler("dotweet", function()
    TriggerServerEvent("addTweet", handleColor .. handleIdentifier..username ..":" .. " " .. messageColor .. message)
end)

function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end