/*
	@Version: 1.0
	@Author: Tonic, [BWG] Joe
	@Edited: 27.08.2013
*/
private["_display","_list","_crimes","_bounty","_mylist"];

disableSerialization;
_display = findDisplay 2400;
_list = _display displayCtrl 2402;
_data = lbData[2401,(lbCurSel 2401)];
_data = call compile format["%1", _data];
_mylist = [];

if (isNil "_data") exitWith {};
if (typeName _data != "ARRAY") exitWith {};
if (count _data == 0) exitWith {};
lbClear _list;

_crimes = _data select 2;
_bounty = _data select 3;
	
{
	_crime = _x;
	if(!(_crime in _mylist)) then
	{
		_mylist set[count _mylist,_crime];
		_list lbAdd format["%1 count(s) of %2",{_x == _crime} count _crimes,_crime];
	};
} forEach _crimes;

ctrlSetText [2403, format["Current Bounty Price: $%1",[_bounty] call life_fnc_formatMoney]];
