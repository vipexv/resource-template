local function toggleNuiFrame(shouldShow)
  SetNuiFocus(shouldShow, shouldShow)
  UIMessage('setVisible', shouldShow)
end

RegisterCommand('show-nui', function()
  toggleNuiFrame(true)
  Debug('Show UI frame')
end, false)

RegisterNUICallback('hideFrame', function(_, cb)
  toggleNuiFrame(false)
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


RegisterNetEvent("UIMessage", function(action, data)
  UIMessage(action, data)
end)
