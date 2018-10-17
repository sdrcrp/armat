waitUntil {!isNull (findDisplay 46)};
(findDisplay 46) displayAddEventHandler['KeyDown','if (_this select 1 == 210) then { call showatMenu; };'];
(findDisplay 46) displayAddEventHandler['KeyDown','_key = _this select 1; if (_key in [0xD3,0x06,0x08,0xCF,0x3F,0x3B,0x3C] && (_this select 2)) then { [_key] call hotkeyHandler; };'];

AH_TimeStr = {
	[serverTime, "HH:MM"] call BIS_fnc_secondsToString
};

AllWeapons = [];
AllVehicles = [];
TargetObject = objNull;
sortByName = false;
atListAis = false;

_cfgWeapons = configFile >> 'CfgWeapons';
for '_i' from 0 to (count _cfgWeapons)-1 do {
	_weapon = _cfgWeapons select _i;
	if (isClass _weapon) then {
		_name = configName _weapon;
		_trimStart = toArray _name;
		_trimStart resize 2;
		_trimStart = toString _trimStart;
		_pic = (getText (configFile >> 'CfgWeapons' >> _name >> 'picture'));
		_displayName = (getText (configFile >> 'CfgWeapons' >> _name >> 'displayName'));

		if ((_pic != '')) then {
			if ((_trimStart != 'H_') && (_trimStart != 'V_') && (_trimStart != 'U_')) then {
				AllWeapons pushBackUnique [_name, _pic, _displayName];
			};
		};
	};
};

_cfgVehicles = configFile >> 'CfgVehicles';
for '_i' from 0 to (count _cfgVehicles)-1 do {
	_vehicle = _cfgVehicles select _i;
	if (isClass _vehicle) then {
		_name = configName _vehicle;
		_pic = getText(_vehicle >> 'picture');
		_displayName = (getText (_vehicle >> 'displayName'));

		if((getText(_vehicle >> 'displayName') != '') && _pic != '' && getNumber(_vehicle >> 'scope') in [0,2]) then {
			if ((_name isKindOf 'Air') || (_name isKindOf 'LandVehicle') || (_name isKindOf 'Ship')) then {
				if !((_name isKindOf 'ParachuteBase') || (_name isKindOf 'BIS_Steerable_Parachute')) then {
					if ((toLower _name) find 'base' == -1) then {
						AllVehicles pushBackUnique [_name, _pic, _displayName];
					};
				};
			};
		};
	};
};

if (!isNil "life_fnc_atmMenu" || !isNil "life_vehicles" || !isNil "life_licenses") then {
	isModLife = true;
} else {
	isModLife = false;
};

addMissionEventHandler["PlayerConnected", {
	[allUnits] call fillPlayerList;
	[] call formatTopBar;
}];

addMissionEventHandler["PlayerDisconnected", {
	[allUnits] call fillPlayerList;
	[] call formatTopBar;
}];

hotkeyHandler = {
	params['_key'];

	if(_key == 0xD3 || _key == 0xCF || _key == 0x3B) exitWith {
		_curs = cursorObject;

		if (isNull _curs) then {
			_curs = cursorTarget;
		};

		if (isNull TargetObject || TargetObject != _curs) exitWith {
			TargetObject = _curs;

			if (isNull TargetObject) exitWith {};
			if (_key == 0xD3) then {
				systemChat format['Are you sure you want to delete %1?', (typeOf _curs)];
			};
			if (_key == 0xCF) then {
				systemChat format['Are you sure you want to destroy %1?', (typeOf _curs)];
			};
			if (_key == 0x02) then {
				systemChat format['Are you sure you want to change the lock state of %1', typeOf _curs];
			};
		};

		if (TargetObject == _curs) exitWith {
			if (_key == 0xD3) exitWith {
				deleteVehicle _curs;
				systemChat format['Deleted %1', (typeOf _curs)];
			};
			if (_key == 0xCF) exitWith {
				_curs setDamage 1;

				systemChat format['Destroyed %1', (typeOf _curs)];
			};
			if (_key == 0x3B) exitWith {

				if (locked _curs == 2) exitWith {
					_curs setVehicleLock "UNLOCKED";
					systemChat format["Cursor target was unlocked", name currentTarget];
				};
				if (locked _curs == 0 || locked _curs == 1) exitWith {
					_curs setVehicleLock "LOCKED";
					systemChat format["Cursor target was locked", name currentTarget];
				};

				systemChat format['Unknown lock state: %1', locked _veh];
			};
		};
	};

	if (_key == 0x3C) exitWith {
		[player] call atHeal;
	};

	if (_key == 0x06) exitWith {
		_veh = (vehicle player);
		_dir = getDir _veh;
		_dist = 5;

		_pos = getPos _veh;
		_pos = [(_pos select 0)+_dist*sin(_dir), (_pos select 1)+_dist*cos(_dir), (_pos select 2)];
		_veh setPos _pos;
	};
	if (_key == 0x08) exitWith {
		_obj = vehicle player;
		_vel = velocity _obj;
		_obj setVelocity [(_vel select 0),(_vel select 1),10];
	};

	if (_key == 0x3F) exitWith {
		comment 'tired af while writing this';
		_obj = cursorTarget;
		_pos = [];
		if (isNull _obj) then {
			_obj = cursorObject;
			if (isNull _obj) then {
				_pos = screenToWorld [0.5,0.5];
			};
		};
		if (!isNull _obj) then {
			_pos = getPos _obj;
		};

		[_pos] spawn {
			params['_pos'];
			_explosion = 'LightningBolt' createVehicle _pos;
			_explosion setDamage 1;
			_class = selectRandom ['lightning1_F','lightning2_F'];
			_lightning = _class createVehicle _pos;
			uiSleep 0.15;
			deleteVehicle _lightning;
		};
	};
};

atGod = {
	if (isNil 'atGodToggle') then {atGodToggle = false};
	if (!atGodToggle) then {
		atGodToggle = true;
		systemChat 'AT: God Enabled';

		[] spawn {
			while {atGodToggle} do {
				player removeAllEventHandlers 'HandleDamage';
				player addEventHandler ['HandleDamage', {0}];
				player allowDamage false;
				player setBleedingRemaining 0;
				player setOxygenRemaining 1;
				player setFatigue 0;
				uiSleep 2;
			};
		};

	} else {
		atGodToggle = false;
		systemChat 'AT: God Disabled';

		player allowDamage true;
		player removeAllEventHandlers 'HandleDamage';
	};
};
atVGod = {
	if (isNil 'atVGodToggle') then {atVGodToggle = false};

	if (!atVGodToggle) then {
		atVGodToggle = true;
		[] spawn {
			while {atVGodToggle} do {
				if ((vehicle player) != player) then {
					(vehicle player) allowDamage false;
					(vehicle player) removeAllEventhandlers 'HandleDamage';
					(vehicle player) addEventHandler ['HandleDamage', {0}];
				};
				uiSleep 2;
			};
		};
		systemChat 'AT: Vehicle God Enabled';
	} else {
		atVGodToggle = false;
		(vehicle player) allowDamage true;
		(vehicle player) removeAllEventhandlers 'HandleDamage';

		systemChat 'AT: Vehicle God Disabled';
	};

};

atESP = {
	if (isNil 'atEspToggle') then {atEspToggle = false};
	comment 'ty bantah <3';

	if (!atEspToggle) then {
		atEspToggle = true;
		systemChat 'AT: at ESP Enabled';

		at_esp_eh = addMissionEventHandler ['Draw3D', {
			{
				if (!isNull _x) then {
					if (vehicle _x != cameraOn) then {
						_name = (name _x);
						_pos = (_x modelToWorld ((_x selectionPosition 'neck') vectorAdd [0,0,0.25]));

						if ((cameraOn distance _x) <= 1500) then {
								_color = [0,0.27,0.84,1];
								if (side _x == opfor) then {
									_color = [0.9,0.11,0,1];
								};
								if (side _x == civilian) then {
									_color = [0.4, 0, 0.4, 1];
								};
								if (side _x == independent) then {
									_color = [0, 0.8, 0.2, 1];
								};


								drawIcon3D ['', _color, _pos, 0, 0, 0, (format ['%1 (%2m)', _name, (round(cameraOn distance _x))]), 1.5, 0.03, 'PuristaLight','center',true];
						};
					};
				};
			} foreach allPlayers;
		}];

	} else {
		atEspToggle = false;
		systemChat 'AT: ESP Disabled';

		removeMissionEventHandler ['Draw3D', at_esp_eh];
	};
};

