-- On startup add settings from config.lua
TriggerEvent("es:setDefaultSettings", settings)

-- When player is loaded show the money ( Essentialmode )
AddEventHandler('es:playerLoaded', function(source)
    TriggerEvent('es:getPlayerFromId', source, function(user)
        TriggerClientEvent('es:activateMoney', source, user.getMoney())
    end)
end)