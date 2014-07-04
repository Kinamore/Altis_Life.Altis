/*
	File: fn_casinoSounds.sqf
	Author: Steven for WolfPack Server

	Play casino sounds for others
*/
private["_sound","_sounds"];
_sound = [_this,0,"",[""]] call BIS_fnc_param;
_source say3D _sound;