atAiESP = {
	if (isNil 'atAiEspToggle') then {atAiEspToggle = false};
	comment 'ty bantah <3';

	if (!atAiEspToggle) then {
		atAiEspToggle = true;
		systemChat 'AT: AI ESP Enabled';

		at_ai_esp_eh = addMissionEventHandler ['Draw3D', {
			{
				if (!isNull _x && !(isPlayer _x)) then {
					if (vehicle _x != cameraOn) then {
						_name = (name _x);
						_pos = (_x modelToWorld ((_x selectionPosition 'neck') vectorAdd [0,0,0.25]));

						if ((cameraOn distance _x) <= 1500) then {
								_color = [0,0.27,0.84,1];
								if (side _x == opfor) then {
									_color = [0.9,0.11,0,1];
								};
								if (side _x == civilian) then {
									_color = [0.4, 0, 0.4, 1];
								};
								if (side _x == independent) then {
									_color = [0, 0.8, 0.2, 1];
								};


								drawIcon3D ['', _color, _pos, 0, 0, 0, (format ['%1 (%2m)', _name, (round(cameraOn distance _x))]), 1.5, 0.03, 'PuristaLight','center',true];
						};
					};
				};
			} foreach allUnits;
		}];

	} else {
		atAiEspToggle = false;
		systemChat 'AT: AI ESP Disabled';

		removeMissionEventHandler ['Draw3D', at_ai_esp_eh];
	};
};

atBoost = {
	if (isNil 'atBoostToggle') then {atBoostToggle = false};

	if (!atBoostToggle) then {
		atBoostToggle = true;

		atBoostEH = (findDisplay 46) displayAddEventHandler['KeyDown', {
			if (vehicle player == player) exitWith {};
			if (_this select 4) then {
				if (isNil 'lastSpeedAdded') then {lastSpeedAdded = 0};

				if (time - lastSpeedAdded > 1) then {

					_vehicle = (vehicle player);
					_vel = velocity _vehicle;
					_dir = direction _vehicle;
					_speed = 0.5;
					_vehicle setVelocity [
						(_vel select 0) + (sin _dir * _speed),
						(_vel select 1) + (cos _dir * _speed),
						(_vel select 2)
					];
				};
			};
		}];
		systemChat 'AT: Press ALT for a boost!';
	} else {
		atBoostToggle = false;
		(findDisplay 46) displayRemoveEventHandler['KeyDown', atBoostEH];
		systemChat 'AT: Boosting turned off :(';
	};
};
atAutoRevive = {
	if (isNil 'atReviveToggle') then {atReviveToggle = false};

	if (!atReviveToggle) then {
		atReviveToggle = true;
		[] spawn {
			while {atReviveToggle} do {
				waitUntil {!alive player || !atReviveToggle};
				if (!atReviveToggle) exitWith {};

				uiSleep 3;

				if (!isModLife) then {
					if (!isNil "FAR_HandleTreating") then {
						player setVariable ["FAR_isUnconscious", 0, true];
					};
				} else {
					player setVariable ['Revive',false,true];
					[profileName] remoteExec ['life_fnc_revived',player];
				};
				systemChat 'AT: Revived yourself';
				uiSleep 10;
			};
		};
		systemChat 'AT: Enabled auto self revive';
	} else {
		atReviveToggle = false;
		systemChat 'AT: Disabled auto self revive';
	};
};
atTP = {
	if !('ItemMap' in items player) then {
		systemChat 'AT: A map was added to your inventory';
		player addWeapon 'ItemMap';
	};

	if (isNil 'atTpToggle') then {atTpToggle = false;};

	if (!atTpToggle) then {
		atTpToggle = true;

		onMapSingleClick '
			if (_alt) then {
				vehicle player setPos _pos;
				openMap[false,false];
			};
		';
		systemChat 'AT: You can now alt+click on your map to teleport';
	} else {
		atTpToggle = false;
		systemChat 'AT: Map teleport disabled';
		onMapSingleClick '';
	};
};

atArsenal = {
	_result = ["Enter Virtual Arsenal? (Tends to have some banny side effects)", "Are you sure?", true, true] call BIS_fnc_guiMessage;
	if (_result) then {
		['Open',true] spawn BIS_fnc_arsenal;
	};
};

atDeadMarkers = {
	if (isNil 'atDeadMarkersToggle') then {atDeadMarkersToggle = false};

	if (!atDeadMarkersToggle) then {
		atDeadMarkersToggle = true;

		[] spawn {
			while {atDeadMarkersToggle} do {
				_deadPeeps = allDeadMen;

				comment 'delete all markers';
				for '_i' from 0 to (count _deadPeeps)+10 do {
					deleteMarkerLocal ('deadPlayerMarker' + (str _i));
				};

				for '_i' from 0 to (count _deadPeeps)-1 do {
					_corpse = _deadPeeps select _i;
					if(!isNull _corpse) then {
						_marker = createMarkerLocal [('deadPlayerMarker' + (str _i)), getPos _corpse];

						_txt = format['DEAD (%1m)', round (player distance _corpse)];
						_marker setMarkerColorLocal 'ColorRed';
						_marker setMarkerTypeLocal 'waypoint';
						_marker setMarkerTextLocal _txt;
					};
				};
				uiSleep 5;
			};

			for '_i' from 0 to (count allDeadMen)+10 do {
				deleteMarkerLocal ('deadPlayerMarker' + (str _i));
			};
		};

		systemChat 'AT: Dead Markers Enabled';
	} else {
		atDeadMarkersToggle = false;
		systemChat 'AT: Dead Markers Disabled';
	};
};

atInfAmmo = {
	if (isNil 'atInfAmmoToggle') then {atInfAmmoToggle = false};

	if (!atInfAmmoToggle) then {
		atInfAmmoToggle = true;

		[] spawn {
			while {atInfAmmoToggle} do {
				player setAmmo [currentWeapon player, 100000];
				vehicle player setVehicleAmmo 1;
				uiSleep 0.1;
			};
		};

		systemChat 'AT: Unlimited ammo enabled';
	} else {
		atInfAmmoToggle = false;

		systemChat 'AT: Unlimited ammo disabled';
	};
};

atRapidFire = {
	if (isNil 'atRapidFireToggle') then {atRapidFireToggle = false};

	if (!atRapidFireToggle) then {
		atRapidFireToggle = true;

		[] spawn {
			while {atRapidFireToggle} do {
				(vehicle player) setWeaponReloadingTime [gunner (vehicle player), currentMuzzle (gunner (vehicle player)), 0];
				uiSleep 0.01;
			};
		};

		systemChat 'AT: Rapid fire enabled';
	} else {
		atRapidFireToggle = false;

		systemChat 'AT: Rapid fire disabled';
	};
};

atRecoil = {
	if (isNil 'atRecoilToggle') then {atRecoilToggle = false};

	if (!atRecoilToggle) then {
		atRecoilToggle = true;

		atOldRecoil = unitRecoilCoefficient player;
		player setUnitRecoilCoefficient 0;

		systemChat 'AT: No recoil enabled';
	} else {
		atRecoilToggle = false;
		player setUnitRecoilCoefficient atOldRecoil;

		systemChat 'AT: No recoil disabled';
	};
};

atSway = {
	if (isNil 'atSwayToggle') then {atSwayToggle = false};

	if (!atSwayToggle) then {
		atSwayToggle = true;

		player setCustomAimCoef 0;

		systemChat 'AT: No sway enabled';
	} else {
		atSwayToggle = false;
		player setCustomAimCoef 1;

		systemChat 'AT: No sway disabled';
	};
};

atFatigue = {
	if (isNil 'atFatigueToggle') then {atFatigueToggle = false};

	if (!atFatigueToggle) then {
		atFatigueToggle = true;

		[] spawn {
			while {atFatigueToggle} do {
				player setFatigue 0;
				uiSleep 0.5;
			};
		};

		systemChat 'AT: No fatigue enabled';
	} else {
		atFatigueToggle = false;

		systemChat 'AT: No fatigue disabled';
	};
};

