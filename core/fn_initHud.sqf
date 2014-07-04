/*
	@Version: 3.0
	@Author: Tonic, [BWG] Joe
	@Edited: 17.11.2013
*/
private ["_display","_logo","_lifeVersion"];

disableSerialization;

999 cutRsc ["playerHUD", "PLAIN"];
[] call life_fnc_hudUpdate;

// Hide wanted list in HUD
_ui = uiNameSpace getVariable "playerHUD";
_hudList = _ui displayCtrl 23520;
_hudList ctrlShow false;

[] spawn {
	private["_dam"];
	while {true} do {
		_dam = damage player;
		waitUntil {(damage player) != _dam};
		[] call life_fnc_hudUpdate;
	};
};