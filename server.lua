ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('play_as_ped:getData', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local data = {
        identifier    = xPlayer.identifier,
        group   = xPlayer.getGroup(),

    }
    
    cb(data)
end)
