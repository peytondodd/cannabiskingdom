local Majestic_CoffeeShop = {
  Name = "Cannabis_Dispensaries",
  NameText = "Cannabis Dispensaries",
  Author = "EthanMC",
  Version = "1.00",
  Config = {
    CoffeeShop_PurchaseCost = {
      Type = "number",
      Default = 5500,
      RangeMin = 500,
      RangeMax = 10000
    },
    CoffeeShop_PurchaseEra = {
      Type = "number",
      Default = 1,
      RangeMin = 1,
      RangeMax = 4
    },
    CoffeeShop_FirstUpgradeEra = {
      Type = "number",
      Default = 1,
      RangeMin = 1,
      RangeMax = 4
    },
	CoffeeShop_SecondUpgradeEra = {
      Type = "number",
      Default = 1,
      RangeMin = 1,
      RangeMax = 4
    },
	CoffeeShop_ThirdUpgradeEra = {
      Type = "number",
      Default = 2,
      RangeMin = 1,
      RangeMax = 4
    },
    CoffeeShop_EnvironmentalistsEffect = {
      Type = "number",
      Default = -5,
      RangeMin = -15,
      RangeMax = 15
    },
	CoffeeShop_NationalistsEffect = {
      Type = "number",
      Default = -5,
      RangeMin = -15,
      RangeMax = 15
    }
  },  
  VersionN = 100
}

local loadfail, mdata, mcfg, ModT = ModRegister(Majestic_CoffeeShop)
if loadfail then
  DebugPrint(loadfail .. "\n")
  return
end

