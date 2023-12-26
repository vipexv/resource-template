if not LoadResourceFile(GetCurrentResourceName(), 'web/dist/index.html') then
    local err =
    'Unable to load UI. Build vHud or download the latest release.\n https://github.com/vipexv/vHud/releases/latest'
    print(err)
end

VersionCheck("")