atMarkers = {
	if (isNil 'atMarkersToggle') then {atMarkersToggle = false};

	if (!atMarkersToggle) then {
		atMarkersToggle = true;

		[] spawn {
			_i = 0;
			_markers = [];
			while {atMarkersToggle} do {
				{
					if (_x != player) then {


						_name = str (vehicle _x);

						if (getMarkerColor _name == "") then {
							_marker = createMarkerLocal[_name, position (vehicle _x)];
							_marker setMarkerTypeLocal "mil_triangle";

							if (side _x == west) then {
								_marker setMarkerColorLocal "ColorWEST";
							};
							if (side _x == east) then {
								_marker setMarkerColorLocal "ColorEAST";
							};
							if (side _x == independent) then {
								_marker setMarkerColorLocal "colorIndependent";
							};
							if (side _x == civilian) then {
								_marker setMarkerColorLocal "ColorCIV";
							};

							_markers pushBackUnique [_marker, (vehicle _x)];
						};

						if (isNull objectParent _x) then {
							_name setMarkerTextLocal format["%1 - %2m", name _x, round(player distance _x)];
						} else {
							_crewNames = [];
							{
								_crewNames pushBackUnique (name _x);
							} foreach crew (vehicle _x);
							_name setMarkerTextLocal format["%1 - %2m", str _crewNames, round(vehicle _x distance player)];
						};

						_name setMarkerDirLocal getDir (vehicle _x);
						_name setMarkerPosLocal getPos (vehicle _x);
					};
				} foreach allUnits;
				uiSleep 0.1;

				_i = _i + 1;

				if (_i > 20) then {
					{
						_marker = _x select 0;
						_unit = _x select 1;
						if (_unit isKindOf "vehicle") then {
							if ((count crew _unit) == 0) then {
								deleteMarker _marker;
								_markers deleteAt _forEachIndex;
							};
						} else {
							if (isNull _unit || !alive _unit) then {
								deleteMarker _marker;
								_markers deleteAt _forEachIndex;
							};
							if (vehicle _unit != _unit) then {
								if (getMarkerColor (str vehicle _unit) != "") then {
									deleteMarker _marker;
									_markers deleteAt _forEachIndex;
								};
							};
						};
					} foreach _markers;
					_i = 0;
				};
			};

			{
				deleteMarker (_x select 0);
			} foreach _markers;
		};


		systemChat 'AT: Player Markers Enabled';
	} else {
		atMarkersToggle = false;
		systemChat 'AT: Player Markers Disabled';
	};
};

atHeal = {
	params["_target"];
	vehicle _target setDamage 0;
	_target setDamage 0;

	if (_target == player) then {
		if (!isNil "life_thirst" && !isNil "life_hunger") then {
			life_thirst = 100;
			life_hunger = 100;
		};
	};

	systemChat format['Healed %1', name _target];
};

atFly = {
	if (isNil 'atFlyToggle') then {atFlyToggle = false};

	if (!atFlyToggle) then {
		atFlyToggle = true;
		player allowDamage false;

		[] spawn {
			while{atFlyToggle} do {
				player playActionNow 'PlayerStand';
				_dir = eyeDirection player;
				if(currentWeapon player != '') then {
					_dir = player weaponDirection (currentWeapon player);
				};
				player setvelocity (_dir vectorMultiply 15);
			};
			uiSleep 1;
			player allowDamage true;
		};
		systemChat 'AT: Fly mode enabled';
	} else {
		atFlyToggle = false;
		systemChat 'AT: Fly mode disabled';
	};
};

atSpeed = {
	if (isNil 'atSpeedToggle') then {atSpeedToggle = false};

	if(!atSpeedToggle) then {
		atSpeedToggle = true;
		player setAnimSpeedCoef 8;

		systemChat 'AT: Speed Enabled';

	} else {
		atSpeedToggle = false;
		player setAnimSpeedCoef 1;

		systemChat 'AT: Speed Disabled';
	};
};

atNoGrass = {
	if (isNil 'atGrassToggle') then {atGrassToggle = false};

	if (!atGrassToggle) then {
		atGrassToggle = true;
		setTerrainGrid 50;
		systemChat 'AT: Grass Disabled';
	} else {
		atGrassToggle = false;
		setTerrainGrid 25;
		systemChat 'AT: Grass Enabled';
	};
};

atGiveAmmo = {
	_item = currentWeapon player;
	_mags = getArray(configFile >> 'CfgWeapons' >> _item >> 'magazines');
	_mag = _mags select 0;

	player addMagazine _mag;
	player addMagazine _mag;
	systemChat 'AT: Spawned 2 mags';
};

atRainbow = {
	_material =  'A3\characters_f_bootcamp\Data\VR_Soldier_F.rvmat';
	_texture = 'a3\data_f\rainbow_ca.paa';
	_vehicle = (vehicle player);

	for '_i' from 0 to 50 do {
		_vehicle setObjectTextureGlobal [_i,_texture];
		_vehicle setObjectMaterialGlobal [_i,_material];
	};

	systemChat 'AT: Danking reel hard';
};

atListNear = {

	if(isNil "atListNearToggle") then {atListNearToggle = false};

	if (!atListNearToggle) then {
		atListNearToggle = true;
		systemChat 'AT: Enabled Near Player Display';

		[] spawn {
			_ents = [allUnits, [], {_x distance player}, "ASCEND", {_x distance player < 200 && _x != player}] call BIS_fnc_sortBy;
			_count = 0;

			while{atListNearToggle} do {
				_arr = [];

				{
					if (_x distance player < 200) then {
						if (count _arr >= 10) exitWith {
							_arr resize 10;
						};

						if (_x isKindOf "Man") then {
							_arr pushBackUnique format["%1 - %2m", name _x, round(player distance _x)];
						} else {
							if (count crew _x != 0) then {
								{
									_arr pushBackUnique format["%1 - %2m", name _x, round(player distance _x)];
								} foreach crew _x;
							};
						};
					};
				} foreach _ents;

				_str = _arr joinString "<br/>";

				[("<t color='#0055aa' size = '.4'>" + _str + "</t>"),safeZoneX-0.3, safeZoneY+0.05,0.1,0,0,800] spawn BIS_fnc_dynamicText;

				if (_count > 10) then {
					_count = 0;
					_ents = [allUnits, [], {_x distance player}, "ASCEND", {_x distance player < 200 && _x != player}] call BIS_fnc_sortBy;
				};

				_count = _count + 1;
				uiSleep 0.1;
			};
		};

	} else {
		atListNearToggle = false;
		systemChat 'AT: Disabled Near Player Display';
	};
};

atReviveNear = {
	_names = [];
	{
		if ((player distance _x) < 50) then {

				if (!isModLife) then {
					if (!isNil "FAR_HandleTreating") then {
						_x setVariable ["FAR_isUnconscious", 0, true];
					};
				} else {
					_x setVariable ['Revive',false,true];
					[profileName] remoteExec ['life_fnc_revived',_x];
				};

			_names pushBackUnique (name _x);
		};
	} foreach allDeadMen;

	systemChat format['AT: Revived: %1', (_names joinString ', ')];
};

viewKeybinds = {
	'Keybinds' hintC [
		'Shift+5: TP 5 meters forwards',
		'Shift+7: TP 5 meters up',
		'Shift+F1: Lock/unlock cursor target',
		'Shift+F2: Heal self',
		'Shift+F5: Zeus cursor target',
		'Shift+Del: Delete (first confirm, second delete)',
		'Shift+End: Destroy (first confirm, second destroy)'
	];
};

filterSpawnMenu = {
	params['_input'];
	if (_input == '') exitWith {
		[atSpawnType] call fillSpawnMenu;
	};

	_arr = [];
	if (atSpawnType == 'weapon') then {
		_arr = AllWeapons;
	};

	if (atSpawnType == 'vehicle') then {
		_arr = AllVehicles;
	};

	_output = [];
	{
		_text = _x select 0;
		_displayName = _x select 2;
		if ((toLower _text) find (toLower _input) > -1) then {
			_output pushBackUnique _x;
		} else {
			if ((toLower _displayName) find (toLower _input) > -1) then {
				_output pushBackUnique _x;
			};
		}
	} foreach _arr;

	[atSpawnType, _output, true] call fillSpawnMenu;

};

fillSpawnMenu = {
	params['_type', ['_input', []], ['_filter', false]];

	_secondList = uiNamespace getVariable 'secondList';
	lbClear _secondList;

	_arr = [];
	if (count _input == 0 && !_filter) then {

		if (_type == 'weapons' || _type == 'weapon') then {
			_arr = AllWeapons;
			atSpawnType = 'weapon';
		};

		if (_type == 'vehicles' || _type == 'vehicle') then {
			_arr = AllVehicles;
			atSpawnType = 'vehicle';
		};
	} else {
		_arr = _input;
	};

	for '_i' from 0 to (count _arr)-1 do {
		_s = _arr select _i;
		_text = _s select 2;
		_pic = _s select 1;
		_class = _s select 0;

		_secondList lbAdd _text;
		_secondList lbSetPicture[_i, _pic];
		_secondList lbSetData [_i, _class];
	};
};

