---@param action string The action you wish to target
---@param data any The data you wish to send along with this action
function UIMessage(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end

function ToggleNuiFrame(shouldShow)
    SetNuiFocus(shouldShow, shouldShow)
    UIMessage('setVisible', shouldShow)
end
