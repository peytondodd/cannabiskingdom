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
|            \ .\  |.|  /. /            |                                                                                                                        v1.3.1  |
|  _ -_^_^_^_-  \ \\ // /  -_^_^_^_- _  |                                                          by EthanMC                                                            |
|    - -/_/_/- ^_^/| |\^_^ -\_\_\- -    |                                                                                                                                |
|              /_ / | \ _\              |                                                                                                                                |
|                   |                   |                                                                                                                      (C) 2018  |
|_______________________________________|________________________________________________________________________________________________________________________________|

╔═╗┬ ┬┌─┐┌┐┌┌─┐┌─┐  ╦  ┌─┐┌─┐
║  ├─┤├─┤││││ ┬├┤   ║  │ ││ ┬
╚═╝┴ ┴┴ ┴┘└┘└─┘└─┘  ╩═╝└─┘└─┘
########################################################################################################
	Beta 2.0.1		Adjusted default prices for cannabis to reflect actual value (taking into account modern medicianl value and hemp value in Colonial & World Wars eras).
					Added dabs, a refined version of cannabis made with a pharmaceutical factory.
	Beta 2.0.2		Added edibles, a processed version of dabs made with a chocolate factory. 
					Making edibles significantly increases workforce and budget but effectivley doubles product volume and can be traded for increased relations.
	Beta 2.0.3		Adjusted foriegn relations for trading edibles.
	Beta 2.0.4		Added blunt production to cigar factory. Adds 4 workers, low budget impact, 3:4 output ratio.
	Beta 2.0.5		Added another production line for dabs. & Added joint production to cigar factory. Adds 1 workers, low budget impact, 1:4 output ratio. (lower final value)
	Beta 2.0.6		Fixed syntax errors, typos, etc.
	Beta 2.0.7		Re-balanced cannabis based exports.
	Beta 2.0.8		Updated trades.
	Beta 2.1.0		Beta tested content thoroughly. Re-balanced values. Retested.
	Beta 2.1.1		Reduced "Toasted Workers" & "Stoned Workers" buffs on Cigar Factory. (Total bonus reduced from 35 to 20; got a little un-balanced late game)
	Beta 2.1.2		Added "Hippy Commune" upgrade to Cannabis Plantation.
	Beta 2.1.3		Beta tested and adjusted Hippy Commune values.
	Ver. 1.0.0		Seperated custom code into seperate mod, originally was chopped into DarthPresedente's "Drug Trade" mod.
	Ver. 1.1.0		Added new factory and resource. The Hemp Factory will process Cannabis into Hemp, which is more valuable earlier in the game.
	Ver. 1.1.1		Re-organized code, improved commenting.
	Ver. 1.1.2		Fixed bug preventing Hippy Commune upgrade from appearing.
	Ver. 1.1.3		Added hemp fiber upgrades to textile mill and fashion company.
	Ver. 1.2.0		Added biofuel plant, intakes hemp and ouputs power. Comparable to standard Power Plant.
					Originally was meant to intake hemp and corn, but the base game does not support power production which depends on two resources. Could be possible with additional modding in the future however.
	Ver. 1.2.1		Added 8 new trade routes for hemp.
	Ver. 1.3.0		Added new resource: Cannabutter. Can be made with a Creamery (Big Cheese DLC required). Also includes trade routes for cannabutter.
	Ver. 1.3.1		Fixed bugs with cannabutter production

╔╗ ┬ ┬┌─┐┌─┐
╠╩╗│ ││ ┬└─┐
╚═╝└─┘└─┘└─┘
########################################################################################################
	- (since Ver. 1.1.0) Electric & Advanced Processing do not display electricity consumption. Advanced Processing does not raise education required as intended.

