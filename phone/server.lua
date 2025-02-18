RegisterCommand('givePhone', function(source, args, rawCommand)
    local metadata = {
        deviceId = tostring(math.random(1000000, 9999999))
    }
    exports.ox_inventory:AddItem(source, 'phone', 1, metadata)
end)

RegisterNetEvent('phone:fetchContacts', function()
    local source = source
    local contacts = {} -- Fetch contacts from database or other source
    TriggerClientEvent('phone:receiveContacts', source, contacts)
end)

RegisterNetEvent('phone:fetchRecents', function()
    local source = source
    local recentCalls = {} -- Fetch recent calls from database or other source
    TriggerClientEvent('phone:receiveRecents', source, recentCalls)
end)

RegisterNetEvent('phone:fetchFavorites', function()
    local source = source
    local favorites = {} -- Fetch favorites from database or other source
    TriggerClientEvent('phone:receiveFavorites', source, favorites)
end)