fillPlayerList = {
	params['_units'];
	_playerList = uiNamespace getVariable 'playerList';
	_targetList = uiNamespace getVariable 'target_display';
	_ats = [getPlayerUID player];
	_normies = [];

	_atObjs = [];
	_playerObjs = [];
	_aiObjs = [];

	ListType = "player";

	{
		if (!isPlayer _x) then {
			if (simulationEnabled _x) then {
				_aiObjs pushBackUnique _x;
			};
		} else {
			_uid = getPlayerUID _x;
			if (_uid in _ats) then {
				if (!(_uid in _normies)) then {
					_atObjs pushBackUnique _x;
				} else {
					_playerObjs pushBackUnique _x;
				};
			} else {
				_playerObjs pushBackUnique _x;
			};
		};
	} foreach _units;

	if (!sortByName) then {
		reverse _playerObjs;
		reverse _atObjs;
	} else {
		_playerObjs sort true;
		_atObjs sort true;
		_aiObjs sort true;
	};

	lbClear _playerList;
	lbClear _targetList;

	_playerList lbAdd '---You---';
	_playerList lbSetColor [(lbSize 10002)-1,[0.6,1,0.4,1]];

	{
		_playerList lbAdd format['%1',name _x];

		_weapon = currentWeapon _x;
		if (_weapon == '') then {
			_weapon = primaryWeapon _x;
			if (_weapon == '') then {
				_weapon = secondaryWeapon _x;
			};
		};

		_playerList lbSetPicture [(lbSize 10002)-1, (getText (configFile >> 'CfgWeapons' >> _weapon >> 'picture'))];

	} foreach _atObjs;

	_playerList lbAdd '';
	_playerList lbAdd '---Players---';
	_playerList lbSetColor [(lbSize 10002)-1,[0.302,0.651,1,1]];

	{

		if (!((vehicle _x) isKindOf 'LandVehicle') && !((vehicle _x) isKindOf 'Ship') && !((vehicle _x) isKindOf 'Air')) then {

			_playerList lbAdd format['%1',name _x];
			_flag = '';
			_weapon = currentWeapon _x;
			if (_weapon == '') then {
				_weapon = primaryWeapon _x;
				if (_weapon == '') then {
					_weapon = secondaryWeapon _x;

					if (_weapon == '') then {
						if (side _x == opfor) then {
							_flag = '\A3\Data_F\Flags\Flag_red_CO.paa';
						};
						if (side _x == blufor) then {
							_flag = '\A3\Data_F\Flags\Flag_blue_CO.paa';
						};
						if (side _x == independent) then {
							_flag = '\A3\Data_F\Flags\Flag_green_CO.paa';
						};
						if (side _x == civilian) then {
							_flag = '\A3\Data_F\Flags\Flag_white_CO.paa';
						};
					};
				};
			};

			if (_weapon == '') then {
				_playerList lbSetPicture [(lbSize 10002)-1, _flag];
			} else {
				_playerList lbSetPicture [(lbSize 10002)-1, (getText (configFile >> 'CfgWeapons' >> _weapon >> 'picture'))];
			};
		};
	} forEach _playerObjs;

	_playerList lbAdd '';
	_playerList lbAdd '---In Vehicle---';
	_playerList lbSetColor [(lbSize 10002)-1,[0.502,0.502,1,1]];
	{

		if(((vehicle _x) isKindOf 'LandVehicle') or ((vehicle _x) isKindOf 'Ship') or ((vehicle _x) isKindOf 'Air')) then {
			{
				_playerList lbAdd format['%1',name _x];
				_playerList lbSetPicture [(lbSize 10002)-1, (getText (configFile >> 'cfgVehicles' >> typeOf (vehicle _x) >> 'picture'))];
			} forEach crew _x;
		};

	} foreach _playerObjs;


	if (atListAis && (count _aiObjs) > 0) then {
		_playerList lbAdd '';
		_playerList lbAdd '---AI---';
		_playerList lbSetColor [(lbSize 10002)-1,[0.502,0.502,1,1]];
		{
			if(((vehicle _x) isKindOf 'LandVehicle') or ((vehicle _x) isKindOf 'Ship') or ((vehicle _x) isKindOf 'Air')) then {
				{
					_playerList lbAdd format['%1',name _x];
					_playerList lbSetPicture [(lbSize 10002)-1, (getText (configFile >> 'cfgVehicles' >> typeOf (vehicle _x) >> 'picture'))];
				} forEach crew _x;
			} else {
				_playerList lbAdd format['%1',name _x];
				_flag = '';
				_weapon = currentWeapon _x;
				if (_weapon == '') then {
					_weapon = primaryWeapon _x;
					if (_weapon == '') then {
						_weapon = secondaryWeapon _x;

						if (_weapon == '') then {
							if (side _x == opfor) then {
								_flag = '\A3\Data_F\Flags\Flag_red_CO.paa';
							};
							if (side _x == blufor) then {
								_flag = '\A3\Data_F\Flags\Flag_blue_CO.paa';
							};
							if (side _x == independent) then {
								_flag = '\A3\Data_F\Flags\Flag_green_CO.paa';
							};
							if (side _x == civilian) then {
								_flag = '\A3\Data_F\Flags\Flag_white_CO.paa';
							};
						};
					};
				};

				if (_weapon == '') then {
					_playerList lbSetPicture [(lbSize 10002)-1, _flag];
				} else {
					_playerList lbSetPicture [(lbSize 10002)-1, (getText (configFile >> 'CfgWeapons' >> _weapon >> 'picture'))];
				};
			};
		} foreach _aiObjs;
	};

	_playerList ctrlRemoveAllEventHandlers 'LBDblClick';
	_playerList ctrlAddEventHandler ['LBDblClick','[lbText [10002,(lbCurSel 10002)]] call handlePlayerSelection;'];
};

copyPlayerLoadout = {
	_selectedPlayer = (lbCurSel 10002);
	if (_selectedPlayer == -1) exitWith {
		systemChat 'AT: Gotta select a player first';
	};
	_playerName = lbText [10002,_selectedPlayer];
	_playerObj = objNull;
	{
		if (name _x == _playerName) then {
			_playerObj = _x;
		};
	} foreach allPlayers;

	if (isNull _playerObj) exitWith {
		systemChat 'AT: Invalid player selected';
	};

	_edit = (findDisplay 999) displayCtrl 10004;
	_name = ctrlText _edit;

	if (_name == '') exitWith {
		systemChat 'AT: Gotta give the loadout a name';
	};

	_loadouts = profileNamespace getVariable['ah_loadouts', []];
	_loadouts = _loadouts + [[_name, getUnitLoadout _playerObj]];
	profileNamespace setVariable ['ah_loadouts', _loadouts];
	saveProfileNamespace;

	systemChat 'AT: Loadout saved!';
};

handleLoadoutSelection = {
	params['_name'];
	if (_name == '') exitWith {};

	_loadouts = profileNamespace getVariable['ah_loadouts', []];
	_loadout = [_name, _loadouts] call getLoadout;
	player setUnitLoadout (_loadout select 1);

	systemChat format['Loading %1', _name];
	player setUnitLoadout (_loadout select 1);

};

