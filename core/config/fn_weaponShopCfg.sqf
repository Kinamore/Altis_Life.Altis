#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_65x39_caseless_mag_Tracer",nil,130],
						["SmokeShellBlue","Tear Gas",100]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_MXC_F",nil,30000],
						["arifle_MX_SW_F",nil,60000],
						["srifle_LRR_LRPS_F",nil,60000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,750],
						["optic_Arco",nil,2500],
						["optic_DMS",nil,2500],
						["optic_LRPS",nil,2500],
						["optic_Nightstalker",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,130],
						["100Rnd_65x39_caseless_mag",nil,130],
						["100Rnd_65x39_caseless_mag_Tracer",nil,130],
						["7Rnd_408_Mag",nil,200],
						["MiniGrenade","Flashbang",100],
						["SmokeShellBlue","Tear Gas",100]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,50000],
						["srifle_EBR_F",nil,100000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["20Rnd_762x51_Mag",nil,300],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["SMG_02_F",nil,30000],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["SMG_02_F",nil,30000],
						["arifle_TRG21_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["30Rnd_556x45_Stanag",nil,25]
					]
				];
			};

			case (__GETC__(life_donator) == 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["SMG_02_F",nil,30000],
						["arifle_TRG21_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["srifle_DMR_01_F",nil,80000],
						["arifle_MXM_Black_F",nil,80000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_DMS",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["30Rnd_556x45_Stanag",nil,25],
						["10Rnd_762x51_Mag",nil,175],
						["30Rnd_65x39_caseless_mag",nil,175]
					]
				];
			};
			case (__GETC__(life_donator) == 4):
			{
				["STS Donator Shop Tier 4",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["SMG_02_F",nil,30000],
						["arifle_TRG21_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["srifle_DMR_01_F",nil,80000],
						["arifle_MXM_Black_F",nil,80000],
						["LMG_Mk200_F",nil,350000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_DMS",nil,750],
						["optic_NVS",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["30Rnd_556x45_Stanag",nil,75],
						["10Rnd_762x51_Mag",nil,175],
						["30Rnd_65x39_caseless_mag",nil,175],
						["200Rnd_65x39_cased_Box",nil,50000]
						
					]
				];
			};
			case (__GETC__(life_donator) == 5):
			{
				["STS Donator Shop Tier 5",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["SMG_02_F",nil,30000],
						["arifle_TRG21_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["srifle_DMR_01_F",nil,80000],
						["arifle_MXM_Black_F",nil,80000],
						["LMG_Mk200_F",nil,350000],
						["LMG_Zafir_F",nil,400000],
						["launch_O_Titan_short_F",nil,600000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_DMS",nil,750],
						["optic_NVS",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["30Rnd_556x45_Stanag",nil,75],
						["10Rnd_762x51_Mag",nil,175],
						["30Rnd_65x39_caseless_mag",nil,175],
						["200Rnd_65x39_cased_Box",nil,50000],
						["150Rnd_762x51_Box",nil,45000],
						["Titan_AT",nil,20000],
						["Titan_AP",nil,20000]
						
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
		case "gasstore":
	{
		["Altis Gas Station Store",
			[
				["ToolKit",nil,250],
				["FirstAidKit",nil,150]
			]
		];
	};
};

