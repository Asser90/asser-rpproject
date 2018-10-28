TriggerEvent("es:setDefaultSettings", settings)

AddEventHandler('es:playerLoaded', function(source)
    TriggerEvent('es:getPlayerFromId', source, function(user)
        TriggerClientEvent('es:activateMoney', source, user.getMoney())
    end)
end)

TriggerEvent('es:addCommand', 'addmoney', function(source, args, user) 

	amount = args[1]
	
	print(amount)

    TriggerEvent('es:getPlayerFromId', source, function(user)
	print(amount)
        user.addMoney(tonumber(amount))
    end)

end, {help = 'Adds given money to player.'})