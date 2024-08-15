local IsDead = false

AddEventHandler('esx:onPlayerDeath', function(data)
    IsDead = true
    SendNUIMessage({
        type = 'open'
    })
    SetNuiFocus(true, true)
end)

AddEventHandler('playerSpawned', function(spawn)
    IsDead = false
    SendNUIMessage({
        type = 'close'
    })
    SetNuiFocus(false, false)
end)

RegisterNUICallback('revive', function(data, cb)
    TriggerEvent('esx_ambulancejob:revive')
    Wait(1000)
    SetEntityCoords(PlayerPedId(), Config.Coords)
end)

RegisterNUICallback('quit', function(data, cb)
    TriggerServerEvent('Kick')
end)


RegisterNetEvent('Perri:KillerName')
AddEventHandler('Perri:KillerName', function(data)
    SendNUIMessage({
        type = 'killfeed',
        killerName = data.killerName
    })
end)
