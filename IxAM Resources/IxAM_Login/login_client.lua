local lastLogin = {}

AddEventHandler('playerSpawned', function()
    local source = source
    local playerId = tonumber(source)

    -- Check if the player joined for the first time today
    if not lastLogin[playerId] or os.time() - lastLogin[playerId] >= 24 * 60 * 60 then
        -- Give full health and armor
        SetEntityHealth(GetPlayerPed(-1), 200)
        SetPedArmour(GetPlayerPed(-1), 100)

        -- Give $10,000
        TriggerEvent("es:getPlayerFromId", source, function(user)
            if user then
                user:addMoney(10000)
            end
        end)

        -- Update last login time
        lastLogin[playerId] = os.time()
    end
end)
