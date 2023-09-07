QBCore = exports['qb-core']:GetCoreObject()

local Perecantage = math.random(1, 100)

function CallPoliceNpc()
  if Perecantage >= Config.PerecantagePoliceCallNpc then
  exports['ps-dispatch']:SuspiciousActivity()
  else return end
end


function CallPoliceNpc2()
    if Perecantage >= Config.PerecantagePoliceCallNpc2 then
    exports['ps-dispatch']:DrugSale()
    else return end
end

RegisterNetEvent('mddev:client:NpcWaypointReq', function()
  CallPoliceNpc()
  QBCore.Functions.Progressbar('request_waypoint', 'Talking to this Buddy', 5000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
}, {}, {}, {}, function()
  Wait(100)
  QBCore.Functions.Notify('Just wait !', "primary", 500)

  Wait(Config.WaitingBeforeSetWaypoint)

  QBCore.Functions.Notify('Check you Gps !', "success", 600)
NpcsLocations()
   end)
end)

exports['qb-target']:SpawnPed({
    model = Config.NPC['model'],
    coords = Config.NPC['coords'],
    minusOne = true,
    freeze = Config.NPC['freeze'],
    invincible = false,
    blockevents = false,
    scenario = Config.NPC['scenario'],
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:NpcWaypointReq',
                icon = "fas fa-user-secret",
                label = "Talk to this buddy",
            }
        },
    distance = Config.NPC['targetDistance'],
    },
    spawnNow = true,
  })

  local mddev_menu = {
    id = Config.Menu['id'],
    title = Config.Menu['title'],
    options = {Config.Menu.slot1, Config.Menu.slot2, Config.Menu.slot3, Config.Menu.slot4, Config.Menu.slot5, Config.Menu.slot6, Config.Menu.slot7, Config.Menu.slot8, Config.Menu.slot9},
  }

  lib.registerContext({
    id = Config.Menu['id'],
    title = Config.Menu['title'],
    options = {
      {
        title = Config.Menu.slot0['title'],
        icon = Config.Menu.slot0['icon'],
        event = Config.Menu.slot0['event'],
        arrow = Config.Menu.slot0['arrow'],
        onSelect = function()
          mddev_menu.options.disabled = true
          lib.registerContext({mddev_menu})
      end,
      },
      {
        title = Config.Menu.slot1['title'],
        description = Config.Menu.slot1['desc'],
        icon = Config.Menu.slot1['icon'],
        event = Config.Menu.slot1['event'],
        arrow = Config.Menu.slot1['arrow'],
      },
      {
        title = Config.Menu.slot2['title'],
        description = Config.Menu.slot2['desc'],
        icon = Config.Menu.slot2['icon'],
        event = Config.Menu.slot2['event'],
        arrow = Config.Menu.slot2['arrow'],
      },
      {
        title = Config.Menu.slot3['title'],
        description = Config.Menu.slot3['desc'],
        icon = Config.Menu.slot3['icon'],
        event = Config.Menu.slot3['event'],
        arrow = Config.Menu.slot3['arrow'],
      },
      {
        title = Config.Menu.slot4['title'],
        description = Config.Menu.slot4['desc'],
        icon = Config.Menu.slot4['icon'],
        event = Config.Menu.slot4['event'],
        arrow = Config.Menu.slot4['arrow'],
      },
      {
        title = Config.Menu.slot5['title'],
        description = Config.Menu.slot5['desc'],
        icon = Config.Menu.slot5['icon'],
        event = Config.Menu.slot5['event'],
        arrow = Config.Menu.slot5['arrow'],
      },
      {
        title = Config.Menu.slot6['title'],
        description = Config.Menu.slot6['desc'],
        icon = Config.Menu.slot6['icon'],
        event = Config.Menu.slot6['event'],
        arrow = Config.Menu.slot6['arrow'],
      },
      {
        title = Config.Menu.slot7['title'],
        description = Config.Menu.slot7['desc'],
        icon = Config.Menu.slot7['icon'],
        event = Config.Menu.slot7['event'],
        arrow = Config.Menu.slot7['arrow'],
      },
      {
        title = Config.Menu.slot8['title'],
        description = Config.Menu.slot8['desc'],
        icon = Config.Menu.slot8['icon'],
        event = Config.Menu.slot8['event'],
        arrow = Config.Menu.slot8['arrow'],
      },
      {
        title = Config.Menu.slot9['title'],
        description = Config.Menu.slot9['desc'],
        icon = Config.Menu.slot9['icon'],
        event = Config.Menu.slot9['event'],
        arrow = Config.Menu.slot9['arrow'],
      },
    }
  })

  RegisterNetEvent('mddev:client:OpenMenu', function()
    lib.showContext(Config.Menu['id'])
  end)

  RegisterNetEvent('mddev:client:SurpriseButton', function()
    CallPoliceNpc2()
    TriggerServerEvent('mddev:server:SurpriseButton')
    QBCore.Functions.Notify('This is your prize for founding me, now becareful from cop !', "primary", 25)
  end)

  RegisterNetEvent('mddev:client:sellsc1', function()
    if QBCore.Functions.HasItem('security_card_01', 1) then
    TriggerServerEvent('mddev:server:sellsc1')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have Card A to trade using it !', "error", 10)
    end
  end)

  RegisterNetEvent('mddev:client:sellsc2', function()
    if QBCore.Functions.HasItem('security_card_03', 1) then
    TriggerServerEvent('mddev:server:sellsc2')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have Card C to trade using it !', "error", 10)
    end
  end)

  RegisterNetEvent('mddev:client:sellsc3', function()
    if QBCore.Functions.HasItem('security_card_04', 1) then
    TriggerServerEvent('mddev:server:sellsc3')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have Card D to trade using it !', "error", 10)
    end
  end)

  RegisterNetEvent('mddev:client:sellsc4', function()
    if QBCore.Functions.HasItem('keyb', 1) then
    TriggerServerEvent('mddev:server:sellsc4')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have Key B to trade using it !', "error", 10)
    end
  end)

  RegisterNetEvent('mddev:client:sellsc5', function()
    if QBCore.Functions.HasItem('goldchain', 1) then
    TriggerServerEvent('mddev:server:sellsc5')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have Golden Chain to trade using it !', "error", 10)
    end
  end)

  RegisterNetEvent('mddev:client:sellsc6', function()
    if QBCore.Functions.HasItem('rolex', 1) then
    TriggerServerEvent('mddev:server:sellsc6')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have Rolex Watch to trade using it !', "error", 15)
    end
  end)

  RegisterNetEvent('mddev:client:sellsc7', function()
    if QBCore.Functions.HasItem('10kgoldchain', 1) then
    TriggerServerEvent('mddev:server:sellsc7')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have 10k Gold Chain to trade using it !', "error", 15)
    end
  end)

  RegisterNetEvent('mddev:client:sellsc8', function()
    if QBCore.Functions.HasItem('goldbar', 1) then
    TriggerServerEvent('mddev:server:sellsc8')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have Gold Bar to trade using it !', "error", 15)
    end
  end)

  RegisterNetEvent('mddev:client:sellsc9', function()
    if QBCore.Functions.HasItem('diamond', 1) then
    TriggerServerEvent('mddev:server:sellsc9')
    CallPoliceNpc2()
     else
    QBCore.Functions.Notify('You dont have Diamond to trade using it !', "error", 15)
    end
  end)

  function NpcsLocations()
    local randomnpc2 = math.random(1, 10)

    if randomnpc2 == 1 then
        SetNewWaypoint(Config.NPC2Loc1)
        NPCLocation1()
    elseif randomnpc2 == 2 then
        SetNewWaypoint(Config.NPC2Loc2)
        NPCLocation2()
    elseif randomnpc2 == 3 then
        SetNewWaypoint(Config.NPC2Loc3)
        NPCLocation3()
    elseif randomnpc2 == 4 then
        SetNewWaypoint(Config.NPC2Loc4)
        NPCLocation4()
    elseif randomnpc2 == 5 then
        SetNewWaypoint(Config.NPC2Loc5)
        NPCLocation5()
    elseif randomnpc2 == 6 then
        SetNewWaypoint(Config.NPC2Loc6)
        NPCLocation6()
    elseif randomnpc2 == 7 then
        SetNewWaypoint(Config.NPC2Loc7)
        NPCLocation7()
    elseif randomnpc2 == 8 then
        SetNewWaypoint(Config.NPC2Loc8)
        NPCLocation8()
    elseif randomnpc2 == 9 then
        SetNewWaypoint(Config.NPC2Loc9)
        NPCLocation9()
    elseif randomnpc2 == 10 then
        SetNewWaypoint(Config.NPC2Loc10)
        NPCLocation10()
    end
  end

  function NPCLocation1()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(92.8584, -1979.4701, 20.4538, 64.8764),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation2()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(1192.3259, -1249.1256, 40.3206, 0.8175),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation3()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(1494.8849, 1114.3069, 114.3343, 101.6172),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation4()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(700.9150, 582.3373, 130.4613, 103.9710),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation5()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(-181.4235, -2128.7100, 22.8284, 283.3252),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation6()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(2125.5789, 4763.8970, 41.1280, 112.1695),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation7()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(259.9677, 3176.6140, 42.7479, 274.9677),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation8()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(-2168.8206, 5198.3940, 17.0286, 199.5992),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation9()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(128.2951, 6922.8154, 21.0006, 225.7026),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end

function NPCLocation10()
  exports['qb-target']:SpawnPed({
    model = 'g_m_y_ballasout_01',
    coords = vec4(604.6765, -3060.9060, 6.0694, 262.1088),
    minusOne = true,
    freeze = false,
    invincible = false,
    blockevents = false,
    scenario = "WORLD_HUMAN_DRUG_DEALER",
    flag = 1,
    target = {
        options = {
            {
                type = "client",
                event = 'mddev:client:OpenMenu',
                icon = "fas fa-user-secret",
                label = "Talk to this anonymous trader",
            }
        },
    distance = 2.0,
    },
    spawnNow = true,
  })
end
        