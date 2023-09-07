QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('mddev:server:SurpriseButton', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local randommoneywhilemo = math.random(Config.WhileOpenPrice1, Config.WhileOpenPrice2)
    
    Player.Functions.AddMoney('cash', randommoneywhilemo)
end)


RegisterNetEvent('mddev:server:sellsc1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc1, Config.RandomPricesc2)
    local amount = 1
     
        Player.Functions.RemoveItem('security_card_01', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['security_card_01'], 'remove', 1)
end)

RegisterNetEvent('mddev:server:sellsc2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc3, Config.RandomPricesc4)
    local amount = 1
     
        Player.Functions.RemoveItem('security_card_03', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['security_card_03'], 'remove', 1)
end)

RegisterNetEvent('mddev:server:sellsc3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc5, Config.RandomPricesc6)
    local amount = 1
     
        Player.Functions.RemoveItem('security_card_04', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['security_card_04'], 'remove', 1)
end)

RegisterNetEvent('mddev:server:sellsc4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc7, Config.RandomPricesc8)
    local amount = 1
     
        Player.Functions.RemoveItem('keyb', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['keyb'], 'remove', 1)
end)

RegisterNetEvent('mddev:server:sellsc5', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc9, Config.RandomPricesc10)
    local amount = 1
     
        Player.Functions.RemoveItem('goldchain', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldchain'], 'remove', 1)
end)

RegisterNetEvent('mddev:server:sellsc6', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc11, Config.RandomPricesc12)
    local amount = 1
     
        Player.Functions.RemoveItem('rolex', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rolex'], 'remove', 1)
end)

RegisterNetEvent('mddev:server:sellsc7', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc13, Config.RandomPricesc14)
    local amount = 1
     
        Player.Functions.RemoveItem('10kgoldchain', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['10kgoldchain'], 'remove', 1)
end)

RegisterNetEvent('mddev:server:sellsc8', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc15, Config.RandomPricesc16)
    local amount = 1
     
        Player.Functions.RemoveItem('goldbar', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'remove', 1)
end)

RegisterNetEvent('mddev:server:sellsc9', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pricerandom = math.random(Config.RandomPricesc17, Config.RandomPricesc18)
    local amount = 1
     
        Player.Functions.RemoveItem('diamond', amount)
        Player.Functions.AddMoney('cash', pricerandom)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['diamond'], 'remove', 1)
end)