local interface = require "modules.interface.client"
local utils = require "modules.utils.shared"
local Debug = utils.Debug

--#region Events
RegisterNetEvent("ResourceName:UIMessage", function(action, data)
    interface.message(action, data)

    Debug("(netEvent) [UIMessage] \n (param) action: ", json.encode(action), "\n (param) data: ", json.encode(data),
        "\n Invoking Resource: ",
        GetInvokingResource())
end)
--#endregion Events

--#region Callbacks
RegisterNuiCallback('hideFrame', function(_, cb)
    interface.toggle(false)
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
    interface.toggle(true)
    Debug("[command:show-nui] ToggleNuiFrame called and set to true.")
end, false)
--#endregion Commands
