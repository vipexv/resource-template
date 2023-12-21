RegisterNUICallback('hideFrame', function(_, cb)
    ToggleNuiFrame(false)
    Debug('Hide NUI frame')
    cb({})
end)

RegisterNUICallback('getClientData', function(data, cb)
    Debug('Data sent by React', json.encode(data))

    -- Lets send back client coords to the React frame for use
    local curCoords = GetEntityCoords(PlayerPedId())

    local retData <const> = { x = curCoords.x, y = curCoords.y, z = curCoords.z }
    cb(retData)
end)
