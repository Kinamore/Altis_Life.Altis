/*
	File: fn_seizePlayerIllegalAction.sqf
	Author: Skalicon
	
	Description:
	Removes the players weapons client side
*/
removeAllWeapons player;
if (uniform player in ["U_Rangemaster","U_B_CombatUniform_mcam_worn"]) then {removeUniform player;};
if (vest player in ["V_HarnessOGL_brn","V_TacVest_blk","V_TacVest_blk_POLICE","V_PlateCarrier1_rgr"]) then {removeVest player;};
if (headgear player in ["H_CrewHelmetHeli_B"]) then {removeHeadgear player;};

player setVariable["holstered",["",""]];
license_civ_gun = false;

[] call life_fnc_civFetchGear;
[] call life_fnc_sessionUpdate; //Should make weapon remove persistent
[] call life_fnc_civLoadGear;
titleText["Your weapons have been seized.","PLAIN"];