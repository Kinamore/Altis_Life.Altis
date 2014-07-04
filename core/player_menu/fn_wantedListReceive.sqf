/*
	@Version: 1.0
	@Author: Tonic, [BWG] Joe
	@Edited: 27.08.2013
*/
private["_wantedList","_display","_list","_units","_entry","_ui","_hudList","_out","_maxBounty","_bounty","_index"];

_wantedList = [_this,0,[],[[]]] call BIS_fnc_param;

disableSerialization;

if (dialog) then {
	_display = findDisplay 2400;
	_list = _display displayCtrl 2401;
	lbClear _list;

	_units = [];
	{
		_units set [count _units, name _x];
	} forEach playableUnits;

	{
		_entry = _x;
		if ((_entry select 0) in _units) then {
			_list lbAdd format["%1", _entry select 0];
			_list lbSetData [(lbSize _list)-1, str(_entry)];
		};
	} forEach _wantedList;

	ctrlSetText[2404, "Connection Established"];

	if (((lbSize _list)-1) == -1) then {
		_list lbAdd "No criminals";
	};
};

// Check if wanted list in HUD is activated.
if (life_wantedListHud) then {
	_ui = uiNameSpace getVariable "playerHUD";
	_hudList = _ui displayCtrl 23520;
	
	// Sort array by bounty.
	_out = "<t color='#FF0000'><t size='1.5'>Wanted List</t></t><br/><br/>";
	if (count _wantedList == 0) then {
		_out = _out + "No criminals";
	} else {
		while { true } do {
			_maxBounty = -1;
			{
				if (count _x != 0) then {
					_bounty = _x select 3;
					if (_bounty > _maxBounty) then {
						_maxBounty = _bounty;
						_index = _forEachIndex;
					};
				};
			} forEach _wantedList;
			if (_maxBounty == -1) exitWith {};
			_out = _out + format ["[$%1] %2<br/>", [_maxBounty] call life_fnc_formatMoney, (_wantedList select _index) select 0];
			_wantedList set [_index, []];
		};
	};
	
	_hudList ctrlSetStructuredText parseText _out;
	_hudList ctrlCommit 0;
};