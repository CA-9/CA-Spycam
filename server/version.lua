-- Initialize config(s)
local shared = require 'config.shared'

-- Set resource
local resourceName = 'CA-Spycam'
local currentVersion = GetResourceMetadata(resourceName, 'version', 0)
local currentName = GetCurrentResourceName()

-- Pls.. for the love of my analytics :sob:
if currentName == resourceName .. '-main' then
    print("^1[Error]: Please remove the trailing '-main' from your resource folder name^0")
    print("^1[Error]: The resource folder should be named: 'CA-Spycam'^0")
    CreateThread(function()
        while true do
            Wait(60000)
            print("^1[Error]: Please remove the trailing '-main' from your resource folder name^0")
            print("^1[Error]: The resource folder should be named: 'CA-Spycam'^0")
        end
    end)
end

-- Check script version
local function checkversion()
    if not currentVersion then
        print("^1[Error]: Unable to determine current resource version for '" ..resourceName.. "'^0")
        return
    end
    SetTimeout(1000, function()
        PerformHttpRequest('https://api.github.com/repos/ca9/' ..resourceName.. '/releases/latest', function(status, response)
            if status ~= 200 then return end
            response = json.decode(response)
            local latestVersion = response.tag_name
            if not latestVersion or latestVersion == currentVersion then return end
            if latestVersion ~= currentVersion then
                print('^3An update is available for ' ..resourceName.. '^0')
                print('^3Your Version: ^1' ..currentVersion.. '^0 | ^3Latest Version: ^2' ..latestVersion.. '^0')
                print('^3Download the latest release from https://github.com/ca9/'..resourceName..'/releases/'..latestVersion..'^0')
                print('^3For more information about this update visit our Discord: https://discord.gg/ereP2n9Am5^0')
            end
        end, 'GET')
    end)
end

if shared.setup.version then
    checkversion()
end
