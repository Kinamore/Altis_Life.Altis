/*
	@Version: 1.0
	@Author: Tonic, [BWG] Joe
	@Edited: 27.08.2013
*/
private["_display","_list","_name","_crimes","_bounty","_units"];
disableSerialization;

createDialog "life_wanted_menu";

_display = findDisplay 2400;
_list = _display displayCtrl 2401;
lbClear _list;
_units = [];

ctrlSetText[2404, "Establishing connection..."];

[[player], "life_fnc_wantedFetch", false, false] spawn BIS_fnc_MP;
