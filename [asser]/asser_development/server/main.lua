-- Add money to player
TriggerEvent('es:addCommand', 'addmoney', function(source, args, user) 
    -- Amount from argument
    amount = args[1]

    -- Trigger ES event to get player from id
    TriggerEvent('es:getPlayerFromId', source, function(user)

        -- Add the money
        user.addMoney(tonumber(amount))
    end)

end, {help = 'Adds given money to player.'})