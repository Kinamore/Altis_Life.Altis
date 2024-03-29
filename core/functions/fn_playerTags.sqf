/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_visible","_position","_nearUnits","_width","_height"];

_nearUnits = nearestObjects[(visiblePosition player),["Man"],35];
{
	_hasName = if(!isNil {(_x getVariable "name")}) then {true} else {false};
	if(_hasName && {_x != player}) then {
		_position = visiblePosition _x;
		_position set[2,(getPosATL _x select 2) + 0.5];
		drawIcon3D ["a3\ui_f\data\map\MapControl\hospital_ca.paa",[1,0,0,1],_position,0.6,0.6,0,(_x getVariable ["name","Unknown Player"]),0,0.04];
	} else {
		if(isPlayer _x && {_x != player} && {_x distance player <= 10}) then {
			_visible = lineIntersects [eyePos player, eyePos _x,player, _x];
			if(!_visible) then {
				_position = visiblePosition _x;
				_position set[2,(getPosATL _x select 2) + 2.2];
				_width = 0.7;
				_height = 0.7;
				switch (_x getVariable["coplevel", 0]) do
				{
					case (1) : {_name = format["Recrut %1", _x getVariable["realname",name _x]];_icon = MISSION_ROOT + "icons\icon_recruit.paa";};
					case (2) : {_name = format["Officer %1", _x getVariable["realname",name _x]];_icon = MISSION_ROOT + "icons\icon_officer.paa";};
					case (3) : {_name = format["Sergeant %1", _x getVariable["realname",name _x]];_icon = MISSION_ROOT + "icons\icon_sergeant.paa";};
					case (4) : {_name = format["Lieutenant %1", _x getVariable["realname",name _x]];_icon = MISSION_ROOT + "icons\icon_lieutenant.paa";};
					case (5) : {_name = format["Captain %1", _x getVariable["realname",name _x]];_icon = MISSION_ROOT + "icons\icon_captain.paa";};
					case (6) : {_name = format["Major %1", _x getVariable["realname",name _x]];_icon = MISSION_ROOT + "icons\icon_deputychief.paa";};
					case (7) : {_name = format["Chief of Police %1", _x getVariable["realname",name _x]];_icon = MISSION_ROOT + "icons\icon_chief.paa";};
					default {_name = _x getVariable["realname",name _x]; _icon = ""; _width = 0; _height = 0;}
				};
                if (_x getVariable["coplevel", 0] > 0) then
				{
					_icon = [((_x getVariable["coplevel", 0]) - 1),"texture"] call BIS_fnc_rankParams;
				};
                drawIcon3D ["",[1,1,1,1],_position,0,0,0,name _x,0,0.04];
			};
		};
	};
} foreach _nearUnits;