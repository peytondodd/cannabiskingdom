--[[
__________________________________________________________________________________________________________________________________________________________________________
|                                       |                                                                                                                                |
|                   |                   |                                                                                                                                |
|                  |.|                  |                                                                                                                                |
|                  |.|                  |                                                                                                                                |
|                 |\./|                 |                                                                                                                                |
|                 |\./|                 |                                                                                                                                |
| .               |\./|               . |  ██████╗ █████╗ ███╗   ██╗███╗   ██╗ █████╗ ██████╗ ██╗███████╗    ██╗  ██╗██╗███╗   ██╗ ██████╗ ██████╗  ██████╗ ███╗   ███╗  |
|  \^.\          |\\.//|          /.^/  | ██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔══██╗██╔══██╗██║██╔════╝    ██║ ██╔╝██║████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗████╗ ████║  |
|   \--.|\       |\\.//|       /|.--/   | ██║     ███████║██╔██╗ ██║██╔██╗ ██║███████║██████╔╝██║███████╗    █████╔╝ ██║██╔██╗ ██║██║  ███╗██║  ██║██║   ██║██╔████╔██║  |
|     \--.| \    |\\.//|    / |.--/     | ██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══██║██╔══██╗██║╚════██║    ██╔═██╗ ██║██║╚██╗██║██║   ██║██║  ██║██║   ██║██║╚██╔╝██║  |
|      \---.|\    |\./|    /|.---/      | ╚██████╗██║  ██║██║ ╚████║██║ ╚████║██║  ██║██████╔╝██║███████║    ██║  ██╗██║██║ ╚████║╚██████╔╝██████╔╝╚██████╔╝██║ ╚═╝ ██║  |
|         \--.|\  |\./|  /|.--/         |  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═════╝ ╚═╝╚══════╝    ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝  |
|            \ .\  |.|  /. /            |                                                                                                                   DISPENSARY   |
|  _ -_^_^_^_-  \ \\ // /  -_^_^_^_- _  |                                                          by EthanMC                                                            |
|    - -/_/_/- ^_^/| |\^_^ -\_\_\- -    |                                                                                                                                |
|              /_ / | \ _\              |                                                                                                                                |
|                   |                   |                                                                                                                      (C) 2018  |
|_______________________________________|________________________________________________________________________________________________________________________________|

--]]

local MyMod = {
  Name = "CannabisKingdomDispensaries", 
  NameText = "Cannabis Kingdom - Dispensaries",
  Author = "EthanMC", 
  Version = "1.0.0",
  VersionN = 100,
  Config = {}
}
local loadfail, mdata, mcfg, ModT = ModRegister(MyMod)
if loadfail then
  DebugPrint(loadfail .. "\n")
  return
end

