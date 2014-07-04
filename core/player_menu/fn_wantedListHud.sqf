/*
	@Version: 2.0
	@Author: [BWG] Joe
	@Edited: 11.10.2013
*/
private ["_ui","_food","_water","_health"];

if (playerSide != west) exitWith {};

disableSerialization;
_ui = uiNameSpace getVariable "playerHUD";
_hudList = _ui displayCtrl 23520;

life_wantedListHud = !life_wantedListHud;

// Enable or disable wanted list.
if (life_wantedListHud) then {
	_hudList ctrlShow true;
	
	// Enable auto fetching of wanted list.
	[] spawn {
		while { life_wantedListHud } do {
			[[player], "life_fnc_wantedFetch", false, false] spawn BIS_fnc_MP;
			sleep 60;
		};
	};
} else {
	_hudList ctrlShow false;
};