╔═╗┬  ┌─┐┌┐┌┌┐┌┌─┐┌┬┐  ╔═╗┌─┐┌─┐┌┬┐┬ ┬┬─┐┌─┐┌─┐
╠═╝│  ├─┤││││││├┤  ││  ╠╣ ├┤ ├─┤ │ │ │├┬┘├┤ └─┐
╩  ┴─┘┴ ┴┘└┘┘└┘└─┘─┴┘  ╚  └─┘┴ ┴ ┴ └─┘┴└─└─┘└─┘
########################################################################################################
- Add some type of building for entertainment/tourism that consumes cannabis
- Add dispensary, provides healthcare, consumes cannabis (if possible?)
- Potential upgraded to plantation that procudes femanized seeds as a by-product
- Custom textures for Biofuel Plant and Hemp Factory. (will likely still use the meshes)
- Write Cannabis Kingdom Mission

--]]

local CannabisKingdom = {
	Name = "Cannabis_Kingdom",
	NameText = "Cannabis Kingdom",
	Author = "EthanMC",
	Version = "1.3.1",
	Config = {
		-- Hemp Modifiers ###########################################################################
		Hemp_Price_Era_1 = {Type = "number",Default = 1600,RangeMin = 1,RangeMax = 100000},
		Hemp_Price_Era_2 = {Type = "number",Default = 2200,RangeMin = 1,RangeMax = 100000},
		Hemp_Price_Era_3 = {Type = "number",Default = 2000,RangeMin = 1,RangeMax = 100000},
		Hemp_Price_Era_4 = {Type = "number",Default = 2100,RangeMin = 1,RangeMax = 100000},
		Hemp_Price_Era_5 = {Type = "number",Default = 2200,RangeMin = 1,RangeMax = 100000},
		-- Dabs Modifiers ############################################################################
		Dabs_Price_Era_1 = {Type = "number",Default = 4800,RangeMin = 1,RangeMax = 100000},
		Dabs_Price_Era_2 = {Type = "number",Default = 5600,RangeMin = 1,RangeMax = 100000},
		Dabs_Price_Era_3 = {Type = "number",Default = 7200,RangeMin = 1,RangeMax = 100000},
		Dabs_Price_Era_4 = {Type = "number",Default = 9600,RangeMin = 1,RangeMax = 100000},
		Dabs_Price_Era_5 = {Type = "number",Default = 12000,RangeMin = 1,RangeMax = 100000},
		DabsInputQty = {Type = "number",Default = 1000,RangeMin = 1,RangeMax = 100000},
		DabsOutputQty = {Type = "number",Default = 350,RangeMin = 1,RangeMax = 100000},
		DabsBudgetImpact = {Type = "number",Default = 250,RangeMin = 0,RangeMax = 100000},
		DabsStandingImpact = {Type = "number",Default = 7,RangeMin = -100,RangeMax = 100},
		DabsEffectivenessImpact = {Type = "number",Default = -20,RangeMin = -100,RangeMax = 100},
		DabsWorkerImpact = {Type = "number",Default = 2,RangeMin = -100,RangeMax = 100},
		-- Edibles Modifiers #########################################################################
		Edibles_Price_Era_1 = {Type = "number",Default = 4800,RangeMin = 1,RangeMax = 100000},
		Edibles_Price_Era_2 = {Type = "number",Default = 5600,RangeMin = 1,RangeMax = 100000},
		Edibles_Price_Era_3 = {Type = "number",Default = 7200,RangeMin = 1,RangeMax = 100000},
		Edibles_Price_Era_4 = {Type = "number",Default = 9600,RangeMin = 1,RangeMax = 100000},
		Edibles_Price_Era_5 = {Type = "number",Default = 12000,RangeMin = 1,RangeMax = 100000},
		EdiblesInputQty = {Type = "number",Default = 200,RangeMin = 1,RangeMax = 100000},
		EdiblesOutputQty = {Type = "number",Default = 400,RangeMin = 1,RangeMax = 100000},
		EdiblesBudgetImpact = {Type = "number",Default = 300,RangeMin = 0,RangeMax = 100000},
		EdiblesStandingImpact = {Type = "number",Default = 7,RangeMin = -100,RangeMax = 100},
		EdiblesEffectivenessImpact = {Type = "number",Default = -20,RangeMin = -100,RangeMax = 100},
		EdiblesWorkerImpact = {Type = "number",Default = 4,RangeMin = -100,RangeMax = 100},
		-- Blunts Modifiers ##########################################################################
		Blunts_Price_Era_1 = {Type = "number",Default = 1500,RangeMin = 1,RangeMax = 100000},
		Blunts_Price_Era_2 = {Type = "number",Default = 1750,RangeMin = 1,RangeMax = 100000},
		Blunts_Price_Era_3 = {Type = "number",Default = 2250,RangeMin = 1,RangeMax = 100000},
		Blunts_Price_Era_4 = {Type = "number",Default = 3000,RangeMin = 1,RangeMax = 100000},
		Blunts_Price_Era_5 = {Type = "number",Default = 4500,RangeMin = 1,RangeMax = 100000},
		BluntsInputQty = {Type = "number",Default = 500,RangeMin = 1,RangeMax = 100000},
		BluntsOutputQty = {Type = "number",Default = 750,RangeMin = 1,RangeMax = 100000},
		BluntsBudgetImpact = {Type = "number",Default = 50,RangeMin = 0,RangeMax = 100000},
		BluntsStandingImpact = {Type = "number",Default = 1,RangeMin = -100,RangeMax = 100},
		BluntsEffectivenessImpact = {Type = "number",Default = 15,RangeMin = -100,RangeMax = 100},
		BluntsWorkerImpact = {Type = "number",Default = 4,RangeMin = -100,RangeMax = 100},
		-- Joints Modifiers ##########################################################################
		Joints_Price_Era_1 = {Type = "number",Default = 600,RangeMin = 1,RangeMax = 100000},
		Joints_Price_Era_2 = {Type = "number",Default = 700,RangeMin = 1,RangeMax = 100000},
		Joints_Price_Era_3 = {Type = "number",Default = 900,RangeMin = 1,RangeMax = 100000},
		Joints_Price_Era_4 = {Type = "number",Default = 1200,RangeMin = 1,RangeMax = 100000},
		Joints_Price_Era_5 = {Type = "number",Default = 1500,RangeMin = 1,RangeMax = 100000},
		JointsInputQty = {Type = "number",Default = 250,RangeMin = 1,RangeMax = 100000},
		JointsOutputQty = {Type = "number",Default = 1000,RangeMin = 1,RangeMax = 100000},
		JointsBudgetImpact = {Type = "number",Default = 25,RangeMin = 0,RangeMax = 100000},
		JointsStandingImpact = {Type = "number",Default = 1,RangeMin = -100,RangeMax = 100},
		JointsEffectivenessImpact = {Type = "number",Default = 5,RangeMin = -100,RangeMax = 100},
		JointsWorkerImpact = {Type = "number",Default = 1,RangeMin = -100,RangeMax = 100},
		-- Cannabutter Modifiers ############################################################################
		Cannabutter_Price_Era_1 = {Type = "number",Default = 1900,RangeMin = 1,RangeMax = 100000},
		Cannabutter_Price_Era_2 = {Type = "number",Default = 2300,RangeMin = 1,RangeMax = 100000},
		Cannabutter_Price_Era_3 = {Type = "number",Default = 3100,RangeMin = 1,RangeMax = 100000},
		Cannabutter_Price_Era_4 = {Type = "number",Default = 4300,RangeMin = 1,RangeMax = 100000},
		Cannabutter_Price_Era_5 = {Type = "number",Default = 4500,RangeMin = 1,RangeMax = 100000},
		CannabutterInputQty1 = {Type = "number",Default = 150,RangeMin = 1,RangeMax = 100000},
		CannabutterInputQty2 = {Type = "number",Default = 150,RangeMin = 1,RangeMax = 100000},
		CannabutterOutputQty = {Type = "number",Default = 300,RangeMin = 1,RangeMax = 100000},
		CannabutterBudgetImpact = {Type = "number",Default = 75,RangeMin = 0,RangeMax = 100000},
		CannabutterStandingImpact = {Type = "number",Default = 5,RangeMin = -100,RangeMax = 100},
		CannabutterEffectivenessImpact = {Type = "number",Default = -20,RangeMin = -100,RangeMax = 100},
		CannabutterWorkerImpact = {Type = "number",Default = 2,RangeMin = -100,RangeMax = 100},
		-- Hippy Commune Modifiers ###################################################################
		HippyWorkerImpact = {Type = "number",Default = 8,RangeMin = -100,RangeMax = 100},
		HippyBudgetImpact = {Type = "number",Default = 80,RangeMin = 0,RangeMax = 100000},
		HippyStandingImpact = {Type = "number",Default = 10,RangeMin = -100,RangeMax = 100},
		HippyEffectivenessImpact = {Type = "number",Default = 125,RangeMin = -100,RangeMax = 200},
		HippyPatrolImpact = {Type = "number",Default = 25,RangeMin = 0,RangeMax = 1000}
		-- ###########################################################################################
	}
}
local loadfail, mdata, mcfg, ModT = ModRegister(CannabisKingdom)
if loadfail then
	DebugPrint(loadfail .. "\n")
	return
