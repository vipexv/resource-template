RegisterNetEvent("UIMessage", function(action, data)
    UIMessage(action, data)
    Debug("(netEvent) [UIMessage] \n Action: ", json.encode(action), "\n Data: ", json.encode(data),
        "\n Invoking Resource: ",
        GetInvokingResource())
end)
