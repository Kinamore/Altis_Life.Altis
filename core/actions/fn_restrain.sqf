/*
	File: fn_restrain.sqf
	Author: Skalicon
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if((_unit getVariable ["restrained",false])) exitWith {};
if((_unit getVariable ["Escorting",false])) exitWith {};
if(isNull _unit) exitWith {}; //Not valid
if(player == _unit) exitWith {};
if (side player == civilian) then {
	if(life_inv_ziptie < 1) exitWith {hint"You need a zip tie to restrain someone."};
	life_inv_ziptie = life_inv_ziptie - 1;
};
[[_target, "handcuffs",10],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
[[player,_unit],"life_fnc_restrainAction",_unit,false] spawn BIS_fnc_MP;