end
-- Create Resources ##################################################################################
OnMsg.ClassesPreprocess = function()

	CreateNewResource({
		Id = "Hemp",
		Name = ModT("Resource_Hemp","Hemp"),
		PriceByAge = GetDrugPrices420("Hemp"),
		IsIndustry = true,
		IsProcessed = true
	})
	CreateNewResource({
		Id = "Cannabutter",
		Name = ModT("Resource_Cannabutter","Cannabutter"),
		PriceByAge = GetDrugPrices420("Cannabutter"),
		IsIndustry = true,
		IsProcessed = true
	})
	CreateNewResource({
		Id = "Dabs",
		Name = ModT("Resource_Dabs","Dabs"),
		PriceByAge = GetDrugPrices420("Dabs"),
		IsLuxury = true,
		IsProcessed = true
	})
	CreateNewResource({
		Id = "Edibles",
		Name = ModT("Resource_Edibles","Edibles"),
		PriceByAge = GetDrugPrices420("Edibles"),
		IsLuxury = true,
		IsProcessed = true
	})
	CreateNewResource({
		Id = "Blunts",
		Name = ModT("Resource_Blunts","Blunts"),
		PriceByAge = GetDrugPrices420("Blunts"),
		IsLuxury = true,
		IsProcessed = true
	})
	CreateNewResource({
		Id = "Joints",
		Name = ModT("Resource_Joints","Joints"),
		PriceByAge = GetDrugPrices420("Joints"),
		IsLuxury = true,
		IsProcessed = true
	})
