RegisterNetEvent("UIMessage", function(action, data)
    UIMessage(action, data)
    Debug("(netEvent) [UIMessage] Action: ", json.encode(action), "Data: ", json.encode(data))
end)
