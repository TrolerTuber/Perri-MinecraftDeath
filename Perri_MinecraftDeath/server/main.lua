

RegisterServerEvent('Kick')
    AddEventHandler('Kick', function()
        DropPlayer(source, Config.LeaveMessage)
end)

RegisterNetEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
    if data.killedByPlayer then
        local killerName = GetPlayerName(data.killerServerId)

        TriggerClientEvent('Perri:KillerName', source, {killerName = killerName, type = 'killfeed'})
    end
end)
