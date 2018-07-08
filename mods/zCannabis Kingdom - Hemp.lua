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
|            \ .\  |.|  /. /            |                                                                                                                         HEMP   |
|  _ -_^_^_^_-  \ \\ // /  -_^_^_^_- _  |                                                          by EthanMC                                                            |
|    - -/_/_/- ^_^/| |\^_^ -\_\_\- -    |                                                                                                                                |
|              /_ / | \ _\              |                                                                                                                                |
|                   |                   |                                                                                                                      (C) 2018  |
|_______________________________________|________________________________________________________________________________________________________________________________|

--]]

local MyMod = {
	Name = "CannabisKingdomHEMP",
	NameText = "Cannabis Kingdom - Hemp",
	Author = "EthanMC",
	Version = "1.0.0",
	VersionN = 100,
	Config = {
		-- Hemp Modifiers ###########################################################################
		Hemp_Price_Era_1 = {Type = "number",Default = 1600,RangeMin = 1,RangeMax = 100000},
		Hemp_Price_Era_2 = {Type = "number",Default = 2200,RangeMin = 1,RangeMax = 100000},
		Hemp_Price_Era_3 = {Type = "number",Default = 2000,RangeMin = 1,RangeMax = 100000},
		Hemp_Price_Era_4 = {Type = "number",Default = 2100,RangeMin = 1,RangeMax = 100000},
		Hemp_Price_Era_5 = {Type = "number",Default = 2200,RangeMin = 1,RangeMax = 100000},
		-- ###########################################################################################
	}
}
local loadfail, mdata, mcfg, ModT = ModRegister(MyMod)
if loadfail then
	DebugPrint(loadfail .. "\n")
	return
end

-- Create Resources ##################################################################################
OnMsg.ClassesPreprocess = function()

	CreateNewResource({
		Id = "Hemp",
		Name = ModT("Resource_Hemp","Hemp"),
		PriceByAge = GetPrices("Hemp"),
		IsIndustry = true,
		IsProcessed = true
	})
end
-- Add Factory Upgrades ############################################################################
local CannabisUpgrades = {
	{
		Buildings = {"TextileMill"},
		Upgrades = {
			HempFibers = {
				Name = ModT("Upgrade_HempFibers","Hemp Fiber Blend"),
				Rollover = ModT("Rollover_HempFibers","Infuse your cloth with hemp fibers.\nBudget: +100\nWorkers: +1\nEffectiveness: +10\nEnvironmentalists +3"),
				DisabledText = ModT("Disabled_HempFibers","Shut down the hemp line."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = 3}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_HempFibers","Hemp Fibers"),Value = 1},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_HempFibers","Hemp FIbers"),Value = 10},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_HempFibers","Hemp Fibers"),Value = 100},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_HempFibers","Hemp Fibers"),Value = 100}
				},
				RawAdd = {
					{
						Component = "Production",
						InputResource1 = "Hemp", 
						BaseInputAmount1 = 400,
						InputCapacity1 = 2000,
						InputResource2 = "Wool", 
						BaseInputAmount2 = 200,
						InputCapacity2 = 1000,
						InputResource3 = "Cotton", 
						BaseInputAmount3 = 200,
						InputCapacity3 = 1000,
						OutputResource = "Cloth",
						BaseOutputAmount = 800,
						OutputCapacity = 6000
					},
				}
			}
		}
	},
	{
		Buildings = {"FashionCompany"},
		Upgrades = {
			HempApparel = {
				Name = ModT("Upgrade_HempApparel","Hemp Fiber Blend"),
				Rollover = ModT("Rollover_HempApparel","Infuse your clothing with hemp fibers.\nBudget: +200\nWorkers: +1\nEffectiveness: +10\nEnvironmentalists +3"),
				DisabledText = ModT("Disabled_HempApparel","Shut down the hemp line."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = 3}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_HempApparel","Hemp Apparel"),Value = 1},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_HempApparel","Hemp Apparel"),Value = 10},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_HempApparel","Hemp Apparel"),Value = 200},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_HempApparel","Hemp Apparel"),Value = 200}
				},
				RawAdd = {
					{
						Component = "Production",
						InputResource1 = "Hemp", 
						BaseInputAmount1 = 400,
						InputCapacity1 = 2000,
						InputResource2 = "Cloth", 
						BaseInputAmount2 = 200,
						InputCapacity2 = 1000,
						OutputResource = "Apparel",
						BaseOutputAmount = 800,
						OutputCapacity = 6000
					},
				}
			}
		}
	},
}