function OnMsg.DataLoaded()  
  local Majestic_Building_Name_CoffeeShop = "CoffeeShop"
  PlaceObj("BuildingTemplate", {
    "name",
    Majestic_Building_Name_CoffeeShop,
    "file_name",
    Majestic_Building_Name_CoffeeShop
  }, {
    PlaceObj("BuildingProperties", {
      "Model",
      "PoliceStation",
      "Name",
      T({
        ModT("NAME_CoffeeShop", "Coffee Shop")
      }),
      "NamePlural",
      T({
        ModT("NAME_PLURAL_CoffeeShop", "Coffee Shops")
      }),
   "Image", "UI/BuildingsIcons/CoffeeShop.tga",
      "Description",
      T({
        ModT("TEXT_CoffeeShop", "The Coffee Shop sells all kinds of brewed coffee: Cafe Lattes, Cafe Mochas, Macchiatos, and Cappuccinos. And of course, with an upgrade, it will start selling local Tropican-crafted Cortados. The locals will love you!")
      }),
      "MenuText",
      T({
        ModT("MENUTEXT_CoffeeShop", "Produces brewed coffee.")
      }),
      "BaseBudgetMin",
      60,
      "BaseBudgetMax",
      100,
    "asphalt_road",
    true,
    "TerrainName",
    "square3",
    "AmbientSound",
    "restaurant_work_sound"
    }),
    PlaceObj("Construction", {
      "Category",
      "attractions",
      "ConstructionCost",
      mcfg.CoffeeShop_PurchaseCost,
      "ConstructionPoints",
      220,
      "Era",
      mcfg.CoffeeShop_PurchaseEra
    }),
  PlaceObj("Crime", {"BaseAmount", 1}),
  PlaceObj("Pollution", {
    "BaseAmount",
    5,
    "Radius",
    1000
  }),
  PlaceObj("StandingComponent", {
    "Type",
    "nationalists",
    "Amount",
    mcfg.CoffeeShop_NationalistsEffect
  }),
  PlaceObj("StandingComponent", {
    "Type",
    "environmentalists",
    "Amount",
    mcfg.CoffeeShop_EnvironmentalistsEffect
  }),
  PlaceObj("Service", {
    "BaseInherentServiceQuality",
    40,
    "BaseInherentMaxPopulationServiced",
    30,
    "BaseRadius",
    5000,
    "BaseWealthRequired",
    2,
    "BaseRevenuePer10",
    10,
    "ServiceChildren",
    false
  }),  
    PlaceObj("Workplace", {
      "BaseMaxWorkers",
      6,
      "BaseInherentEducationRequired",
      1,
      "BaseInherentWealthProvided",
      2,
      "BaseInherentJobQuality",
      45,
      "Manageable",
      true,
      "WorkerProfession",
      "Clerk"
    }),
	PlaceObj("ProductionPower", {
    "InputResource",
    "Espressos",
    "BaseInputAmount",
    100,
    "InputCapacity",
    1000,
    "BasePowerAmount",
    0
  }),
  PlaceObj("Upgrade", {
      "Id",
      "CaffeineForLocalWorkers",
      "Name",
      T({
        ModT("NAME_CaffeineForLocalWorkers", "Caffeine For Local Workers")
      }),
      "Rollover",
      T({
        ModT("TEXT_CaffeineForLocalWorkers", "Give your freshly-brewed coffee to the local workers for a quick jolt of energy. This means hiring delivery personnel and a budget increase.")
      }),
      "StartTurnedOn",
      false,
      "Cost",
      3500,
      "StartingEra",
      mcfg.CoffeeShop_FirstUpgradeEra
    }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "CaffeineForLocalWorkers",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", ModT("CaffeineForLocalWorkersDesc","Caffeine For Local Workers Upgrade"),
	"Percent", true,
    "Value", 50
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "CaffeineForLocalWorkers",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", ModT("CaffeineForLocalWorkersDesc","Caffeine For Local Workers Upgrade"),
	"Percent", true,
    "Value", 50
  }),
  PlaceObj("ApplyModifier", {
      "EnabledBy", "CaffeineForLocalWorkers",
      "Category", "Workplace",
      "PropName", "MaxWorkers",
	  "Description", ModT("CaffeineForLocalWorkersDesc","Caffeine For Local Workers Upgrade"),
      "Value", 4
    }),
  PlaceObj("ApplyModifier", {
      "EnabledBy", "CaffeineForLocalWorkers",
	  "Affected", "Buildings",
	  "Radius", 18000,
      "PropName", "InherentEffectiveness",
      "Description", ModT("CaffeineForLocalWorkersDesc","Caffeine For Local Workers Upgrade"),
      "Value", 20,
	  "ScaleFactor", "effectiveness",
	  "Cap", 40
    }),
    PlaceObj("Upgrade", {
      "Id",
      "SignatureCafeBlends",
      "Name",
      T({
        ModT("NAME_SignatureCafeBlends", "Signature Cafe Blends")
      }),
      "Rollover",
      T({
        ModT("TEXT_SignatureCafeBlends", "Velvety smooth custom blends of Espresso roasts add plenty of flair and variety for your customers.")
      }),
      "StartTurnedOn",
      false,
      "Cost",
      3500,
      "StartingEra",
      mcfg.CoffeeShop_SecondUpgradeEra
    }),
     PlaceObj("ApplyModifier", {
    "EnabledBy", "SignatureCafeBlends",
    "Category", "Service",
    "PropName", "InherentServiceQuality",
    "Description", ModT("SignatureCafeBlendsDesc","Signature Cafe Blends Upgrade"),
    "Value", 20
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "SignatureCafeBlends",
    "Category", "Service",
    "PropName", "WealthRequired",
    "Description", ModT("SignatureCafeBlendsDesc","Signature Cafe Blends Upgrade"),
    "Value", 1
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "SignatureCafeBlends",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", ModT("SignatureCafeBlendsDesc","Signature Cafe Blends Upgrade"),
    "Value", 15
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "SignatureCafeBlends",
    "Category", "Workplace",
    "PropName", "InherentJobQuality",
    "Description", ModT("SignatureCafeBlendsDesc","Signature Cafe Blends Upgrade"),
    "Value", 10
  }),
    PlaceObj("ApplyModifier", {
    "EnabledBy", "SignatureCafeBlends",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", ModT("SignatureCafeBlendsDesc","Signature Cafe Blends Upgrade"),
	"Percent", true,
    "Value", 30
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "SignatureCafeBlends",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", ModT("SignatureCafeBlendsDesc","Signature Cafe Blends Upgrade"),
	"Percent", true,
    "Value", 30
  }),
  PlaceObj("Upgrade", {
      "Id",
      "HouseMadeSingleOriginCortados",
      "Name",
      T({
        ModT("NAME_HouseMadeSingleOriginCortados", "House-Made Single-Origin Cortados")
      }),
      "Rollover",
      T({
        ModT("TEXT_HouseMadeSingleOriginCortados", "Blends are great, but anyone can make one. Single-Origin coffee is hard to pull off. And if it's made right in Tropico? That's the holy grail. Mmm-mmm, delicious!")
      }),
      "StartTurnedOn",
      false,
      "Cost",
      3500,
      "StartingEra",
      mcfg.CoffeeShop_ThirdUpgradeEra
    }),
    PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "Service",
    "PropName", "InherentServiceQuality",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
    "Value", 20
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "Service",
    "PropName", "WealthRequired",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
    "Value", 1
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "Service",
    "PropName", "RevenuePer10",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
    "Value", 40
  }),
    PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "Building Properties",
    "PropName", "BudgetMin",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
	"Percent", true,
    "Value", 50
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "Building Properties",
    "PropName", "BudgetMax",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
	"Percent", true,
    "Value", 50
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "Workplace",
    "PropName", "InherentJobQuality",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
    "Value", 20
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "Workplace",
    "PropName", "InherentWealthProvided",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
    "Value", 1
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "Workplace",
    "PropName", "InherentEducationRequired",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
    "Value", 1
  }),
    PlaceObj("ApplyModifier", {
    "EnabledBy", "HouseMadeSingleOriginCortados",
    "Category", "ProductionPower",
    "PropName", "InputResource",
    "Description", ModT("HouseMadeSingleOriginCortadosDesc","House-Made Single-Origin Cortados Upgrade"),
    "Value", "Cortados"
  })
})
end

function OnMsg.BuildingCompleted(bld)
   if bld.Template == "CoffeeShop" then
      bld:AddColorization("CoffeeShopWalls", RGB(138, 104, 10))
   end
end