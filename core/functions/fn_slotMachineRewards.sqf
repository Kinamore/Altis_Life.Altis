/*
	fn_slotMachineRewards.sqf
	
	Author: Steven for WolfPack Server
	
	Description: Figure it out.
	lemon = 0
	melon = 1
	cherry = 2
	Wolfpack = 3
*/
private["_idxA","_idxB","_idxC","_slotType","_ret"];
_idxA = [_this,0,-1,[0]] call BIS_fnc_param;
_idxB = [_this,1,-1,[0]] call BIS_fnc_param;
_idxC = [_this,2,-1,[0]] call BIS_fnc_param;
_slotType = [_this,3,0,[0]] call BIS_fnc_param;
if(_idxA == -1 OR _idxB == -1 OR _idxC == -1) exitWith {[]};

_ret = 0;

//  jackpot 1e
if(_idxA == 3 && _idxB == 3 && _idxC == 3)then//		 					(WP , WP , WP)
{
	if(_slotType == 0)then {_ret = 250000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 500000;};   //average joe's
	if(_slotType == 2)then {_ret = 2500000;};  //high roller's
};

//  jackpot 2e
if(_idxA == 3 && _idxB == 2 && _idxC == 3)then//							(WP , Cherry , WP)
{
	if(_slotType == 0)then {_ret = 150000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 250000;};   //average joe's
	if(_slotType == 2)then {_ret = 1000000;};  //high roller's
};

//
if((_idxA == 3 && _idxB == 1 && _idxC == 3) or (_idxA == 2 && _idxB == 3 && _idxC == 2))then//		(WP , Melon , WP)  	  or 	 (Cherry , WP , Cherry)
{
	if(_slotType == 0)then {_ret = 100000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 150000;};   //average joe's
	if(_slotType == 2)then {_ret = 500000;};  //high roller's
};

//
if((_idxA == 1 && _idxB == 3 && _idxC == 1) or (_idxA == 2 && _idxB == 2 && _idxC == 2))then//		(Melon , WP , Melon)  	  or 	 (Cherry , Cherry , Cherry)
{
	if(_slotType == 0)then {_ret = 50000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 100000;};   //average joe's
	if(_slotType == 2)then {_ret = 250000;};  //high roller's
};

//
if((_idxA == 3 && _idxB == 1 && _idxC == 3) or (_idxA == 1 && _idxB == 1 && _idxC == 1))then//		(WP , Lemon , WP) 		or 		(Melon , Melon , Melon)
{
	if(_slotType == 0)then {_ret = 25000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 50000;};   //average joe's
	if(_slotType == 2)then {_ret = 150000;};  //high roller's
};

//
if((_idxA == 0 && _idxB == 3 && _idxC == 0) or (_idxA == 0 && _idxB == 0 && _idxC == 0))then//		(Lemon , WP , Lemon) 	or 		(Lemon , Lemon , Lemon)
{
	if(_slotType == 0)then {_ret = 15000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 25000;};   //average joe's
	if(_slotType == 2)then {_ret = 100000;};  //high roller's
};

//
if((_idxA == 1 && _idxC == 3 && _idxA == 2) or (_idxA == 2 && _idxC == 3 && _idxA == 1))then//		(Melon , WP , Cherry) 	or 	(Cherry , WP , Melon)
{
	if(_slotType == 0)then {_ret = 10000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 15000;};   //average joe's
	if(_slotType == 2)then {_ret = 50000;};  //high roller's
};

//
if((_idxA == 0 && _idxC == 3 && _idxA == 2) or (_idxA == 2 && _idxC == 3 && _idxA == 0))then//		(Lemon , WP , Cherry) 	or 	(Cherry , WP , Lemon)
{
	if(_slotType == 0)then {_ret = 5000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 10000;};   //average joe's
	if(_slotType == 2)then {_ret = 25000;};  //high roller's
};

//
if((_idxA == 0 && _idxC == 3 && _idxA == 1) or (_idxA == 1 && _idxC == 3 && _idxA == 0))then//		(Lemon , WP , Melon) 	or 	(Melon , WP , Lemon)
{
	if(_slotType == 0)then {_ret = 1000;};   //penny snatcher's
	if(_slotType == 1)then {_ret = 5000;};   //average joe's
	if(_slotType == 2)then {_ret = 15000;};  //high roller's
};

_ret;