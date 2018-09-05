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

local CKDispensaries = {
  Name = "CannabisKingdomDispensaries", 
  NameText = "Cannabis Kingdom - Dispensaries",
  Author = "EthanMC", 
  Version = "1.1.0",
  VersionN = 110,
  Config = {}
}
local loadfail, mdata, mcfg, ModT = ModRegister(CKDispensaries)
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

  PlaceObj("ProductionGlobal", {
    "InputResource", "Cannabis",
    "BaseInputAmount", 100,
    "InputCapacity", 1000,
    "ProductionType", false,
    "ProductionAmount", 0
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
    "Category", "ProductionGlobal",
    "PropName", "InputResource",
    "Description", T({"Modern Concentrates Upgrade"}),
    "Value", "Dabs"
  })
})
end

function OnMsg.BuildingCompleted(bld)
   if bld.Template == "MedDispensary" then
      bld:AddColorization("MedDispensaryWalls", RGB(85, 100, 70))
   end
end

function OnMsg.DataLoaded()
  PlaceObj("BuildingTemplate", {
  "name", "PotMall",
  "file_name", "PotMall"
}, {
  PlaceObj("BuildingProperties", {
    "Model", "Apartment_02",
    "Name", T({"Cannabis Emporium"}),
    "NamePlural", T({"Cannabis Emporiums"}),
    "Description",  T({"All the cannabis, extracts, and paraphenalia a Tropican could ask for! Requires legalized substances."}),
    "MenuText", T({"Sells recreational cannabis."}),
    "BaseBudgetMin", 100,
    "BaseBudgetMax", 500,
    "asphalt_road", true,
    "TerrainName", "square3",
    "SelectionSound", "supermarket_select_sound",
    "AmbientSound","nightclub_work_sound"
  }),

  PlaceObj("ProductionGlobal", {
    "InputResource", "Cannabis",
    "BaseInputAmount", 150,
    "InputCapacity", 1500,
    "ProductionType", false,
    "ProductionAmount", 0
  }),

  PlaceObj("Construction", {
    "Category", "attractions",
    "Position", 9904,
    "ConstructionCost", 5000,
    "ConstructionPoints", 150,
    "Era",  3
  }),

  PlaceObj("Crime", {
    "BaseAmount", 10,
    "Radius", 20000
  }),

  PlaceObj("StandingComponent", {
    "Type","environmentalists",
    "Amount", 5
  }),

  PlaceObj("StandingComponent", {
    "Type","religious",
    "Amount", -5
  }),

  PlaceObj("Service", {
    "BaseInherentServiceQuality", 50,
    "BaseInherentMaxPopulationServiced", 200,
    "BaseRadius", 15000,
    "BaseWealthRequired", 3,
    "BaseRevenuePer10", 75,
    "ServiceChildren", false
  }),

  PlaceObj("Workplace", {
    "BaseMaxWorkers", 6,
    "BaseInherentEducationRequired", 3,
    "BaseInherentWealthProvided", 4,
    "BaseInherentJobQuality", 70,
    "Manageable", true,
    "WorkerProfession", "Budtender"
  }),

  PlaceObj("Upgrade", {
    "Id", "Premium Glass",
    "Name", T({"Premium Glass"}),
    "Rollover", T({"Start selling imported water pipes, ash trays, and other fine hand blown glass instruments."}),
    "StartTurnedOn",false,
    "Cost",2000,
    "StartingEra",3
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Premium Glass",
    "Category", "Service",
    "PropName","InherentServiceQuality",
    "Description", T({"Premium Glass Upgrade"}),
    "Value", 5
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Premium Glass",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", T({"Premium Glass Upgrade"}),
    "Percent", true,
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Premium Glass",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", T({"Premium Glass Upgrade"}),
    "Percent", true,
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Premium Glass",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", T({"Premium Glass Upgrade"}),
    "Value", 10
  }),

  PlaceObj("Upgrade", {
    "Id", "Free Samples",
    "Name", T({"Free Samples"}),
    "Rollover", T({"Everybody loves free samples El Presidente! It will definitely raise our budget, but the customers love it!"}),
    "Toggle", true,
    "DisabledText",T({"Deactivate to stop providing free samples."}),
    "StartTurnedOn", false,
    "Cost", 500,
    "StartingEra", 3
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Free Samples",
    "Category", "Service",
    "PropName","InherentServiceQuality",
    "Description", T({"Free Samples Upgrade"}),
    "Value", 15
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Free Samples",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", T({"Free Samples Upgrade"}),
    "Percent", true,
    "Value", 25
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Free Samples",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", T({"Free Samples Upgrade"}),
    "Percent", true,
    "Value", 25
  }),

  PlaceObj("Upgrade", {
    "Id", "Smoke Lounge",
    "Name", T({"Smoke Lounge"}),
    "Rollover", T({"Add in a specialized room for customers to sample the goods. Nice seating, special ventilation, and mood lighting like this doesnt come cheap but the customers and employees will love it."}),
    "StartTurnedOn",false,
    "Cost",15000,
    "StartingEra", 4
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Smoke Lounge",
    "Category", "Service",
    "PropName","InherentServiceQuality",
    "Description", T({"Smoke Lounge Upgrade"}),
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Smoke Lounge",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", T({"Smoke Lounge Upgrade"}),
    "Value", 5
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Smoke Lounge",
    "Category", "Service",
    "PropName", "InherentMaxPopulationServiced",
    "Description", T({"Smoke Lounge Upgrade"}),
    "Value", 50
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Smoke Lounge",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", T({"Smoke Lounge Upgrade"}),
    "Percent", true,
    "Value", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Smoke Lounge",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", T({"Smoke Lounge Upgrade"}),
    "Percent", true,
    "Value", 10
  }),

  PlaceObj("Upgrade", {
    "Id","Dank Delivery",
    "Name",T({"Dank Delivery"}),
    "Rollover",T({"Cannabis is delivered right to the customer! Requires an additional staff member. Increases Housing Quality of residences in the vicinity by 10 (does not stack)."}),
    "StartTurnedOn",false,
    "Cost",5000,
    "StartingEra",4
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Dank Delivery",
    "Affected","Residence",
    "Radius",15000,
    "Category","Residence",
    "PropName","InherentHousingQuality",
    "Description", T({"Dank Delivery (Cannabis Emporium Upgrade)"}),
    "Value", 10,
    "Cap", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Dank Delivery",
    "Affected","Residence",
    "Radius",15000,
    "Category","Residence",
    "PropName","InherentEffectiveness",
    "Description", T({"Dank Delivery (Cannabis Emporium Upgrade)"}),
    "Value", 10,
    "Cap", 10
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Dank Delivery",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", T({"Dank Delivery Upgrade"}),
    "Value", 5
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Dank Delivery",
    "Category", "Workplace",
    "PropName", "MaxWorkers",
    "Description", T({"Dank Delivery Upgrade"}),
    "Value", 1
  })
})
end

function OnMsg.BuildingCompleted(bld)
   if bld.Template == "PotMall" then
      bld:AddColorization("PotMallWalls", RGB(85, 100, 70))
   end
end