local utility = {}

---@param ... any
utility.Debug = function(...)
    if not Config.Debug then return end

    local args <const> = { ... }
    local append = ""

    for _, v in ipairs(args) do
        append = append .. " " .. tostring(v)
    end

    local template = "^3[%s]^0%s"
    local message = template:format(GetCurrentResourceName(), append)
    print(message)
end

---@param coords vector3
---@return boolean
---@return table
utility.get2DCoordFrom3DCoord = function(coords)
    if not coords then return false, {} end
    local onScreen, x, y = GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
    return onScreen, { left = tostring(x * 100) .. "%", top = tostring(y * 100) .. "%" }
end

utility.showFloatingText = function(coords, msg)
    AddTextEntry('floatingTextNotification', msg)
    SetFloatingHelpTextWorldPosition(1, coords)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp('floatingTextNotification')
    EndTextCommandDisplayHelp(2, false, false, -1)
end

utility.addBlip = function(coords, text, sprite, colour, scale, temporaryBlip)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, colour)
    SetBlipDisplay(blip, 2)
    SetBlipAlpha(blip, 255)
    SetBlipScale(blip, scale)
    SetBlipAsShortRange(blip, false)
    PulseBlip(blip)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
    if temporaryBlip then
        SetTimeout(600 * 1000, function()
            RemoveBlip(blip)
            utility.Debug(("(DEBUG) Blip removed after 600 seconds since the temporaryBlip boolean was set to true once the AddBlip function was called."))
        end)
    end
    return blip
end

return utility
