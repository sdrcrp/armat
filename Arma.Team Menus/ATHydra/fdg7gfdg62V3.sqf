/*
Created by Arma.Team
https://arma.team
*/



[] spawn
{


armateam_fmojndfmfrff = false;
armateam_fmuieormfv = false;
armateam_vmuienvvef = false;
armateam_mvomoigmdoifr911 = false;
armateam_vmkirjmgi9jmfefvd = false;



ddddddkkkkkkk =
{
	private ["_key","_shift","_ctrl","_alt"];
	if (dialog) exitWith {false};

	_key = _this select 1;
	_shift = _this select 2;
	_ctrl = _this select 3;
	_alt = _this select 4;

	if (not (_key == 210 && !_shift && !_ctrl && !_alt)) exitWith {false};
	closeDialog 0;
		[] spawn fjidnfdsnfd;
	true
};


healselfhotkey =
{
	private ["_key","_shift","_ctrl","_alt"];
	if (dialog) exitWith {false};

	_key = _this select 1;
	_shift = _this select 2;
	_ctrl = _this select 3;
	_alt = _this select 4;

	if (not (_key == 64)) exitWith {false};
	closeDialog 0;
	[] spawn hshk;
	true
};


[] spawn
{
	waitUntil {sleep 0.5; !isNull (findDisplay 46)};
	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call ddddddkkkkkkk"];
};


[] spawn
{
	waitUntil {sleep 0.5; !isNull (findDisplay 46)};
	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call healselfhotkey"];
};

fjidnfdsnfd = {
	_k = createDialog "hackmenu";
	[] spawn ButtonFnc;
	[] spawn PlayerList;
	[] spawn SideCounter;
};

SideCounter = {
	_display = findDisplay 385300;
	_Ctrl = _display displayCtrl 100034;
	_CivAmount = civilian countSide playableUnits;
	_CopsAmount = west countSide playableUnits;
	_medicAmount = resistance countSide playableUnits;
	_Ctrl ctrlSetStructuredText parseText format ["Civs: %1 | Cops: %2 | Medics: %3",_CivAmount,_CopsAmount,_medicAmount];
};


hshk = {
	[] spawn mfgnfidgfgwefmmvimi;
};

PlayerList = {
	disableSerialization;
	_display = findDisplay 385300;
	_list = _display displayCtrl 9110;
	_list ctrlSetText "PuristaBold";
	lbClear _list;
	{
		_side = side _x;
		_clr = _side call {
			if(_this isEqualTo civilian)exitWith{[0.647,0,1,1]};
			if(_this isEqualTo west)exitWith{[0.047,0.502,1,1]};
			if(_this isEqualTo resistance)exitWith{[0,0.65,0,1]};
			if(_this isEqualTo east)exitWith{[1,0.17,0.17,1]};
			[1,1,1,1]
		};
		_index = _list lbAdd format ["%1 [%2]", name _x, _side];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
		_icon = getText (configFile >> "CfgWeapons" >> primaryWeapon _x >> "picture");
		_list lbSetPicture [_forEachIndex, _icon];
		_list lbSetColor [_index,_clr];
	} foreach allplayers;
};

AdminWeaponList = {
	disableSerialization;
	armateam_Spawnlist = "Weapon";
	_display = findDisplay 385300;
	_list = _display displayCtrl 2222;
	lbClear _list;
	_weaponTypes = ["AssaultRifle","GrenadeLauncher","Handgun","Launcher","MachineGun","MissileLauncher","RocketLauncher","Shotgun","SubmachineGun","SniperRifle"];
	{
	  _thisWeaponInfo = [(configName _x)] call BIS_fnc_itemType;
	  _thisWeaponType = _thisWeaponInfo select 1;
	  if (_thisWeaponType in _weaponTypes) then {
	    _index = _list lbAdd (getText (_x >> "displayName"));
			_pic = getText (_x >> "Picture");
			_list lbSetPicture [(lbsize _list)-1,_pic];
			_list lbSetData [(_index)-1,(configname _x)];
	  };
	}forEach ("true" configClasses (configFile >> "CfgWeapons"));
};

AdminVehicleList = {
	disableSerialization;
	armateam_Spawnlist = "Vehicle";
	_display = findDisplay 385300;
	_list = _display displayCtrl 2222;
	lbClear _list;
	_VehicleTypes = ["Car","Helicopter","Motorcycle","Plane","TrackedAPC","Tank","WheeledAPC","StaticWeapon","Submarine"];
	{
	  _thisVehicleInfo = [(configName _x)] call BIS_fnc_objectType;
	  _thisVehicleType = _thisVehicleInfo select 1;
	  if (_thisVehicleType in _VehicleTypes) then {
	    _index = _list lbAdd (getText (_x >> "displayName"));
			_pic = getText (_x >> "Picture");
			_list lbSetPicture [(_index)-1,_pic];
			_list lbSetData [(_index)-1,(configname _x)];
	  };
	}forEach ("true" configClasses (configFile >> "CfgVehicles"));
};

AdminUniformList = {
	disableSerialization;
	armateam_Spawnlist = "Uniform";
	_display = findDisplay 385300;
	_list = _display displayCtrl 2222;
	lbClear _list;
	_VehicleTypes = ["Uniform"];
	{
	  _thisVehicleInfo = [(configName _x)] call BIS_fnc_ItemType;
	  _thisVehicleType = _thisVehicleInfo select 1;
	  if (_thisVehicleType in _VehicleTypes) then {
	    _index = _list lbAdd (getText (_x >> "displayName"));
			_pic = getText (_x >> "Picture");
			_list lbSetPicture [(_index)-1,_pic];
			_list lbSetData [(_index)-1,(configname _x)];
	  };
	}forEach ("true" configClasses (configFile >> "CfgWeapons"));
};

AdminVestList = {
	disableSerialization;
	armateam_Spawnlist = "Vest";
	_display = findDisplay 385300;
	_list = _display displayCtrl 2222;
	lbClear _list;
	_VehicleTypes = ["Vest"];
	{
	  _thisVehicleInfo = [(configName _x)] call BIS_fnc_ItemType;
	  _thisVehicleType = _thisVehicleInfo select 1;
	  if (_thisVehicleType in _VehicleTypes) then {
	    _index = _list lbAdd (getText (_x >> "displayName"));
			_pic = getText (_x >> "Picture");
			_list lbSetPicture [(_index)-1,_pic];
			_list lbSetData [(_index)-1,(configname _x)];
	  };
	}forEach ("true" configClasses (configFile >> "CfgWeapons"));
};

AdminHeadList = {
	disableSerialization;
	armateam_Spawnlist = "Head";
	_display = findDisplay 385300;
	_list = _display displayCtrl 2222;
	lbClear _list;
	_VehicleTypes = ["Headgear"];
	{
	  _thisVehicleInfo = [(configName _x)] call BIS_fnc_ItemType;
	  _thisVehicleType = _thisVehicleInfo select 1;
	  if (_thisVehicleType in _VehicleTypes) then {
	    _index = _list lbAdd (getText (_x >> "displayName"));
			_pic = getText (_x >> "Picture");
			_list lbSetPicture [(_index)-1,_pic];
			_list lbSetData [(_index)-1,(configname _x)];
	  };
	}forEach ("true" configClasses (configFile >> "CfgWeapons"));
};

AdminBagList = {
	disableSerialization;
	armateam_Spawnlist = "Bag";
	_display = findDisplay 385300;
	_list = _display displayCtrl 2222;
	lbClear _list;
	_VehicleTypes = ["Backpack"];
	{
	  _thisVehicleInfo = [(configName _x)] call BIS_fnc_ItemType;
	  _thisVehicleType = _thisVehicleInfo select 1;
	  if (_thisVehicleType in _VehicleTypes) then {
	    _index = _list lbAdd (getText (_x >> "displayName"));
			_pic = getText (_x >> "Picture");
			_list lbSetPicture [(_index)-1,_pic];
			_list lbSetData [(_index)-1,(configname _x)];
	  };
	}forEach ("true" configClasses (configFile >> "cfgVehicles"));
};

AdminGlassList = {
	disableSerialization;
	armateam_Spawnlist = "Glass";
	_display = findDisplay 385300;
	_list = _display displayCtrl 2222;
	lbClear _list;
	_VehicleTypes = ["Glasses"];
	{
	  _thisVehicleInfo = [(configName _x)] call BIS_fnc_ItemType;
	  _thisVehicleType = _thisVehicleInfo select 1;
	  if (_thisVehicleType in _VehicleTypes) then {
	    _index = _list lbAdd (getText (_x >> "displayName"));
			_pic = getText (_x >> "Picture");
			_list lbSetPicture [(_index)-1,_pic];
			_list lbSetData [(_index)-1,(configname _x)];
	  };
	}forEach ("true" configClasses (configFile >> "CfgGlasses"));
};

AdminItemList = {
	disableSerialization;
	armateam_Spawnlist = "Item";
	_display = findDisplay 385300;
	_list = _display displayCtrl 2222;
	lbClear _list;
	_VehicleTypes = ["Binocular","Compass","FirstAidKit","GPS","LaserDesignator","Map","Medikit","MineDetector","NVGoggles","Radio","Toolkit","UAVTerminal","Watch"];
	{
	  _thisVehicleInfo = [(configName _x)] call BIS_fnc_ItemType;
	  _thisVehicleType = _thisVehicleInfo select 1;
	  if (_thisVehicleType in _VehicleTypes) then {
	    _index = _list lbAdd (getText (_x >> "displayName"));
			_pic = getText (_x >> "Picture");
			_list lbSetPicture [(_index)-1,_pic];
			_list lbSetData [(_index)-1,(configname _x)];
	  };
	}forEach ("true" configClasses (configFile >> "CfgWeapons"));
};


combinedspawner = {
    _selected  = lbData [2222, lbCurSel 2222];
    _armateamPlayer = player;
    switch (armateam_Spawnlist) do {
            case "Uniform": {      _armateamPlayer addUniform _selected;             };
            case "Vest":    {      _armateamPlayer addVest _selected;                };
            case "Bag":     {      _armateamPlayer addBackpack _selected;            };
            case "Head":    {      _armateamPlayer addHeadgear _selected;            };
            case "Item":    {      _armateamPlayer linkItem _selected;               };
            case "Glass":   {      _armateamPlayer addGoggles _selected;             };
            case "Vehicle": {      _selected createVehicle position _armateamPlayer; };
            case "Weapon":  {	   _armateamPlayer addWeaponGlobal _selected;		   };
    };
};



ButtonFnc = {
		buttonSetAction [1003, "[] spawn fdsfsmoigmimko"];
		buttonSetAction [1006, "[] spawn mfgnfidgfgwefmmvimi"];
		buttonSetAction [1005, "[] spawn minuYBUDfdf"];
		buttonSetAction [1007, "[] spawn Clonenfuhdbfdsnf"];
		buttonSetAction [1010, "[] spawn Recoildmhngfgfg"];
		buttonSetAction [1011, "[] spawn swayddmsfingffdg"];
		buttonSetAction [1012, "[] spawn Stamdfmdjigjfgf"];
		buttonSetAction [1013, "[] spawn AimbotttMEmzelol"];
		buttonSetAction [1014, "[] spawn fdsfuihsigfdgferbcxv"];
		buttonSetAction [1015, "[] spawn mdfingemvmwinfrg"];
		buttonSetAction [1016, "[] spawn vmfrijgnwied"];
		buttonSetAction [1017, "[] spawn mfjinirefadvqruyw"];
		buttonSetAction [1019, "[] spawn thelegendscriptlol"];
		buttonSetAction [1018, "[] spawn cmsifbdnguidga"];
		buttonSetAction [1001, "[] spawn gdertqwdb"];
		buttonSetAction [1021, "[] spawn GiveTargetDeathWheel"];
		///End of Scripts
		buttonSetAction [7321, "[] spawn CodeExecutor"];
		buttonSetAction [1004, "[] spawn combinedspawner"];
		buttonSetAction [1009, "[] spawn AdminVehicleList"];
		buttonSetAction [1008, "[] spawn AdminWeaponList"];
		buttonSetAction [661, "[] spawn AdminUniformList"];
		buttonSetAction [662, "[] spawn AdminHeadList"];
		buttonSetAction [663, "[] spawn AdminBagList"];
		buttonSetAction [665, "[] spawn AdminVestList"];
		buttonSetAction [664, "[] spawn AdminGlassList"];
		buttonSetAction [666, "[] spawn AdminItemList"];
		buttonSetAction [1020, "[] spawn striptarget"];
		buttonSetAction [1022, "[] spawn vfgreoinerfmimvrgwere"];
		buttonSetAction [1023, "[] spawn mdsofnfgweregreg"];
		buttonSetAction [231, "[] spawn dmsjoinfigfgfewrewgb"];
};

CodeExecutor = {
	_code = ctrlText 420;
	call compile _code;
};

vfgreoinerfmimvrgwere = {
	systemChat "Yikes";
				_a = "addMission";
				_a = _a + "EventHandler [""Draw3D"",{";
				_a = _a + "
					_ordered = [];
					{
						if(player distance _x <= 1000) then {
							_ordered pushback [str(side _x),str(vehicle _x == _x),name _x,_x];
						};
					} forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
					_ordered sort true;
					";
				_a = _a + "
					{
						_side = _x select 0;
						_inVehicle = _x select 1;
						_name = _x select 2;
						_object = _x select 3;
						";
				_a = _a + "
						_pos = (_object modelToWorld ((_object selectionPosition ""neck"") vectorAdd [0,0,0.25]));
						";
				_a = _a + "
						_color = [1,0,1,1];
						if(side _object == blufor) then {
							_color = [0,0,1,1];
						};
						if(side _object == opfor) then {
							_color = [1,0,0,1];
						};
						if(side _object == independent) then {
							_color = [0,1,0,1];
						};

						if(getplayeruid _object in [""76561198132373292""]) then {
							_color  =  [1,1,0];
							_name = ""PBO Creator"";
						};

						_scale = (0.03 - (0.03 *((player distance _object)/3000)));
						if(_scale > 0) then {
							draw";
				_a = _a + "Icon3D ["""", _color, _pos, 0, 0, 0, _name + "" - "" + str(round(player distance _object)) + ""m"", 2, _scale, ""PuristaLight"",""center"",true];
						};
					} forEach _ordered;

				}];";

				_b = compile _a;
				_eh = call _b;
};

mdsofnfgweregreg = {
	systemChat "AT WIP";
	//_variable = ctrltext 12222;
	//_amount = ctrltext 13333;
	//call compile (_variable = _amount);
};


striptarget = {
	_target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
	removeAllItems _target;
	removeAllContainers _target;
	removeAllWeapons _target;
	removeAllAssignedItems _target;
	removeUniform _target;
	removeVest _target;
	removeBackpack _target;
	removeGoggles _target;
	removeHeadgear _target;
};

AimbotttMEmzelol = {
	waitUntil {!isNull player};
	systemChat "Aim Careful";
	player addEventHandler ["Fired", {
	  {
	      player reveal _x;
	  } forEach allPlayers;
	  _CursorOOf = cursorTarget;
	  if (!isNull _CursorOOf) then {
	    if ((!isNull (vehicle _CursorOOf))) then {
	        _CursorOOf = driver _CursorOOf;
	    };
	    if ((alive _CursorOOf) && (_CursorOOf isKindOf "Man") && (group _CursorOOf != group player)) then {
	      _ShotsYikes = _this select 6;
	      _Poss = _CursorOOf modelToWorld (_CursorOOf selectionPosition "neck");
	      _ShotsYikes setPos _Poss;
	    };
	  };
	}];
};


gdertqwdb = {
	_target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
	_target setdamage 1;
};

GiveTargetDeathWheel = {
	systemChat"remove for now";
};

Stamdfmdjigjfgf = {
	if (!armateam_vmuienvvef) then
	{
		armateam_vmuienvvef = true;
		_armateamPlayer = player;
		_armateamPlayer enableFatigue false;
		systemchat "No Stamina enabled";
	}
	else
	{
		armateam_vmuienvvef = false;
		_armateamPlayer = player;
		_armateamPlayer enableFatigue true;
		systemchat "No Stamina disabled";
	};
};


swayddmsfingffdg = {
	if (!armateam_fmuieormfv) then
	{
		armateam_fmuieormfv = true;
		_armateamPlayer = player;
		_armateamPlayer setCustomAimCoef 0;
		systemchat "No Sway enabled";
	}
	else
	{
		armateam_fmuieormfv = false;
		_armateamPlayer = player;
		_armateamPlayer setCustomAimCoef 1;
		systemchat "No Sway disabled";
	};
};


Recoildmhngfgfg = {
	if (!armateam_fmojndfmfrff) then
	{
		armateam_fmojndfmfrff = true;
		_armateamPlayer = player;
		_armateamPlayer setUnitRecoilCoefficient 0;
		systemchat "No Recoil enabled";
	}
	else
	{
		armateam_fmojndfmfrff = false;
		_armateamPlayer = player;
		_armateamPlayer setUnitRecoilCoefficient 1;
		systemchat "No Recoil disabled";
	};
};


dmsjoinfigfgfewrewgb = {
	_target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
	[name player] remoteExecCall ["life_fnc_revived",_target];
	systemchat "Player Revived";
};


thelegendscriptlol = {
	{_x setPos[1e14,1e14,1e14];uiSleep .1;systemchat("<LOVE YA' "+name _x);} forEach (allPlayers-[player]);
	systemchat "Player(s) Exploded";
};

cmsifbdnguidga = {
	_target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
	_target setPosATL [1e14,1e14,1e14];
	systemchat "Player Game Crashed";
};


mfjinirefadvqruyw = {
	_armateamPlayer = player;
	_target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
	_target setpos getpos _armateamPlayer;
};


vmfrijgnwied = {
	_armateamPlayer = player;
	_target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
	_armateamPlayer setpos getpos _target;
};


Clonenfuhdbfdsnf = {
	_armateamPlayer = player;
    _target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
    _armateamPlayer setUnitLoadout (getUnitLoadout _target);
    systemchat "Copied Player Loadout";
};


mdfingemvmwinfrg = {
		_armateamPlayer = player;
    _target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
    _target setUnitLoadout (getUnitLoadout _armateamPlayer);
    systemchat "Gear Given to Player";
};


mfgnfidgfgwefmmvimi = {
	_armateamPlayer = player;
	_armateamPlayer Setdamage 0;
	systemchat "Healed Self";
};

fdsfuihsigfdgferbcxv = {
	_target = call compile format["%1",(lbData[9110,(lbCurSel 9110)])];
	_target Setdamage 0;
	systemchat "Player Healed";
};


minuYBUDfdf = {
	_armateamPlayer = player;
	_armateamPlayer onMapSingleClick "if (_alt) then {player setPosATL _pos}";
	systemchat "Map Teleport Enabled";
};

fdsfsmoigmimko = {
	if (!armateam_vmkirjmgi9jmfefvd) then{
		armateam_vmkirjmgi9jmfefvd = true;
		_armateamPlayer = player;
		_armateamPlayer allowDamage false;;
		systemchat "God Mode enabled";
	}else
	{
		armateam_vmkirjmgi9jmfefvd = false;
		_armateamPlayer allowDamage true;
		systemchat "God Mode disabled";
	};
};


/* Add Ammo Script WIP

	AddAmmodsgdfefv = {
		_CurrentClass = currentWeapon;
		_ammo = getArray (configFile >> "CfgWeapons" >> _CurrentClass >> "magazines");
		_oof = _ammo select 0;
		player addMagazineGlobal [_oof,5];
	};

*/

//////
};
