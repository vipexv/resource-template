local interface = require "modules.interface.client"

RegisterCommand(("show-nui-%s"):format(GetCurrentResourceName()), function()
    interface.ToggleNuiFrame(true)
    Debug("[command:show-nui] ToggleNuiFrame called and set to true.")
end, false)
