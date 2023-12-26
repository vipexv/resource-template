RegisterNUICallback('hideFrame', function(_, cb)
    ToggleNuiFrame(false)
    Debug('(cb) [hideFrame]')
    cb({})
end)

RegisterNUICallback('getClientData', function(data, cb)
    local curCoords = GetEntityCoords(PlayerPedId())

    local retData <const> = { x = curCoords.x, y = curCoords.y, z = curCoords.z }
    cb(retData)
end)
