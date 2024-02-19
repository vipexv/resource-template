local nui = {}


---@param action string The action you wish to target
---@param data any The data you wish to send along with this action
nui.UIMessage = function(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end

---@param shouldShow boolean
nui.ToggleNuiFrame = function(shouldShow)
    SetNuiFocus(shouldShow, shouldShow)
    nui.UIMessage("setVisible", shouldShow)
end

return nui