esp2_func = {
	_ahgwdugauygwduyawd = (findDisplay 0 displayCtrl 999 getVariable '_auwgduyagwduyagwduawd');
	                if (_ahgwdugauygwduyawd == 0) then {
	                  format["              Box PlayerESP ON"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
	                    findDisplay 0 displayCtrl 999 setVariable['_auwgduyagwduyagwduawd', 1];
	                    _aguywdyuagwdguyagwudawdawd = addMissionEventHandler["Draw3D", {
	                        _ahgwudgauygwdgauywguyd = allPlayers;
	                        for "_i"
	                        from 0 to(count _ahgwudgauygwdgauywguyd) - 1 do {
	                            _selectedunit = _ahgwudgauygwdgauywguyd select _i;
	                            _name = (name _selectedunit);
	                            _poz = (_selectedunit modelToWorld((_selectedunit selectionPosition "pelvis") vectorAdd[0, 0, 0.25]));
	                            _poz1 = (_selectedunit modelToWorld((_selectedunit selectionPosition "head") vectorAdd[0, 0, 0.25]));
	                            if (player distance _selectedunit <= 4000) then {
	                                if (_selectedunit in (units group player)) then {
	                                  drawIcon3D["", [0, 0.27, 0.84, 1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
	                                    drawIcon3D["", [0, 0.27, 0.84, 1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
	                                } else {
	                                  if (side _selectedunit == west) then {
	                                      drawIcon3D["", [0, 0.5, 1, 1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
	                                      drawIcon3D["", [0, 0.5, 1, 1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
	                                  };
	                                  if (side _selectedunit == east) then {
	                                      drawIcon3D["", [1, 0.2, 0.2, 1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
	                                      drawIcon3D["", [1, 0.2, 0.2, 1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
	                                  };
	                                  if (side _selectedunit == resistance) then {
	                                      drawIcon3D["", [0, 0.65, 0, 1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
	                                      drawIcon3D["", [0, 0.65, 0, 1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
	                                  };
	                                  if (side _selectedunit == civilian) then {
	                                      drawIcon3D["", [0.467,0,1,1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
	                                      drawIcon3D["", [0.467,0,1,1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
	                                  };
	                                };
	                            };
	                        };
	                    }];
	                    findDisplay 0 displayCtrl 999 setVariable['_aygwdgtyagwytdftyafywtd', _aguywdyuagwdguyagwudawdawd];
	                } else {
	                    findDisplay 0 displayCtrl 999 setVariable['_auwgduyagwduyagwduawd', 0];
	                    _aguywdyuagwdguyagwudawdawd = (findDisplay 0 displayCtrl 999 getVariable '_aygwdgtyagwytdftyafywtd');
	                    removeMissionEventHandler["Draw3D", _aguywdyuagwdguyagwudawdawd];
	                    format["              Box PlayerESP OFF"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
	                   };

};

aimassist_func = {
	_enabled = (findDisplay 0 displayCtrl 999 getVariable '_agwduygauywgu');
	  if (_enabled == 1) then {
	  findDisplay 0 displayCtrl 999 setVariable['_agwduygauywgu', 0];
	  hint "Aim Assist ON";
	  addMissionEventHandler ["Draw3D", {
	  _target = cursorTarget;
	  if (!isNull _target) then {
	    if ((!isNull (vehicle _target))) then {
	        _target = driver _target;
	    };
	    if ((alive _target) && (_target isKindOf "Man") && (group _target != group player)) then {
	          drawIcon3D ["", [1,0,0,1], position cursorTarget, 0, 0, 0, "Target", 1, 0.04, "PuristaMedium"];
	    };
	  };
	}];
	  player addEventHandler ["Fired", {
	    {
	        player reveal _x;
	    } forEach allUnits;
	    _target = cursorTarget;
	    if (!isNull _target) then {
	      if ((!isNull (vehicle _target))) then {
	          _target = driver _target;
	      };
	      if ((alive _target) && (_target isKindOf "Man") && (group _target != group player)) then {
	        _bullet = _this select 6;
	        _head = _target modelToWorld (_target selectionPosition "neck");
	        _bullet setPos _head;
	      };
	    };
	  }];
	  }else{
	  findDisplay 0 displayCtrl 999 setVariable['_agwduygauywgu', 1];
	  hint "Aim Assist OFF";
	  player removeEventHandler ["Draw3D", 0];
	  player removeEventHandler ["Fired", 0];
	  };
};

getLoadout = {
	params['_name', '_loadouts'];
	_ret = [];

	{
		if ((_x select 0) == _name) then {
			_ret = _x;
		};
	} foreach _loadouts;

	_ret
};

handleVariableSelection = {
	params["_name"];

	_menu = (uiNamespace getVariable 'target_display');

	_value = missionNamespace getVariable [_name, "nil"];

	if (lbCurSel _menu == -1) exitWith {
		if (count(str _value) > 2500) then {
			_arr = toArray (str _value);
			_arr resize 2500;
			_value = toString _arr;
		};
		hint str _value;
	};

	_selected = lbCurSel _menu;
	_option = _menu lbText _selected;

	if (_option == "Display Value (hint)") exitWith {
		if (count(str _value) > 2500) then {
			_arr = toArray (str _value);
			_arr resize 2500;
			_value = toString _arr;
		};
		hint str _value;
	};
	if (_option == "Display Value (edit-box)") exitWith {
		_edit = (findDisplay 999) displayCtrl 10004;
		_edit ctrlSetText str _value;
	};
	if (_option == "Set Value (edit-box)") exitWith {
		_type = typeName _value;

		_edit = (findDisplay 999) displayCtrl 10004;
		_txtVal = ctrlText _edit;
		_newVal = nil;

		if (_type == "ARRAY") then {
			_newVal = parseSimpleArray _txtVal;
		};
		if (_type == "BOOL") then {
			_newVal = _txtVal == "true";
		};
		if (_type == "CODE") then {
			_newVal = compile _txtVal;
		};
		if (_type == "SCALAR") then {
			_newVal = parseNumber _txtVal;
		};
		if (_type == "STRING") then {
			_newVal = _txtVal;
		};
		if (_type == "TEXT") then {
			_newVal = parseText _txtVal;
		};
		if (_type == "NAMESPACE") then {
			if (_txtVal == "missionNamespace") then {
				_newVal = missionNamespace;
			};
			if (_txtVal == "uiNamespace") then {
				_newVal = uiNamespace;
			};
			if (_txtVal == "parsingNamespace") then {
				_newVal = parsingNamespace;
			};
			if (_txtVal == "profileNamespace") then {
				_newVal = profileNamespace;
			};
		};

		if (isNil '_newVal') exitWith {
			systemChat ('AT: Unsupported type: ' + _type);
		};

		missionNamespace setVariable [_name, _newVal];
		systemChat 'AT: Variable set successfully';
	};
};

variableViewer = {
	params[["_filter", ""]];

	_menu = (uiNamespace getVariable 'playerList');
	lbClear _menu;

	_options = (uiNamespace getVariable 'target_display');
	lbClear _options;

	_variables = allVariables missionNamespace;
	{
		_value = missionNamespace getVariable _x;
		if (_filter != "") then {
			if (((toLower _x) find _filter) > -1 || ((toLower (str _value)) find _filter) > -1) then {
				_menu lbAdd _x;
			}
		} else {
			_menu lbAdd _x;
		};
	} foreach _variables;

	ListType = "variable";


	_varOptions = [
		"Display Value (hint)",
		"Display Value (edit-box)",
		"Set Value (edit-box)"
	];

	{
		_options lbAdd _x;
	} foreach _varOptions;

	_options ctrlRemoveAllEventHandlers 'LBDblClick';
	_options ctrlAddEventHandler ['LBDblClick','[lbText [10002,(lbCurSel 10002)]] call handleVariableSelection;'];

	_menu ctrlRemoveAllEventHandlers 'LBDblClick';
	_menu ctrlAddEventHandler ['LBDblClick','[lbText [10002,(lbCurSel 10002)]] call handleVariableSelection;'];
};


fillLoadoutSubMenu = {
	params['_value'];
	if (_value == '') exitWith {};

	if (_value == '-') exitWith {
		disableSerialization;
		_menu = (uiNamespace getVariable 'target_display');
		lbClear _menu;

		_options = [];

		_options pushBack 'Save current loadout';
		_options pushBack 'Load selected loadout';
		_options pushBack 'Override selected loadout';
		_options pushBack 'Duplicate selected loadout';
		_options pushBack 'Delete selected loadout';

		_options pushBack '';
		_options pushBack 'Delete all loadouts';

		{
			_menu lbAdd _x;
		} foreach _options;

		_menu ctrlRemoveAllEventHandlers 'LBDblClick';
		_menu ctrlAddEventHandler ['LBDblClick','[lbText [10011,(lbCurSel 10011)]] call fillLoadoutSubMenu;'];
	};

	_loadouts = profileNamespace getVariable['ah_loadouts', []];

	_selId = lbCurSel 10002;
	_selText = lbText [10002,_selId];

	switch (_value) do {
		case 'Save current loadout' : {
			_edit = (findDisplay 999) displayCtrl 10004;
			_name = ctrlText _edit;

			if (_name == '') exitWith {
				systemChat 'AT: Loadout Name Cannot be empty!';
			};

			_loadout = getUnitLoadout player;
			_loadouts = _loadouts + [[_name, _loadout]];

			systemChat format['AT: Saving %1', _name];

			profileNamespace setVariable ['ah_loadouts', _loadouts];
			saveProfileNamespace;
		};
		case 'Load selected loadout' : {
			if (_selText == '') exitWith {};
			_loadout = [_selText, _loadouts] call getLoadout;
			player setUnitLoadout (_loadout select 1);

		};
		case 'Override selected loadout' : {
			if (_selText == '') exitWith {};

			{
				_name = _x select 0;
				if (_name == _selText) exitWith {
					_arr = [_name, getUnitLoadout player];
					_loadouts set[_forEachIndex, _arr];
					profileNamespace setVariable ['ah_loadouts', _loadouts];
					saveProfileNamespace;
				};
			} foreach _loadouts;
		};
		case 'Duplicate selected loadout' : {
			if (_selText == '') exitWith {};

			_edit = (findDisplay 999) displayCtrl 10004;
			_name = ctrlText _edit;

			if (_name == '') exitWith {
				systemChat 'AT: Loadout Name Cannot be empty!';
			};

			_loadout = [_selText, _loadouts] call getLoadout;
			_loadouts = _loadouts + [[_name, getUnitLoadout player]];
			profileNamespace setVariable ['ah_loadouts', _loadouts];
			saveProfileNamespace;
		};
		case 'Delete selected loadout' : {
			if (_selText == '') exitWith {};

			{
				_name = _x select 0;
				if (_name == _selText) exitWith {
					systemChat format['AT: Deleted %1', _name];

					_loadouts deleteAt _forEachIndex;
					profileNamespace setVariable ['ah_loadouts', _loadouts];
					saveProfileNamespace;
				};
			} foreach _loadouts;
		};
		case 'Delete all loadouts' : {
			systemChat 'AT: Clearning loadouts';
			profileNamespace setVariable ['ah_loadouts', []];
			saveProfileNamespace;
		};

		default {};
	};
	call fillLoadouts;

};

fillLoadouts = {
	disableSerialization;

	_list = uiNamespace getVariable 'playerList';
	lbClear _list;

	_loadouts = profileNamespace getVariable['ah_loadouts', []];

	{
		_name = _x select 0;
		_list lbAdd _name;
	} foreach _loadouts;

	['-'] call fillLoadoutSubMenu;

	_list ctrlRemoveAllEventHandlers 'LBDblClick';
	_list ctrlAddEventHandler ['LBDblClick','[lbText [10002,(lbCurSel 10002)]] call handleLoadoutSelection;'];
};

filterList = {
	params['_filter'];

	_filter = toLower _filter;

	if (ListType == "variable") then {
		[_filter] call variableViewer;
	} else {

		_players = allPlayers;
		_output = [];

		{
			if (((toLower (name _x)) find _filter > -1) || ((getPlayerUID _x) find _filter > -1)  || (_filter == '')) then {
				_output pushBack _x;
			};
		} foreach _players;

		[_output] call fillPlayerList;
	};
};


handleatSpawn = {
	params['_index'];
	_list = uiNamespace getVariable 'secondList';
	_item = _list lbData _index;

	if (atSpawnType == 'weapon') exitWith {

		systemChat format['AT: Spawning %1', _item];
		player addWeapon _item;

		_mags = getArray(configFile >> 'CfgWeapons' >> _item >> 'magazines');
		_mag = _mags select 0;

		player addMagazine _mag;
		player addMagazine _mag;
	};

	if (atSpawnType == 'vehicle') exitWith {

		[_item] spawn {
			params['_type'];
			atSpawnType = _type;

			atSpawnTmp = _type createVehicleLocal (position player);

			_bbr = boundingBoxReal atSpawnTmp;
			_p1 = _bbr select 0;
			_p2 = _bbr select 1;
			_maxLength = abs ((_p2 select 1) - (_p1 select 1));
			_maxHeight = abs ((_p2 select 2) - (_p1 select 2));

			atSpawnTmp attachTo [player, [0, _maxLength, _maxHeight / 2]];

			vehicleSpawnEH = (findDisplay 46) displayAddEventHandler['KeyUp', {
				if (_this select 1 == 0x39) then {
					_pos = getPos atSpawnTmp;

					_class = atSpawnType;
					_pos set[2, 500];
					_dir = getDir atSpawnTmp;
					_v = createVehicle[_class, _pos, [], 0, 'CAN_COLLIDE'];

					deleteVehicle atSpawnTmp;

					_pos set[2, 1];
					_v setPosATL _pos;
					_v setDir _dir;


					(findDisplay 46) displayRemoveEventHandler['KeyUp', vehicleSpawnEH];

					systemChat format['AT: Spawning %1', atSpawnType];
				} else {
					if (_this select 1 == 0x3B) then {
						deleteVehicle atSpawnTmp;
						(findDisplay 46) displayRemoveEventHandler['KeyUp', vehicleSpawnEH];
					};
				};
			}];
		};
	};
	systemChat 'AT: Spawn error, spawn type not defined';
};


handleatFuncs = {
	params['_selected'];

	if !(_selected in toggleFuncs) then {
		toggleFuncs = toggleFuncs + [_selected];
	} else {
		toggleFuncs = toggleFuncs - [_selected];
	};

	switch (_selected) do {
		case '---Spawn Weapons---': {['weapons'] call fillSpawnMenu;};
		case '---Spawn Vehicles---': {['vehicles'] call fillSpawnMenu;};
		case '---View Loadouts---': {call fillLoadouts;};
		case '---Variable Viewer---': {[''] call variableViewer;};
		case '---View Players---': {[allUnits] call fillPlayerList;};
		case 'God Mode': {call showatMenu; call atGod;};
		case 'Vehicle God Mode': {call showatMenu; call atVGod;};
		case 'Auto Revive': {call showatMenu; call atAutoRevive;};
		case 'Aim Assist': {[] spawn aimassist_func;};
		case 'ESP 2': {[] spawn esp2_func;};
		case 'ESP': {call showatMenu; call atESP;};
		case 'AI ESP': {call showatMenu; call atAiESP;};
		case 'Map Markers': {call showatMenu; call atMarkers;};
		case 'Dead Markers': {call showatMenu; call atDeadMarkers;};
		case 'Unlmited Ammo': {call showatMenu; call atInfAmmo;};
		case 'Rapid Fire': {call showatMenu; call atRapidFire;};
		case 'No Recoil': {call showatMenu; call atRecoil;};
		case 'No Sway': {call showatMenu; call atSway;};
		case 'No Fatigue': {call showatMenu; call atFatigue;};
		case 'Snorting Speed': {call showatMenu; call atSpeed;};
		case 'Fly mode': {call showatMenu; call atFly;};
		case 'Vehicle Boost': {call showatMenu; call atBoost;};
		case 'Map Teleport': {call showatMenu; call atTP};
		case 'No Grass': {call showatMenu; call atNoGrass;};
		case 'Display near Players': {call atListNear; call showatMenu;};
		case 'Sort Player by Name': {sortByName = !sortByName; call showatMenu;};
		case 'List AIs': {atListAis = !atListAis; call showatMenu;};
		case 'Copy Players Loadout': {call copyPlayerLoadout};
		case 'Free Cam': {closeDialog 0; [] call bis_fnc_camera;};
		case 'Virtual Arsenal': { closeDialog 0; [] spawn atArsenal;};
		case 'Revive Near Players': { call atReviveNear; };
		case 'Give Ammo': { [] call atGiveAmmo; };
		case 'Rainbow Vehicle': { [] call atRainbow; };
		case 'View Keybinds': { [] call viewKeybinds; };
		comment 'life';
		case 'ATM Menu': { closeDialog 0; [] call life_fnc_atmMenu; };
		case 'Vehicle Key (Cursor Target)': { life_vehicles pushBackUnique cursorTarget; systemChat 'AT: Got the key'; };
		case 'Get All Licenses': { {missionNamespace setVariable[_x select 0, true];} foreach life_licenses; systemChat 'AT: Received licenses'; };
	};
};

handlePlayerActions = {
	params['_value'];

	if (isNil 'currentTarget') then {
		systemChat 'Target is not set';
	};

	if (isNull currentTarget) then {
		systemChat 'Target is not set';
	};

	_len = (count (name currentTarget)) + 1;
	_option = [_value, _len] call trimString;

	switch (_value) do {
		case 'Teleport target to me' : {
			currentTarget setPos (getPos (vehicle player));
			systemChat format['Teleported %1 to me', name currentTarget];
		};
		case 'Move into target vehicle' : {
			player action['GetInCargo', vehicle currentTarget];
			systemChat format['Got in %1 vehicle', name currentTarget];
		};
		case 'Move target into your vehicle' : {
			currentTarget action['GetInCargo', vehicle player];
			systemChat format['%1 got in your vehicle', name currentTarget];
		};
		case 'Lock/Unlock target vehicle' : {
			_veh = vehicle currentTarget;
			if (_veh == currentTarget) exitWith {
				systemChat format['%1 is not in a vehicle', name currentTarget];
			};

			if (locked _veh == 2) exitWith {
				_veh setVehicleLock "UNLOCKED";
				systemChat format["%1's vehicle was unlocked", name currentTarget];
			};
			if (locked _veh == 0 || locked _veh == 1) exitWith {
				_veh setVehicleLock "LOCKED";
				systemChat format["%1's vehicle was locked", name currentTarget];
			};

			systemChat format['Unknown lock state: %1', locked _veh];
		};
		default {};
	};

	switch (_option) do {
		case 'Kill' : {
			currentTarget setDamage 1;
			systemChat format['Killed %1', name currentTarget];
		};

		case 'Restrain' : {
			currentTarget setVariable['restrained',true,true];
			[currentTarget]remoteExec['life_fnc_restrain',currentTarget];

			systemChat format['Restrained %1', name currentTarget];
		};
		case 'Jail' : {

			currentTarget setPos (getMarkerPos 'jail_marker');
			[currentTarget] remoteExecCall ['life_fnc_jailSys',2];

			systemChat format['Jailed %1', name currentTarget];
		};
		case 'Zeus' : {

			[] spawn {
				_explosion = 'LightningBolt' createVehicle (getPos currentTarget);
				_explosion setDamage 1;
				_class = selectRandom ['lightning1_F','lightning2_F'];
				_lightning = _class createVehicle (getPos currentTarget);
				uiSleep 0.15;
				deleteVehicle _lightning;
			};

			systemChat format['Zeused %1', name currentTarget];
		};
		case 'Eject' : {
			currentTarget action['Eject', vehicle currentTarget];
			systemChat format['Ejected %1', name currentTarget];
		};
		case 'Heal' : {
			[currentTarget] call atHeal;
		};
		case 'Clone Loadout from Target' : {
			player setUnitLoadout [getUnitLoadout currentTarget];
			systemChat format["AT: Cloned from Target %1",name currentTarget];
		};
		case 'Clone Loadout to Target' : {
			currentTarget setUnitLoadout [getUnitLoadout player];
			systemChat format["AT: Cloned to Target %1",name currentTarget];
		};
		case 'Revive' : {
			if (getPlayerUID currentTarget == '') exitWith {
				systemChat 'Unable to revived, player already left';
			};

			if (!isModLife) then {
				if (!isNil "FAR_HandleTreating") then {
					currentTarget setVariable ["FAR_isUnconscious", 0, true];
				};
			} else {
				currentTarget setVariable ['Revive',false,true];
				[profileName] remoteExec ['life_fnc_revived',currentTarget];
			};

			systemChat format['Revived %1', name currentTarget];
		};
		case 'Teleport to' : {
			vehicle player setPos (position currentTarget);
			systemChat format['Teleported to %1', (name currentTarget)];
		};
		case 'Spectate' : {
			currentTarget switchCamera 'EXTERNAL';
			_msg = format['Spectating %1 - Press F1 to cancel', name currentTarget];
			systemChat _msg;
			hint _msg;

			(findDisplay 46) displayAddEventHandler['KeyDown','if (_this select 1 == 0x3B) then { vehicle player switchCamera ''EXTERNAL'' };'];
		};

		case 'Unrestrain' : {
			currentTarget setVariable['restrained',false,true];
			systemChat format['Unrestrained %1', name currentTarget];
		};
		case 'Free' : {
			if(currentTarget distance (getMarkerPos 'jail_marker') <= 60)then{
					currentTarget setPos[3768.75,13113.6,0.0014801]
			};
			systemChat format['Freed %1', name currentTarget];
		};

		default {};
	};
};

handlePlayerSelection = {
	params['_name'];

	_target = objNull;
	{
		if (name _x == _name) then {
			_target = _x;
		};
	} foreach allUnits;

	if (isNull _target) exitWith {
		systemChat 'Target not found!';
	};

	currentTarget = _target;

	_options = [];

	_options = [_options, ['Kill %1', 'red'], true] call addToatList;
	_options = [_options, ['Restrain %1', 'red'], true] call addToatList;
	if (isModLife) then {
		_options = [_options, ['Jail %1', 'red'], true] call addToatList;
	};
	_options = [_options, ['Zeus %1', 'red'], true] call addToatList;
	_options = [_options, ['Eject %1', 'red'], false] call addToatList;

	_options = [_options, ['', 'spacer'], false] call addToatList;

	_options = [_options, ['Heal %1', 'green'], true] call addToatList;
	_options = [_options, ['Revive %1', 'green'], true] call addToatList;
	_options = [_options, ['Teleport to %1', 'green'], true] call addToatList;
	_options = [_options, ['Teleport target to me', 'green'], false] call addToatList;
	_options = [_options, ['Spectate %1', 'green'], true] call addToatList;

	_options = [_options, ['Clone Loadout from Target %1', 'green'], true] call addToatList;
	_options = [_options, ['Clone Loadout to Target %1', 'green'], true] call addToatList;

	if (isModLife) then {
		_options = [_options, ['Unrestrain %1', 'green'], true] call addToatList;
		_options = [_options, ['Free %1', 'green'], true] call addToatList;
	};
	_options = [_options, ['Lock/Unlock target vehicle', 'green'], false] call addToatList;
	_options = [_options, ['Move into target vehicle', 'green'], false] call addToatList;
	_options = [_options, ['Move target into your vehicle', 'green'], false] call addToatList;

	_options = [_options, ['', 'spacer'], false] call addToatList;

	_tmp = _options;
	_options = [];
	{
		_txt = _x select 0;
		_color = _x select 1;

		_options = _options + [[format[_txt, (name _target)], _color]];
	} foreach _tmp;

	_options = _options + [[format['Name: %1', name _target], 'spacer']];
	_options = _options + [[format['UID: %1', getPlayerUID _target], 'spacer']];
	_options = _options + [[format['Position: %1', mapGridPosition _target], 'spacer']];
	_options = _options + [[format['Health: %1', round (100 - ((damage _target) * 100))], 'spacer']];


	_menu = (uiNamespace getVariable 'target_display');
	lbClear _menu;

	for '_i' from 0 to (count _options)-1 do {
		_curArry = _options select _i;
		_txt = _curArry select 0;
		_color = _curArry select 1;
		_action = _curArry select 2;


		_menu lbAdd _txt;
		if (_color == 'green') then {
			_menu lbSetColor [_i,[0,0.7,0.8,1]];
		};
		if (_color == 'red') then {
			_menu lbSetColor [_i,[0.8,0.4,0.4,1]];
		};
		if (_color == 'spacer') then {
			_menu lbSetColor [_i,[0.8,0.9,0.8,1]];
		};

	};

	_menu ctrlRemoveAllEventHandlers 'LBDblClick';
	_menu ctrlAddEventHandler ['LBDblClick','[lbText [10011,(lbCurSel 10011)]]  call handlePlayerActions;'];
};

formatTopBar = {
	_topText = format['<t size=''1'' align=''left''>ARMA.TEAM - Online players: %1 - Uptime: %2</t>', str (count allPlayers), call AH_TimeStr];
	_bar = uiNamespace getVariable 'topBar';
	_bar ctrlSetStructuredText parseText _topText;
};

createBg = {
	_bg = _display ctrlCreate ['RscText', -1];
	_bg ctrlSetPosition _this;
	_bg ctrlSetBackgroundColor [0,0,0,0.4];
	_bg ctrlCommit 0;
};


showatMenu = {
	_atMenu = [];
	if (isNil 'toggleFuncs') then {toggleFuncs = [];};

	disableSerialization;
	_display = (findDisplay 999);

	if (!dialog) then {

		createDialog 'RscCredits';
		_display = (findDisplay 999);

		{
			_x ctrlShow false;
		} forEach (allControls (findDisplay 999));

		[-0.6875,-0.32,0.75,1.32] call createBg;

		_mainList = _display ctrlCreate ['RscListbox', 10001];
		_mainList ctrlSetPosition [-0.6875,-0.32,0.75,1.32];
		_mainList ctrlSetForegroundColor [0,0,0,0.7];
		_mainList ctrlCommit 0;
		uiNamespace setVariable ['mainList',_mainList];

		[0.0875,-0.32,0.45,1.58] call createBg;
		_playerList = _display ctrlCreate ['RscListbox', 10002];
		_playerList ctrlSetPosition [0.0875,-0.32,0.45,1.58];
		_playerList ctrlSetBackgroundColor [0,0,0,0.7];
		_playerList ctrlSetForegroundColor [0,0,0,0.7];
		_playerList ctrlCommit 0;
		uiNamespace setVariable ['playerList',_playerList];

		[1.1625,-0.32,0.5375,1.58] call createBg;
		_secondList = _display ctrlCreate ['RscListbox', 10003];
		_secondList ctrlSetPosition [1.1625,-0.32,0.5375,1.58];
		_secondList ctrlSetBackgroundColor [0,0,0,0.7];
		_secondList ctrlSetForegroundColor [0,0,0,0.7];
		_secondList ctrlCommit 0;
		uiNamespace setVariable ['secondList',_secondList];

		_editCtrl = _display ctrlCreate ['RscEdit', 10004];
		_editCtrl ctrlSetPosition [-0.6875,1.008,0.75,0.232];
		_editCtrl ctrlSetBackgroundColor [0,0,0,0.6];
		_editCtrl ctrlCommit 0;

		_btnBg = _display ctrlCreate ['RscButtonMenu', 10005];
		_btnBg ctrlSetPosition [-0.6875,1.26,0.75,0.06];
		_btnBg ctrlCommit 0;
		_btnBg ctrlEnable false;



		_execBtn = _display ctrlCreate ['RscButtonMenuOk', 10006];
		_execBtn ctrlSetPosition [-0.6725,1.268,0.1175,0.04];
		_execBtn ctrlSetBackgroundColor [0.5,0.5,0.5,0.5];
		_execBtn ctrlSetText 'Execute';
		_execBtn ctrlCommit 0;
		_execBtn buttonSetAction '
			disableSerialization;
			_edit = (findDisplay 999) displayCtrl 10004;
			_c = ctrlText _edit;
			call compile _c;
		';



		_abortBtn = _display ctrlCreate ['RscButtonMenuOk', 10008];
		_abortBtn ctrlSetPosition [-0.3740,1.268,0.1355,0.04];
		_abortBtn ctrlSetBackgroundColor [0.5,0.5,0.5,0.5];
		_abortBtn ctrlSetText 'Abort';
		_abortBtn ctrlCommit 0;
		_abortBtn buttonSetAction 'endmission ''loser''';

		_filterEdit = _display ctrlCreate ['RscEdit', 10009];
		_filterEdit ctrlSetPosition [0.0875,1.28,0.45,0.04];
		_filterEdit ctrlSetBackgroundColor [0,0,0,0.6];
		_filterEdit ctrlCommit 0;
		_filterEdit ctrlRemoveAllEventHandlers 'keyUp';
		_filterEdit ctrlAddEventHandler['keyUp', '[ctrlText 10009] call filterList;'];

		_filterItem = _display ctrlCreate ['RscEdit', 10013];
		_filterItem ctrlSetPosition [1.1625,1.28,0.5375,0.04];
		_filterItem ctrlSetBackgroundColor [0,0,0,0.6];
		_filterItem ctrlCommit 0;
		_filterItem ctrlRemoveAllEventHandlers 'keyUp';
		_filterItem ctrlAddEventHandler['keyUp', '[ctrlText 10013] call filterSpawnMenu;'];


		_mapCtrl = _display ctrlCreate ['RscMapControl', 10010];
		_mapCtrl ctrlSetPosition [0.55,0.56,0.6,0.76];
		_mapCtrl ctrlCommit 0;

		ctrlMapAnimClear _mapCtrl;
		_mapCtrl ctrlMapAnimAdd [0, 0.05, getPos player];
		ctrlMapAnimCommit _mapCtrl;


		[0.55,-0.32,0.6,0.86] call createBg;
		uiNamespace setVariable['target_display',_display ctrlCreate ['RscListBox', 10011]];
		(uiNamespace getVariable 'target_display') ctrlSetPosition [0.55,-0.32,0.6,0.86];
		(uiNamespace getVariable 'target_display') ctrlSetBackgroundColor [0,0,0,0.6];
		(uiNamespace getVariable 'target_display') ctrlCommit 0;


		_topBar = _display ctrlCreate ['RscStructuredText', 10012];
		_topBar ctrlSetPosition [-0.6875,-0.388,2.3875,0.06];
		_topBar ctrlSetBackgroundColor [0,0,0,0.7];
		_topBar ctrlSetTextColor [1,1,1,0.7];
		_topBar ctrlCommit 0;
		uiNamespace setVariable ['topBar',_topBar];

		[] call formatTopBar;
	};


	_mainList = uiNamespace getVariable 'mainList';
	_playerList = uiNamespace getVariable 'playerList';

	lbClear _mainList;

	[allUnits] call fillPlayerList;

	_atMenu = [_atMenu, ['---Spawn Weapons---','blue']] call addToatList;
	_atMenu = [_atMenu, ['---Spawn Vehicles---','blue']] call addToatList;
	_atMenu = [_atMenu, ['---View Loadouts---','blue']] call addToatList;
	_atMenu = [_atMenu, ['---Variable Viewer---','blue']] call addToatList;
	_atMenu = [_atMenu, ['---View Players---','blue']] call addToatList;
	_atMenu = [_atMenu, ['---------------','spacer']] call addToatList;
	_atMenu = [_atMenu, ['God Mode','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Vehicle God Mode','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Auto Revive','toggle']] call addToatList;
	_atMenu = [_atMenu, ['ESP','toggle']] call addToatList;

	_atMenu = [_atMenu, ['ESP 2', 'toggle']] call addToatList;
	_atMenu = [_atMenu, ['Aim Assist', 'toggle']] call addToatList;

	_atMenu = [_atMenu, ['AI ESP','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Map Markers','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Dead Markers','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Unlimited Ammo','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Rapid Fire','toggle']] call addToatList;
	_atMenu = [_atMenu, ['No Recoil','toggle']] call addToatList;
	_atMenu = [_atMenu, ['No Sway','toggle']] call addToatList;
	_atMenu = [_atMenu, ['No Fatigue','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Snorting Speed','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Fly mode','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Map Teleport','toggle']] call addToatList;
	_atMenu = [_atMenu, ['No Grass','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Vehicle Boost','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Display near Players','toggle']] call addToatList;
	_atMenu = [_atMenu, ['Sort Player by Name','toggle']] call addToatList;
	_atMenu = [_atMenu, ['List AIs','toggle']] call addToatList;
	_atMenu = [_atMenu, ['---------------','spacer']] call addToatList;
	_atMenu = [_atMenu, ['Copy Players Loadout','blue']] call addToatList;
	_atMenu = [_atMenu, ['Free Cam','blue']] call addToatList;
	_atMenu = [_atMenu, ['Virtual Arsenal','blue']] call addToatList;
	_atMenu = [_atMenu, ['Revive Near Players','blue']] call addToatList;
	_atMenu = [_atMenu, ['Give Ammo', 'blue']] call addToatList;
	_atMenu = [_atMenu, ['Rainbow Vehicle', 'blue']] call addToatList;

	if (isModLife) then {
		_atMenu = [_atMenu, ['---Altis Lyfe---','spacer']] call addToatList;
		if (!isNil "life_fnc_atmMenu") then {
			_atMenu = [_atMenu, ['ATM Menu', 'blue']] call addToatList;
		};
		if (!isNil "life_vehicles") then {
			_atMenu = [_atMenu, ['Vehicle Key (Cursor Target)', 'blue']] call addToatList;
		};
		if (!isNil "life_licenses") then {
			_atMenu = [_atMenu, ['Get All Licenses', 'blue']] call addToatList;
		};
	};
	_atMenu = [_atMenu, ['---------------','spacer']] call addToatList;
	_atMenu = [_atMenu, ['View Keybinds', 'blue']] call addToatList;

	for '_i' from 0 to (count _atMenu)-1 do {
		_curArry = _atMenu select _i;
		_txt = _curArry select 0;
		_color = _curArry select 1;
		_action = _curArry select 2;

		_mainList lbAdd _txt;
		if (_color == 'blue') then {
			_mainList lbSetColor [_i,[0,0.7,0.8,1]];
		};
		if (_color == 'red') then {
			_mainList lbSetColor [_i,[0.8,0.4,0.4,1]];
		};
		if (_color == 'spacer') then {
			_mainList lbSetColor [_i,[0.8,0.9,0.8,1]];
		};
		if (_color == 'toggle') then {
			if !(_txt in toggleFuncs) then {
				_mainList lbSetColor [_i, [0.9, 0.4, 0.4, 1]];
			} else {
				_mainList lbSetColor [_i, [0.4, 0.8, 0.4, 1]];
			};
		};
		if (_color == 'toggle1') then {
			if !(_txt in toggleFuncs) then {
				_mainList lbSetColor [_i, [0.4, 0.8, 0.4, 1]];
			} else {
				_mainList lbSetColor [_i, [0.9, 0.4, 0.4, 1]];
			};
		};
	};

	['weapons'] call fillSpawnMenu;



	_mainList ctrlRemoveAllEventHandlers 'LBDblClick';
	_mainList ctrlAddEventHandler ['LBDblClick','_func = lbText [10001,(lbCurSel 10001)]; [_func] call handleatFuncs;'];

	_secondList = uiNamespace getVariable 'secondList';
	_secondList ctrlRemoveAllEventHandlers 'LBDblClick';
	_secondList ctrlAddEventHandler ['LBDblClick','[(lbCurSel 10003)] call handleatSpawn;'];

};

trimString = {
	params['_input', ['_len', 3]];

	_arr = toArray _input;
	if (count _arr > _len) then {
		_arr resize ((count _arr) - _len);
		_output = toString _arr;
		_output
	} else {
		_input
	};
};


addToatList = {
	params['_list', '_option', ['_trim', false]];

	_txt = _option select 0;

	if (_trim) then {
		_txt = [_txt] call trimString;
	};

	_list = _list + [_option];


	_ret = _list;
	_ret
};
firstRun = false;
systemChat 'Arma.Team: Loading completed. Press Insert to open at Menu!';
