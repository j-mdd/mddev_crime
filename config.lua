Config = {}

-- Possbility for calling police while selling items
Config.PerecantagePoliceCallNpc2 = 25
-- Possbility for calling police while talking with first npc 
Config.PerecantagePoliceCallNpc = 50
-- how much the player has to wait before set the waypoint on his Gps
Config.WaitingBeforeSetWaypoint = 10000

-- A price that given to one who find and open the menu to sell items
Config.WhileOpenPrice1 = 10 -- min
Config.WhileOpenPrice2 = 500 -- max
-- security_card_01
Config.RandomPricesc1 = 50 -- min
Config.RandomPricesc2 = 150 -- max
-- security_card_03
Config.RandomPricesc3 = 60 -- min
Config.RandomPricesc4 = 150 -- max
-- security_card_04
Config.RandomPricesc5 = 100 -- min
Config.RandomPricesc6 = 150 -- max
-- keyb
Config.RandomPricesc7 = 50 -- min
Config.RandomPricesc8 = 100 -- max
-- goldchain
Config.RandomPricesc9 = 250 -- min
Config.RandomPricesc10 = 400 -- max
-- rolex
Config.RandomPricesc11 = 350 -- min
Config.RandomPricesc12 = 550 -- max
-- 10kgoldchain
Config.RandomPricesc13 = 400 -- min
Config.RandomPricesc14 = 700 -- max
-- goldbar
Config.RandomPricesc15 = 550 -- min
Config.RandomPricesc16 = 900 -- max
-- diamond
Config.RandomPricesc17 = 700 -- min
Config.RandomPricesc18 = 1000 -- max

-- NPC that gives you the waypoint for NPC2
Config.NPC = {
    model = 'g_m_y_ballasout_01',
    coords = vector4(118.5756, -1951.006, 20.74626, 44.73921),
    scenario = "WORLD_HUMAN_COP_IDLES",
    targetDistance = 2.0,
    freeze = true
}

-- NPC2 Waypoint That you can sell your crime items
Config.NPC2Loc1 = vec3(92.8584, -1979.4701, 20.4538)
Config.NPC2Loc2 = vec3(1192.3259, -1249.1256, 40.3206)
Config.NPC2Loc3 = vec3(1494.8849, 1114.3069, 114.3343)
Config.NPC2Loc4 = vec3(700.9150, 582.3373, 130.4613)
Config.NPC2Loc5 = vec3(-181.4235, -2128.7100, 22.8284)
Config.NPC2Loc6 = vec3(2125.5789, 4763.8970, 41.1280)
Config.NPC2Loc7 = vec3(259.9677, 3176.6140, 42.7479)
Config.NPC2Loc8 = vec3(-2168.8206, 5198.3940, 17.0286)
Config.NPC2Loc9 = vec3(128.2951, 6922.8154, 21.0006)
Config.NPC2Loc10 = vec3(604.6765, -3060.9060, 6.0694)




Config.Menu = {
    id = 'mddev_test',
    title = 'Anonymous Trader',
    slot0 = {
        title = 'Surprise Button',
        icon = 'fas fa-comments-dollar',
        event = 'mddev:client:SurpriseButton',
        arrow = false,
    },
    slot1 = {
        title = 'Trade Card A',
        desc = 'Is this card gonna help me leak ?',
        icon = 'credit-card-alt',
        event = 'mddev:client:sellsc1',
        arrow = false,
    },
    slot2 = {
        title = 'Trade Card C',
        desc = 'Is this card gonna help me leak ?',
        icon = 'credit-card-alt',
        event = 'mddev:client:sellsc2',
        arrow = false,
    },
    slot3 = {
        title = 'Trade Card D',
        desc = 'Is this card gonna help me leak ?',
        icon = 'credit-card-alt',
        event = 'mddev:client:sellsc3',
        arrow = false,
    },
    slot4 = {
        title = 'Trade Key B',
        desc = 'Is this key gonna help me open some door ?',
        icon = 'fas fa-key',
        event = 'mddev:client:sellsc4',
        arrow = false,
    },
    slot5 = {
        title = 'Trade Golden Chain',
        desc = 'I wanna give it to my wife',
        icon = 'fas fa-ring',
        event = 'mddev:client:sellsc5',
        arrow = false,
    },
    slot6 = {
        title = 'Trade Rolex Watch',
        desc = 'damn this is good one btw !',
        icon = 'fas fa-clock',
        event = 'mddev:client:sellsc6',
        arrow = false,
    },
    slot7 = {
        title = 'Trade 10 Gold Chain',
        desc = 'I wanna give it to my wife',
        icon = 'fas fa-ring',
        event = 'mddev:client:sellsc7',
        arrow = false,
    },
    slot8 = {
        title = 'Trade Gold Bar',
        desc = 'Its good deal to give that to Vangilco',
        icon = 'fas fa-coins',
        event = 'mddev:client:sellsc8',
        arrow = false,
    },
    slot9 = {
        title = 'Trade Diamond',
        desc = 'Its good deal to give that to Vangilco',
        icon = 'fas fa-gem',
        event = 'mddev:client:sellsc9',
        arrow = false,
    },
}