function OnMsg.DataLoaded()
  PlaceObj("BuildingTemplate", {
  "name", "MedDispensary",
  "file_name", "MedDispensary"
}, {
  PlaceObj("BuildingProperties", {
    "Model", "Clinic",
    "Name", T({"Medical Cannabis Dispensary"}),
    "NamePlural", T({"Medical Cannabis Dispensaries"}),
    "Description",  T({"Distribute cannabis as natural medicine to the Tropican populace."}),
    "MenuText", T({"Provides healthcare using cannabis."}),
    "BaseBudgetMin", 60,
    "BaseBudgetMax", 160,
    "asphalt_road", true,
    "TerrainName", "square1"
  }),

  PlaceObj("ProductionPower", {
    "InputResource", "Cannabis",
    "BaseInputAmount", 100,
    "InputCapacity", 1000,
    "BasePowerAmount", 0
  }),

  PlaceObj("Construction", {
    "Category", "serviceswelfare",
    "Position", 9901,
    "ConstructionCost", 5000,
    "ConstructionPoints", 150,
    "Era",  1
  }),

  PlaceObj("Crime", {
    "BaseAmount", 1
  }),

  PlaceObj("StandingComponent", {
    "Type","environmentalists",
    "Amount", 5
  }),

  PlaceObj("Service", {
    "ServiceProvided","Healthcare",
    "BaseInherentServiceQuality",30,
    "BaseInherentMaxPopulationServiced",150,
    "BaseRadius",15000,
    "BaseRevenuePer10",20,
    "ServiceChildren",true
  }),

  PlaceObj("Workplace", {
    "BaseMaxWorkers",3,
    "BaseInherentEducationRequired",3,
    "BaseInherentWealthProvided",3,
    "BaseInherentJobQuality",60,
    "Manageable",true,
    "WorkerProfession","Budtender"
  }),

  PlaceObj("Upgrade", {
    "Id", "Colonial Elixers",
    "Name", T({"Colonial Elixers"}),
    "Rollover", T({"Train your budtenders to extract cannabis into alcohol to make more potent medicines."}),
    "StartTurnedOn",false,
    "Cost",3000,
    "StartingEra",1
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Colonial Elixers",
    "Category", "Service",
    "PropName","InherentServiceQuality",
    "Description", T({"Colonial Elixers Upgrade"}),
    "Value", 20
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Colonial Elixers",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", T({"Colonial Elixers Upgrade"}),
    "Percent", true,
    "Value", 20
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Colonial Elixers",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", T({"Colonial Elixers Upgrade"}),
    "Percent", true,
    "Value", 20
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Colonial Elixers",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", T({"Colonial Elixers Upgrade"}),
    "Value", 15
  }),

    PlaceObj("Upgrade", {
    "Id", "Eastern Medicine",
    "Name", T({"Eastern Medicine"}),
    "Rollover", T({"New reserach out of South Asia has shown us that cannabis can be used to treat asthma, bronchitis and loss of appetite El Presidente! We must spread the news at once."}),
    "StartTurnedOn",false,
    "Cost",6000,
    "StartingEra",2
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Eastern Medicine",
    "Category", "Service",
    "PropName","InherentServiceQuality",
    "Description", T({"Eastern Medicine Upgrade"}),
    "Value", 20
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Eastern Medicine",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", T({"Eastern Medicine Upgrade"}),
    "Percent", true,
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Eastern Medicine",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", T({"Eastern Medicine Upgrade"}),
    "Percent", true,
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Eastern Medicine",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", T({"Eastern Medicine Upgrade"}),
    "Value", 5
  }),

    PlaceObj("Upgrade", {
    "Id", "Advanced Research",
    "Name", T({"Advanced Research"}),
    "Rollover", T({"A scientist from Jerusalem discovered the active ingredient in cannabis. He calls it THC El Presidente, surley we can use this for our patients."}),
    "StartTurnedOn",false,
    "Cost",8000,
    "StartingEra",2
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Advanced Research",
    "Category", "Service",
    "PropName","InherentServiceQuality",
    "Description", T({"Advanced Research Upgrade"}),
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Advanced Research",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", T({"Advanced Research Upgrade"}),
    "Percent", true,
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Advanced Research",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", T({"Advanced Research Upgrade"}),
    "Percent", true,
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Advanced Research",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", T({"Advanced Research Upgrade"}),
    "Value", 5
  }),

    PlaceObj("Upgrade", {
    "Id", "Modern Concentrates",
    "Name", T({"Modern Concentrates"}),
    "Rollover", T({"There are so many ways to consume cannabis now Presidente! We should start providing our patients a safer way to medicate. Requires dabs."}),
    "StartTurnedOn",false,
    "Cost",10000,
    "StartingEra",2
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Modern Concentrates",
    "Category", "Service",
    "PropName","InherentServiceQuality",
    "Description", T({"Modern Concentrates Upgrade"}),
    "Value", 20
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Modern Concentrates",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", T({"Modern Concentrates Upgrade"}),
    "Value", 20
  }),
    PlaceObj("ApplyModifier", {
    "EnabledBy", "Modern Concentrates",
    "Category", "ProductionPower",
    "PropName", "InputResource",
    "Description", T({"Modern Concentrates Upgrade"}),
    "Value", "Dabs"
  })
})
end

function OnMsg.BuildingCompleted(bld)
   if bld.Template == "MedDispensary" then
      bld:AddColorization("MedDispensaryWalls", RGB(0, 93, 46))
   end
end