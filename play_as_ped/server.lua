ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('play_as_ped:GetGroup', function(source, cb)
    TriggerEvent('es:getPlayerFromId', source, function(user)
        cb(user.getGroup())
    end)
end)

ESX.RegisterServerCallback('play_as_ped:GetIdentifier', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

    cb(xPlayer.identifier)
end)