end
-- Add Factory Upgrades ############################################################################
local CannabisUpgrades = {
	{
		Buildings = {"CigarFactory"},
		Upgrades = {
			MakeBlunts = {
				Name = ModT("Upgrade_MakeBlunts","Roll Blunts"),
				Rollover = ModT("Rollover_MakeBlunts","Roll cannabis into blunts for export.\nInput Output Ratio: <arg1>:<arg2>\nBudget: +<arg3>\nWorkers: +<arg4>\nEffectiveness: <arg5>\nEnvironmentalists <arg6>\nStoned workers roll faster!",mcfg.BluntsInputQty,mcfg.BluntsOutputQty,mcfg.BluntsBudgetImpact,mcfg.BluntsWorkerImpact,mcfg.BluntsEffectivenessImpact,mcfg.BluntsStandingImpact),
				DisabledText = ModT("Disabled_MakeBlunts","Stop rolling blunts."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = mcfg.BluntsStandingImpact}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_MakeBlunts","Roll Blunts"),Value = mcfg.BluntsWorkerImpact},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_MakeBlunts","Stoned Workers"),Value = mcfg.BluntsEffectivenessImpact},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_MakeBlunts","Roll Blunts"),Value = mcfg.BluntsBudgetImpact},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_MakeBlunts","Roll Blunts"),Value = mcfg.BluntsBudgetImpact}
				},
				RawAdd = {
					{
						Component = "Production",
						InputResource1 = "Cannabis", 
						BaseInputAmount1 = mcfg.BluntsInputQty,
						InputCapacity1 = 2000,
						OutputResource = "Blunts",
						BaseOutputAmount = mcfg.BluntsOutputQty,
						OutputCapacity = 4000
					}
				}
			},
			MakeJoints = {
				Name = ModT("Upgrade_MakeJoints","Roll Joints"),
				Rollover = ModT("Rollover_MakeJoints","Roll cannabis into Joints for export.\nInput Output Ratio: <arg1>:<arg2>\nBudget: +<arg3>\nWorkers: +<arg4>\nEffectiveness: <arg5>\nEnvironmentalists <arg6>\nStoned workers roll faster!",mcfg.JointsInputQty,mcfg.JointsOutputQty,mcfg.JointsBudgetImpact,mcfg.JointsWorkerImpact,mcfg.JointsEffectivenessImpact,mcfg.JointsStandingImpact),
				DisabledText = ModT("Disabled_MakeJoints","Stop rolling Joints."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = mcfg.JointsStandingImpact}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_MakeJoints","Roll Joints"),Value = mcfg.JointsWorkerImpact},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_MakeJoints","Toasted Workers"),Value = mcfg.JointsEffectivenessImpact},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_MakeJoints","Roll Joints"),Value = mcfg.JointsBudgetImpact},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_MakeJoints","Roll Joints"),Value = mcfg.JointsBudgetImpact}
				},
				RawAdd = {
					{
						Component = "Production",
						InputResource1 = "Cannabis", 
						BaseInputAmount1 = mcfg.JointsInputQty,
						InputCapacity1 = 1000,
						OutputResource = "Joints",
						BaseOutputAmount = mcfg.JointsOutputQty,
						OutputCapacity = 4000
					},
				}
			}
		}
	},
	{
		Buildings = {"Creamery"},
		Upgrades = {
			MakeCannabutter = {
				Name = ModT("Upgrade_MakeCannabutter","Churn Cannabutter"),
				Rollover = ModT("Rollover_MakeCannabutter","Churn butter infused with Cannabis.\nBudget: +<arg1>\nWorkers: +<arg2>\nEffectiveness: <arg3>\nEnvironmentalists <arg4>",mcfg.CannabutterBudgetImpact,mcfg.CannabutterWorkerImpact,mcfg.CannabutterEffectivenessImpact,mcfg.CannabutterStandingImpact),
				DisabledText = ModT("Disabled_MakeCannabutter","Turn Cannabutter production off."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = mcfg.CannabutterStandingImpact}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_MakeCannabutter","Churning Cannabutter"),Value = mcfg.CannabutterWorkerImpact},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_MakeCannabutter","Churning Cannabutter"),Value = mcfg.CannabutterEffectivenessImpact},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_MakeCannabutter","Churning Cannabutter"),Value = mcfg.CannabutterBudgetImpact},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_MakeCannabutter","Churning Cannabutter"),Value = mcfg.CannabutterBudgetImpact}
				},
				RawAdd = {
					{	
						Component = "Production",
						InputResource1 = "Cannabis", 
						BaseInputAmount1 = mcfg.CannabutterInputQty1,
						InputCapacity1 = 600,
						InputResource2 = "Milk", 
						BaseInputAmount2 = mcfg.CannabutterInputQty2,
						InputCapacity2 = 600,
						OutputResource = "Cannabutter",
						BaseOutputAmount = mcfg.CannabutterOutputQty,
						OutputCapacity = 1200
					},
				}
			}
		}
	},
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
	{
		Buildings = {"ChocolateFactory"},
		Upgrades = {
			MakeEdibles = {
				Name = ModT("Upgrade_MakeEdibles","Edible Chocolates"),
				Rollover = ModT("Rollover_MakeEdibles","Process cannabis extract into medicinal chocolates.\nInput Output Ratio: <arg1>:<arg2>\nBudget: +<arg3>\nWorkers: +<arg4>\nEffectiveness: <arg5>\nEnvironmentalists <arg6>",mcfg.EdiblesInputQty,mcfg.EdiblesOutputQty,mcfg.EdiblesBudgetImpact,mcfg.EdiblesWorkerImpact,mcfg.EdiblesEffectivenessImpact,mcfg.EdiblesStandingImpact),
				DisabledText = ModT("Disabled_MakeEdibles","Turn medicinal chocolate production off."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = mcfg.EdiblesStandingImpact}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_MakeEdibles","Edible Chocolates"),Value = mcfg.EdiblesWorkerImpact},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_MakeEdibles","Edible Chocolates"),Value = mcfg.EdiblesEffectivenessImpact},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_MakeEdibles","Edible Chocolates"),Value = mcfg.EdiblesBudgetImpact},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_MakeEdibles","Edible Chocolates"),Value = mcfg.EdiblesBudgetImpact}
				},
				RawAdd = {
					{	
						Component = "Production",
						InputResource1 = "Dabs", 
						BaseInputAmount1 = mcfg.EdiblesInputQty,
						InputCapacity1 = 600,
						OutputResource = "Edibles",
						BaseOutputAmount = mcfg.EdiblesOutputQty,
						OutputCapacity = 1200
					}
				}
			},
			MakeEdibles2 = {
				Name = ModT("Upgrade_MakeEdibles2","Edible Candies"),
				Rollover = ModT("Rollover_MakeEdibles2","Process cannabis extract into medicinal candies.\nInput Output Ratio: <arg1>:<arg2>\nBudget: +<arg3>\nWorkers: +<arg4>\nEffectiveness: <arg5>\nEnvironmentalists <arg6>",mcfg.EdiblesInputQty,mcfg.EdiblesOutputQty,mcfg.EdiblesBudgetImpact,mcfg.EdiblesWorkerImpact,mcfg.EdiblesEffectivenessImpact,mcfg.EdiblesStandingImpact),
				DisabledText = ModT("Disabled_MakeEdibles2","Turn medicinal candy production off."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = mcfg.EdiblesStandingImpact}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_MakeEdibles2","Edible Candies"),Value = mcfg.EdiblesWorkerImpact},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_MakeEdibles2","Edible Candies"),Value = mcfg.EdiblesEffectivenessImpact},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_MakeEdibles2","EEdible Candies"),Value = mcfg.EdiblesBudgetImpact},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_MakeEdibles2","Edible Candies"),Value = mcfg.EdiblesBudgetImpact}
				},
				RawAdd = {
					{	
						Component = "Production",
						InputResource1 = "Dabs", 
						BaseInputAmount1 = mcfg.EdiblesInputQty,
						InputCapacity1 = 600,
						OutputResource = "Edibles",
						BaseOutputAmount = mcfg.EdiblesOutputQty,
						OutputCapacity = 1200
					},
				}
			}
		}
	},
	{
		Buildings = {"PharmaceuticalFactory"},
		Upgrades = {
			MakeDabs = {
				Name = ModT("Upgrade_MakeDabs","Make Dabs - BHO"),
				Rollover = ModT("Rollover_MakeDabs","Process Cannabis into butane hash oil for export.\nInput Output Ratio: <arg1>:<arg2>\nBudget: +<arg3>\nWorkers: +<arg4>\nEffectiveness: <arg5>\nEnvironmentalists <arg6>",mcfg.DabsInputQty,mcfg.DabsOutputQty,mcfg.DabsBudgetImpact,mcfg.DabsWorkerImpact,mcfg.DabsEffectivenessImpact,mcfg.DabsStandingImpact),
				DisabledText = ModT("Disabled_MakeDabs","Turn dabs production off."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = mcfg.DabsImpact}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_Dabs","Make Dabs"),Value = mcfg.DabsWorkerImpact},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_MakeDabs","Make Dabs"),Value = mcfg.DabsEffectivenessImpact},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_MakeDabs","Make Dabs"),Value = mcfg.DabsBudgetImpact},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_MakeDabs","Make Dabs"),Value = mcfg.DabsBudgetImpact}
				},
				RawAdd = {
					{
						Component = "Production",
						InputResource1 = "Cannabis", 
						BaseInputAmount1 = mcfg.DabsInputQty,
						InputCapacity1 = 6000,
						OutputResource = "Dabs",
						BaseOutputAmount = mcfg.DabsOutputQty,
						OutputCapacity = 2100
					}
				}
			},
			MakeDabs2 = {
				Name = ModT("Upgrade_MakeDabs2","Make Dabs - Rosin Tech"),
				Rollover = ModT("Rollover_MakeDabs2","Rosin press Cannabis into dabs for export.\nInput Output Ratio: <arg1>:<arg2>\nBudget: +<arg3>\nWorkers: +<arg4>\nEffectiveness: <arg5>\nEnvironmentalists <arg6>",mcfg.DabsInputQty,mcfg.DabsOutputQty,mcfg.DabsBudgetImpact,mcfg.DabsWorkerImpact,mcfg.DabsEffectivenessImpact,mcfg.DabsStandingImpact),
				DisabledText = ModT("Disabled_MakeDabs2","Turn dabs production off."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = mcfg.DabsImpact}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_Dabs2","Make Dabs"),Value = mcfg.DabsWorkerImpact},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_MakeDabs2","Make Dabs"),Value = mcfg.DabsEffectivenessImpact},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_MakeDabs2","Make Dabs"),Value = mcfg.DabsBudgetImpact},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_MakeDabs2","Make Dabs"),Value = mcfg.DabsBudgetImpact}
				},
				RawAdd = {
					{
						Component = "Production",
						InputResource1 = "Cannabis", 
						BaseInputAmount1 = mcfg.DabsInputQty,
						InputCapacity1 = 6000,
						OutputResource = "Dabs",
						BaseOutputAmount = mcfg.DabsOutputQty,
						OutputCapacity = 2100
					},
				}
			}
		}
	},
	{
		Buildings = {"PlantationCannabis"},
		Upgrades = {
			HippyCommune = {
				ID = ModT("Hippy Commune"),
				Name = ModT("Upgrade_HippyCommune","Hippy Commune"),
				Rollover = ModT("Rollover_HippyCommune","Convert the plantation into a Hippy Commune.\nDoubles workers and effectivness.\nIncreases libetry and lowers crime saftey.\nWorkers: <arg1>.\nBudget +<arg2>\nEnvironmentalists +<arg3>",mcfg.HippyWorkerImpact,mcfg.HippyBudgetImpact,mcfg.HippyStandingImpact),
				DisabledText = ModT("Disabled_HippyCommune","Disband the hippies."),
				Toggle = true,
				Standings = {{Type = "environmentalists", Amount = mcfg.HippyStandingImpact}},
				ApplyModifiers = {
					{Category = "Workplace",PropName = "MaxWorkers",Description = ModT("Upgrade_HippyCommune","Hippy Commune"),Value = mcfg.HippyWorkerImpact},
					{Category = "General",PropName = "InherentEffectiveness",Description = ModT("Upgrade_HippyCommune","Hippy Commune"),Value = mcfg.HippyEffectivenessImpact},
					{Category = "Building Properties",PropName = "BudgetMin",Description = ModT("Upgrade_HippyCommune","Hippy Commune"),Value = mcfg.HippyBudgetImpact},
					{Category = "Building Properties",PropName = "BudgetMax",Description = ModT("Upgrade_HippyCommune","Hippy Commune"),Value = mcfg.HippyBudgetImpact}
				},
				RawAdd = {
					{
						Component = "CrimeSafety",
						Amount = MulDivRound(mcfg.HippyPatrolImpact,1,5),
						BaseRadius = 6000
					},
					{
						Component = "Liberty",
						Amount = MulDivRound(mcfg.HippyPatrolImpact,1,5),
						BaseRadius = 6000
					}
				}
			}
		}
	}
}

