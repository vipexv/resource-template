local interface = require "modules.interface.client"

--#region Events
RegisterNetEvent("ResourceName:UIMessage", function(action, data)
    interface.UIMessage(action, data)

    Debug("(netEvent) [UIMessage] \n (param) action: ", json.encode(action), "\n (param) data: ", json.encode(data),
        "\n Invoking Resource: ",
        GetInvokingResource())
end)
--#endregion Events

--#region Callbacks
RegisterNuiCallback('hideFrame', function(_, cb)
    interface.ToggleNuiFrame(false)
    Debug('[nuicb:hideFrame]')

    cb({})
end)

RegisterNuiCallback('getClientData', function(data, cb)
    local curCoords = GetEntityCoords(PlayerPedId())

    local retData <const> = { x = curCoords.x, y = curCoords.y, z = curCoords.z }
    cb(retData)
end)
--#endregion Callbacks


--#region Commands
RegisterCommand(("show-nui-%s"):format(GetCurrentResourceName()), function()
    interface.ToggleNuiFrame(true)
    Debug("[command:show-nui] ToggleNuiFrame called and set to true.")
end, false)
--#endregion Commands