-- Load Trade Routes & Upgrades ###############################################################################################################
OnMsg.DataLoaded = function()
	UpgradeMaker(CannabisUpgrades)
	CreateTrade("Hemp","West India Company",1,1,125,"The Crown",5,"",0,"",0)
	CreateTrade("Hemp","Smugglers",1,1,125,"The Crown",-5,"",0,"",0)
	CreateTrade("Hemp","Allies",2,2,125,"Allies",10,"Axis",-10,"",0)
	CreateTrade("Hemp","Axis",2,2,125,"Axis",10,"Allies",-10,"",0)
	CreateTrade("Hemp","Smugglers",2,2,125,"Allies",-5,"Axis",-5,"",0)
	CreateTrade("Hemp","USA",3,3,125,"USA",10,"USSR",-10,"",0)
	CreateTrade("Hemp","USSR",3,3,125,"USA",-10,"USSR",10,"",0)
	CreateTrade("Hemp","Smugglers",3,3,125,"USA",-5,"USSR",-5,"",0)
end

-- New Building: Biofuel Plant ##############################################################################################################
function OnMsg.DataLoaded()
PlaceObj("BuildingTemplate", {
  "name", "BiofuelPlant",
  "file_name", "BiofuelPlant"
}, {
  PlaceObj("BuildingProperties", {
    "Model", "ChocolateFactory",
    "Flammable", false,
    "Name", T({"Biofuel Plant"}),
    "NamePlural", T({"Biofuel Plants"}),
    "Description",  T({"While in most parts of the world electricity is considered a necessity, in Tropico it is a precious luxury. People with access to electricity savor it like the fine delicacy it is and tell stories to their grandchildren about the time when they touched a live wire or saw a glowing light bulb. Indeed, if it was readily available for everyone, most will probably be nostalgic about the good old times when pearls were not given to the swine."}),
    "MenuText", T({"Produces Electricity from Hemp. Consumers with higher budget are serviced preferentially."}),
    "Overlay", "Electricity",
    "BaseBudgetMin", 100,
    "BaseBudgetMax", 210,
    "input_pile", "ResourceBagsHemp",
    "asphalt_road", true,
    "TerrainName", "square2",
    "AmbientSound", "rumdistillery_work_sound"
  }),
  PlaceObj("ProductionPower", {
    "InputResource", "Hemp",
    "BaseInputAmount", 200,
    "InputCapacity", 1000,
    "BasePowerAmount", 500
  }),
  PlaceObj("Construction", {
    "Research", "5.5. Power Plant",
    "Position", 9903,
    "Category", "infrastructure",
    "ConstructionCost", 14000,
    "ConstructionPoints", 900,
    "Era",  2
  }),
  PlaceObj("Pollution", {
    "BaseAmount",  5,
    "Radius", 10000
  }),
  PlaceObj("PowerDistributor", nil),
  PlaceObj("StandingComponent", {
    "Type", "environmentalists",
    "Amount", 10
  }),
  PlaceObj("Workplace", {
    "BaseMaxWorkers", 6,
    "BaseInherentEducationRequired", 4,
    "BaseInherentWealthProvided", 4,
    "BaseInherentJobQuality", 60,
    "Manageable", true,
    "WorkerProfession", "Engineer"
  }),
  PlaceObj("Upgrade", {
    "Id", "Safest Work Environment",
    "Name", T({"Central Air Conditioning"}),
    "Rollover", T({"Job Quality is increased by 20."}),
    "StartTurnedOn",false,
    "Cost",5000,
    "StartingEra",3
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy","Safest Work Environment",
    "Category","Workplace",
    "PropName","InherentJobQuality",
    "Description", T({"Central Air Conditioning Upgrade"}),
    "Value", 20
  })
})
end

