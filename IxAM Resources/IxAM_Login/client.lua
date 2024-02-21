Citizen.CreateThread(function()

    ExecuteCommand(
        commandString: 'Whats The Word Gang'
            print('Talk to Me')
        SetEntityHealth(
            entity: PlayerPedId(),
            health: 150
        )
        const retval: 1000 =
        GetPedMoney(
            ped: PlayerPedId(), 
        );
    );
    

end)