-- Load Trade Routes & Upgrades ###############################################################################################################
OnMsg.DataLoaded = function()
	UpgradeMaker(CannabisUpgrades)
	CreateDrugTrade420("Hemp","West India Company",1,1,125,"The Crown",5,"",0,"",0)
	CreateDrugTrade420("Hemp","Smugglers",1,1,125,"The Crown",-5,"",0,"",0)
	CreateDrugTrade420("Hemp","Allies",2,2,125,"Allies",10,"Axis",-10,"",0)
	CreateDrugTrade420("Hemp","Axis",2,2,125,"Axis",10,"Allies",-10,"",0)
	CreateDrugTrade420("Hemp","Smugglers",2,2,125,"Allies",-5,"Axis",-5,"",0)
	CreateDrugTrade420("Hemp","USA",3,3,125,"USA",10,"USSR",-10,"",0)
	CreateDrugTrade420("Hemp","USSR",3,3,125,"USA",-10,"USSR",10,"",0)
	CreateDrugTrade420("Hemp","Smugglers",3,3,125,"USA",-5,"USSR",-5,"",0)
	CreateDrugTrade420("Cannabutter","Smugglers",1,1,125,"",0,"",0,"",0)
	CreateDrugTrade420("Cannabutter","Smugglers",2,2,125,"",0,"",0,"",0)
	CreateDrugTrade420("Cannabutter","Smugglers",3,3,125,"",0,"",0,"",0)
	CreateDrugTrade420("Cannabutter","Smugglers",4,4,125,"",0,"",0,"",0)
	CreateDrugTrade420("Dabs","Smugglers",4,4,125,"USA",1,"Middle East",-2,"China",-2)
	CreateDrugTrade420("Blunts","Smugglers",1,1,125,"",0,"",0,"",0)
	CreateDrugTrade420("Blunts","Smugglers",2,2,125,"",0,"",0,"",0)
	CreateDrugTrade420("Blunts","Smugglers",3,3,125,"",0,"",0,"",0)
	CreateDrugTrade420("Blunts","Smugglers",4,4,125,"",0,"",0,"",0)
	CreateDrugTrade420("Joints","Smugglers",1,1,125,"",0,"",0,"",0)
	CreateDrugTrade420("Joints","Smugglers",2,2,125,"",0,"",0,"",0)
	CreateDrugTrade420("Joints","Smugglers",3,3,125,"",0,"",0,"",0)
	CreateDrugTrade420("Joints","Smugglers",4,4,125,"",0,"",0,"",0)
	CreateDrugTrade420("Edibles","Smugglers",4,4,125,"USA",5,"EU",5,"Russia",5)
	CreateDrugTrade420("Edibles","Smugglers",4,4,125,"China",5,"Middle East",5,"",0)
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
    "Category", "infrastructure",
    "Position", 12,
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
    "Position", 10,
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
    "PropName", "InherentEffectiveness",
    "Description", T({"Advanced Processing Upgrade"}),
    "Value", 30
  }),
  PlaceObj("ApplyModifier", {
    "EnabledBy", "Advanced Processing",
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
function GetDrugPrices420(drug)
	local t = {}
	for i = 1, 5 do
		local price = mcfg[drug .. "_Price_Era_" .. i]
		t[i] = price
	end
	return t
end
function CreateDrugTrade420(drug,country,startera,endera,price,stand1,impact1,stand2,impact2,stand3,impact3)
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