-- New Building: Hemp Factory ##############################################################################################################
function OnMsg.DataLoaded()
  PlaceObj("BuildingTemplate", {
    "name", "HempFactory",
    "file_name", "HempFactory"
  }, {
  PlaceObj("BuildingProperties", {
    "Model", "JewelryWorkshop",
    "Name", T({"Hemp Factory"}),
    "NamePlural", T({"Hemp Factories"}),
    "Description", T({"Tropican Hemp is the best Hemp! It's fireproof, waterproof, sunproof, stops radiation, and cures leprosy! Or so we tell everyone who buys it..."}),
    "MenuText", T({"Prodcues Hemp from Cannnabis."}),
    "BaseBudgetMin", 150,
    "BaseBudgetMax", 275,
    "asphalt_road", false,
    "input_pile", "ResourceBagsHemp",
    "output_pile", "ResourceBagsHemp",
    "AmbientSound", "textilemill_work_sound"
  }),
  PlaceObj("Construction", {
    "Category", "processedgoods",
    "Position", 9902,
    "ConstructionCost", 7500,
    "ConstructionPoints", 400,
    "ScaffoldingBoxType", "wood"
  }),
  PlaceObj("Production", {
    "InputResource1", "Cannabis",
    "BaseInputAmount1", 800,
    "InputCapacity1", 3200,
    "OutputResource", "Hemp",
    "BaseOutputAmount", 800,
    "OutputCapacity", 8000
  }),
  PlaceObj("StandingComponent", {
    "Type", "environmentalists",
    "Amount", 10
  }),
  PlaceObj("Workplace", {
    "BaseMaxWorkers", 8,
    "BaseInherentEducationRequired", 1,
    "BaseInherentWealthProvided", 3,
    "BaseInherentJobQuality", 60,
    "Manageable", true,
    "WorkerProfession", "Factory Worker"
  }),
  PlaceObj("Upgrade", {
    "Id", "Mechanical Processing",
    "Name", T({"Mechanical Processing"}),
    "Rollover", T({"Decreases workers by 3, increases effectiveness by 30."}),
    "StartTurnedOn", false,
    "Cost", 7500,
    "StartingEra", 2
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Mechanical Processing",
    "PropName", "InherentEffectiveness",
    "Description", T({"Mechanical Processing Upgrade"}),
    "Value", 30
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Mechanical Processing",
    "Category", "Workplace",
    "PropName", "MaxWorkers",
    "Description", T({"Mechanical Processing Upgrade"}),
    "Value", -3
  }),
  PlaceObj("Upgrade", {
    "Id", "Electric Processing",
    "Name", T({"Electric Processing"}),
    "Rollover", T({"The Hemp Factory begins consuming 50MW of power, decreases workers by 2, increases effectiveness by 30."}),
    "StartTurnedOn", false,
    "Cost", 12000,
    "BasePowerConsumed", 50,
    "StartingEra", 3,
	"RequiredUpgrade", "Mechanical Processing"
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Electric Processing",
    "PropName", "InherentEffectiveness",
    "Description", T({"Electric Processing Upgrade"}),
    "Value", 30
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Electric Processing",
    "Category", "Workplace",
    "PropName", "MaxWorkers",
    "Description", T({"Electric Processing Upgrade"}),
    "Value", -2
  }),
  PlaceObj("Upgrade", {
    "Id", "Advanced Processing",
    "Name", T({"Advanced Processing"}),
    "Rollover", T({"The Hemp Factory begins consuming an additional 100MW of power but can be staffed by a single college educated worker. Increases effectiveness by 30."}),
    "StartTurnedOn", false,
    "Cost", 15000,
    "BasePowerConsumed", 100,
    "StartingEra", 4,
	"RequiredUpgrade", "Electric Processing"
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Advanced Processing",
    "Category", "Workplace",
    "PropName", "InherentEffectiveness",
    "Description", T({"Advanced Processing Upgrade"}),
    "Value", 30
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Advanced Processing",
    "Category", "Workplace",
    "PropName", "InherentEducationRequired",
    "Description", T({"Advanced Processing Upgrade"}),
    "Value", 3
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Advanced Processing",
    "Category", "Workplace",
    "PropName", "MaxWorkers",
    "Description", T({"Advanced Processing Upgrade"}),
    "Value", -2
  })
})
end

-- Parse Trades #######################################################################################################################
function GetPrices(drug)
	local t = {}
	for i = 1, 5 do
		local price = mcfg[drug .. "_Price_Era_" .. i]
		t[i] = price
	end
	return t
end
function CreateTrade(drug,country,startera,endera,price,stand1,impact1,stand2,impact2,stand3,impact3)
	PlaceObj("TradeOffer", {
		"name", ModT("ExportTo","Export <arg1> (<arg2>)",ResourceName[drug],country),
		"ExpirationTime", 2400,
		"MaxActiveTime", 100,
		"Export", true,
		"Random", false,
		"Default", true,
		"Resource", drug,
		"Price", price,
		"Quantity", 200000000,
		"StartingEra", startera,
		"EndingEra", endera,
		"TradePartner", country,
		"StandingCountry1", stand1,
		"StandingImpact1", impact1,
		"StandingCountry2", stand2,
		"StandingImpact2", impact2,
		"StandingCountry3", stand3,
		"StandingImpact3", impact3,
	})
end

-- Recolor Buildings ##################################################################################################################
function OnMsg.BuildingCompleted(bld)
   if bld.Template == "BiofuelPlant" then
      bld:AddColorization("BiofuelPlantWalls", RGB(40, 40, 5))
   end
end
function OnMsg.BuildingCompleted(bld)
   if bld.Template == "HempFactory" then
      bld:AddColorization("HempFactoryWalls", RGB(5, 30, 10))
   end
end