----------------------------------------------------------------------------------------------------
------------------------------------------AddOn NAMESPACE-------------------------------------------
----------------------------------------------------------------------------------------------------

local _, ns = ...
local L = ns.locale

----------------------------------------------------------------------------------------------------
-----------------------------------------------LOCALS-----------------------------------------------
----------------------------------------------------------------------------------------------------

local function GetMapNames(id1, id2)
    if (id1 and id2) then
        return format("%s, %s", C_Map.GetMapInfo(id1).name, C_Map.GetMapInfo(id2).name)
    else
        return C_Map.GetMapInfo(id1).name
    end
end

local Durotar = GetMapNames(12, 1)
local ElwynnForest = GetMapNames(13, 37)
local EasternKingdoms = GetMapNames(13)
local EmeraldDream = GetMapNames(2200)

----------------------------------------------------------------------------------------------------
----------------------------------------------DATABASE----------------------------------------------
----------------------------------------------------------------------------------------------------

local DB = {}
ns.DB = DB

DB.nodes = {
    [2339] = { -- Dornogal

        [44405469] = { icon = "innkeeper", npc = 212370 }, -- Ronesh

        [44866121] = { icon = "transmogrifier", npc = 221848 }, -- Warpweaver Voxin

        [56538941] = { icon = "vendor", npc = 219215 }, -- Hotharn
        [56238899] = { icon = "vendor", npc = 219213 }, -- Gilderann
        [55988856] = { icon = "vendor", npc = 219217 }, -- Velerd
        [56058827] = { icon = "vendor", npc = 219222 }, -- Lalandi

        -- [55665007] = { icon = "mail", label = L["Mailbox"] },
        [52275417] = { icon = "mail", label = L["Mailbox"] },
        [36404844] = { icon = "mail", label = L["Mailbox"] },
        [45095669] = { icon = "mail", label = L["Mailbox"] },
        [56745881] = { icon = "mail", label = L["Mailbox"] },

        [57935496] = { icon = "auctioneer", npc = 219040, sublabel = '' }, -- Auctioneer Prana
        [58135526] = { icon = "auctioneer", npc = 219037, sublabel = '' }, -- Auctioneer Durzin
        [58315554] = { icon = "auctioneer", npc = 219039, sublabel = '' }, -- Auctioneer Zyrgas

        [51655121] = { icon = "portal", label = L["Portal to The Timeways"], level = 80 },

        -- Contender's Gate
        [61408050] = { icon = "vendor", npc = 219216 }, -- Rogurn
        [61588097] = { icon = "reforge", npc = 219073 }, -- Ledonir
        [61898128] = { icon = "vendor", npc = 219212 }, -- Maara

        -- The Forgegrounds
        [56377802] = { icon = "stablemaster", npc = 219376 }, -- Kargand

        [59927546] = { icon = "vendor", npc = 219230 }, -- Erani
        [59827534] = { icon = "vendor", npc = 226756 }, -- Giada Goldleash / SUBLABEL???

        [58537096] = { icon = "vendor", npc = 224294 }, -- Osidion
        [58527064] = { icon = "vendor", npc = 219318 }, -- Jorid

        [60277063] = { icon = "vendor", npc = 219324 }, -- Gerred
        [59177055] = { icon = "vendor", npc = 219379 }, -- Morek

        [59416600] = { icon = "craftingorders", npc = 215258 }, -- Clerk Gretal

        [59476458] = { icon = "bubble", npc = 219223 }, -- Mahra Treebender
        [59496503] = { icon = "mail", label = L["Mailbox"] },

        [59686294] = { icon = "anvil", npc = 219321 }, -- Grotir
        [59656241] = { icon = "vendor", npc = 219319 }, -- Yorda

        [45557983] = { icon = "mail", label = L["Mailbox"] },

        [48057888] = { icon = "rostrum", label = L["Rostrum of Transformation"] },

        [54897587] = { icon = "vendor", npc = 219280 }, -- Durakh
        [52297867] = { icon = "vendor", npc = 219274 }, -- Brakh
        [50597863] = { icon = "anvil", npc = 219273 }, -- Breek
        [47267544] = { icon = "vendor", npc = 219255 }, -- Karbath

        [50346357] = { icon = "catalyst", label = L["The Catalyst"] }, -- The Catalyst

        [46007484] = { icon = "vendor", npc = 219247 }, -- Unak

        [52137978] = { icon = "vendor", npc = 219385 }, -- Nerada

        [57276737] = { icon = "vendor", npc = 219076 }, -- Kornd
        [58726788] = { icon = "vendor", npc = 219317 }, -- Kornak

        -- Lapidarium
        [60046170] = { icon = "barber", npc = 219052 }, -- Wireweaver Grelka

        -- Lapidarium
        [59425735] = { icon = "transmogrifier", npc = 219053 }, -- Warpweaver Dezeeran
        [59015589] = { icon = "void", npc = 219054 }, -- Vaultkeeper Xir

        -- The Fissure
        [64515977] = { icon = "vendor", npc = 219197 }, -- Griftah
        [64806026] = { icon = "vendor", npc = 219065 }, -- Grundaz
        [65715831] = { icon = "mail", label = L["Mailbox"] },

        -- The Knifeblock
        [66895823] = { icon = "vendor", npc = 219311 }, -- Kordan

        -- Madam Goya's Curiosities
        [67036172] = { icon = "auctioneer", npc = 219055 }, -- Madam Goya

        -- Council's Treasury
        [53695161] = { icon = "banker", npc = 219029 }, -- Counter Bardra
        [54455275] = { icon = "banker", npc = 219023 }, -- Counter Targrin
        [55725028] = { icon = "vendor", npc = 219036 }, -- Ardgaz
        [54804955] = { icon = "guildvault", label = L["config_guildvault"] },
        [55865111] = { icon = "guildvault", label = L["config_guildvault"] },

        -- Crafter's Enclave
        [61406596] = { icon = "vendor", npc = 219051 }, -- Lyrendal
        [61286505] = { icon = "craftingorders", npc = 219043 }, -- Clerk Ardran
        [61336533] = { icon = "craftingorders", npc = 219048 }, -- Clerk Pordaz

        -- Mythic Aspirations
        [52684995] = { icon = "vendor", npc = 219226 }, -- Vaskarn
        [52664968] = { icon = "reforge", npc = 219225 }, -- Cuzolth
        -- [53014236] = { icon = "vendor", npc = 219067 }, -- Nathden -- (RE)MOVED

        -- Stoneward's Rise
        [67212200] = { icon = "mail", label = L["Mailbox"] },

        -- Stoneshaper's Atrium
        [59523898] = { icon = "mail", label = L["Mailbox"] },

        -- Keepers Terrace
        [48623071] = { icon = "mail", label = L["Mailbox"] },

        -- Founding Hall
        [37003305] = { icon = "portal", label = L["Portal to Orgrimmar"], note = Durotar, faction = "Horde" },
        [40392793] = { icon = "portal", label = L["Portal to Stormwind"], note = ElwynnForest, faction = "Alliance" },
        [37782986] = { icon = "vendor", npc = 223725 }, -- Randulls Scredpyr / BUGGED
        [37892968] = { icon = "vendor", npc = 223727 }, -- Emissary of the Depths / BUGGED
        [38072940] = { icon = "vendor", npc = 223728 }, -- Auditor Balwurz
        [38212918] = { icon = "vendor", npc = 223726 }, -- Foreman Azap
        [39673497] = { icon = "portaltrainer", npc = 222631, class = "MAGE" }, -- Archmage Celindra

        -- Alchemy
        [47028189] = { icon = "trainer", npc = 219092, profession = 171, picon = "alchemy" }, -- Tarig
        [47318220] = { icon = "vendor", npc = 219091, profession = 171, picon = "alchemy" }, -- Grink

        -- Enchanting
        [53618274] = { icon = "trainer", npc = 219085, profession = 333, picon = "enchanting" }, -- Nagad
        [53008318] = { icon = "vendor", npc = 219086, profession = 333, picon = "enchanting" }, -- Llande

        -- Fishing, profession=356
        [51023259] = { icon = "vendor", npc = 219105, picon = "fishing" }, -- Hinodin
        [50893262] = { icon = "trainer", npc = 219106, picon = "fishing" }, -- Drokar

        -- Herbalism
        [44438048] = { icon = "trainer", npc = 219101, profession = 182, picon = "herbalism" }, -- Akdan
        [44348099] = { icon = "vendor", npc = 219093, profession = 182, picon = "herbalism" }, -- Vorig

        -- Inscription
        [48978232] = { icon = "trainer", npc = 219090, profession = 773, picon = "inscription" }, -- Brrigan
        [48988208] = { icon = "vendor", npc = 219089, profession = 773, picon = "inscription" }, -- Kardu
        [48767087] = { icon = "vendor", npc = 219249, profession = 773, picon = "inscription" }, -- Dogan

        -- Juwe
        [49758219] = { icon = "trainer", npc = 219087, profession = 755, picon = "jewelcrafting" }, -- Makir
        [49828300] = { icon = "vendor", npc = 219088, profession = 755, picon = "jewelcrafting" }, -- Uthaga

        -- Leatherworking
        [55346913] = { icon = "vendor", npc = 219081, profession = 165, picon = "leatherworking" }, -- Krinn
        [55216824] = { icon = "trainer", npc = 219080, profession = 165, picon = "leatherworking" }, -- Marbb

        -- Skinning
        [55026660] = { icon = "vendor", npc = 219082, profession = 393, picon = "skinning" }, -- Kradan
        [55136704] = { icon = "trainer", npc = 219083, profession = 393, picon = "skinning" }, -- Ginnad
        [55176624] = { icon = "trainer", npc = 226785, profession = 393, picon = "skinning" }, -- Kondal Huntsworn / BUGGED

        -- Tailor
        [55717443] = { icon = "vendor", npc = 219100, profession = 197, picon = "tailoring" }, -- Berred
        [55637416] = { icon = "trainer", npc = 219094, profession = 197, picon = "tailoring" }, -- Kotag

        -- Blacksmith
        [49417404] = { icon = "trainer", npc = 223644, profession = 164, picon = "blacksmithing" }, -- Darean
        [48847283] = { icon = "vendor", npc = 223643, profession = 164, picon = "blacksmithing" }, -- Borgos

        -- Engineer
        [49476542] = { icon = "trainer", npc = 219099, profession = 202, picon = "engineering" }, -- Thermalseer Arhdas
        [49546506] = { icon = "vendor", npc = 219098, profession = 202, picon = "engineering" }, -- Supply Foreman Drezmol

        -- Mining
        [53296158] = { icon = "trainer", npc = 219097, profession = 186, picon = "mining" }, -- Tarib
        [53876138] = { icon = "anvil", npc = 219096, profession = 186, picon = "mining" }, -- Gareb

        -- Cooking, profession=185
        [43785405] = { icon = "trainer", npc = 219104, picon = "cooking" }, -- Athodas
        [43105384] = { icon = "vendor", npc = 219103, picon = "cooking" } -- Kronzon
    }

} -- DB ENDE
