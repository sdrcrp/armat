[] spawn {sleep 1; hint "(For Security) Loading."};
		[] spawn {sleep 2; hint "(For Security) Loading.."};
		[] spawn {sleep 3; hint "(For Security) Loading..."};
		[] spawn {sleep 4; hint "Done"};
		[] spawn {sleep 4;
		removeallactions player;
		[] spawn {
		["TaskSucceeded", ["", "GX's Menu Loaded"]] call BIS_fnc_showNotification;
		sleep 0.1;
		call
		DankiLoad;
		};
		DankiLoad = {
			dfsdifsdfmsdfmdso = player;
			removeallactions player;
			sleep 0.1;
			dfsdifsdfmsdfmdso addAction ["<t color=""#ff0000"">Op" + "e" + "n Gx" + "'s Me" + "nu</t>", Danki0];
		};

		Danki0 = {
			removeAllActions player;
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn1 = dfsdifsdfmsdfmdso addAction ["<t size""2.2"" color=""#ff0000"">==G" + "X V2.0==",{[]spawn Danki7;["TaskSucceeded", ["", "Th" + "i" + "s " + "I" + "s" + " M" + "y" + " Fi" + "r" + "st M" + "e" + "nu"]] call bis_fnc_showNotification;}];
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn2 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>-->S" + "elf",{[]spawn Danki1;}];
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn3 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>-->Li" + "fe",{[]spawn Danki6;}];
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn32423423 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>-->Tr" + "oll",{[]spawn Danki4;}];
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn3242342332423423 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>-->Lo" + "a" + "douts",{[]spawn Danki5;}];
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn3242342332423423 = dfsdifsdfmsdfmdso addAction ["<t color=""#ff0000"">Clo" + "se Me" + "nu</t>", DankiLoad];
		};
		Danki1 =  {
			removeAllActions player;
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn5 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Pla" + "yer E" + "SP",{
		onEachFrame
		{
			{
				_distance = round (_x distance player);
				if (_distance < 801 && _x != player) then
				{
					_color = [0,0,255,1];
					switch ((side _x)) do
					{
						_weerwtertrgcfvsdfgdfgd = case WEST: {_color = [0,0.7,1,1]};
						_asgadsasdgdsgdfsdsfgdsfg = case EAST: {_color = [1,0,0,1]};
						_ghfgfhfhgfghdgd = case INDEPENDENT: {_color = [0,1,0,1]};
						_bsdafsdfsadfsdsdfgdsff = case CIVILIAN: {_color = [1,0,1,1]};
					};

					_uStance = stance _x;
					_stance = 0;
					switch (_uStance) do
				{
						case "STAND": {_stance = 1.84};
						case "CROUCH": {_stance = 1.18};
						case "PRONE": {_stance = 0.5};
				};
					_distance = round (_x distance player);
					_posID = _x modelToWorldVisual [255,255,255];
					_posBase = getPosATL _x;
					_posTL1 = [(_posBase select 0) - 0.35, _posBase select 1, (_posBase select 2) + _stance];
					_posBL1 = [(_posBase select 0) - 0.35, _posBase select 1, _posBase select 2];
					_posTR1 = [(_posBase select 0) + 0.35, _posBase select 1, (_posBase select 2) + _stance];
					_posBR1 = [(_posBase select 0) + 0.35, _posBase select 1, _posBase select 2];
					_posTL2 = [_posBase select 0, (_posBase select 1) - 0.35, (_posBase select 2) + _stance];
					_posBL2 = [_posBase select 0, (_posBase select 1) - 0.35, _posBase select 2];
					_posTR2 = [_posBase select 0, (_posBase select 1) + 0.35, (_posBase select 2) + _stance];
					_posBR2 = [_posBase select 0, (_posBase select 1) + 0.35, _posBase select 2];

					_bonksdnbsajdbsdfbsd = drawLine3D [_posTL1, _posTR1, _color];
					_bigbndodbsadhudsfdsufbsuidbf = drawLine3D [_posTL1, _posBL1, _color];
					_doinksuadbnasudbsda = drawLine3D [_posTR1, _posBR1, _color];
					_nisdgsfsdger = drawLine3D [_posBL1, _posBR1, _color];

					_zewjewbfjisdxfbsdhj = drawLine3D [_posTL2, _posTR2, _color];
					_eadsfgsdgsdfgdf = drawLine3D [_posTL2, _posBL2, _color];
					_fagasdfgdsfgdsfgdsgsd = drawLine3D [_posTR2, _posBR2, _color];
					_gadfggadfadgfgadfsdfggsdafadgfasgdfgdsarf = drawLine3D [_posBL2, _posBR2, _color];


				};
			} forEach allUnits;
		};
		["Open",true ] spawn
		{
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
							_pos = (_object modelToWorld ((_object selectionPosition ""feet"") vectorAdd [0,0,0.10]));
							";
					_a = _a + "
							_color = [1,0,1,1];
							if(side _object == blufor) then {
								_color = [0,0.7,1,1];
							};
							if(side _object == opfor) then {
								_color = [1,0,0,1];
							};
							if(side _object == independent) then {
								_color = [0,1,0,1];
							};

							_scale = (0.03 - (0.03 *((player distance _object)/2500)));
							if(_scale > 0) then {
								draw";
					_a = _a + "Icon3D ["""", _color, _pos, 0, 0, 0, _name + "" - "" + str(round(player distance _object)) + ""m"", 2, _scale, ""PuristaLight"",""center"",true];
							};
						} forEach _ordered;

					}];";

					_b = compile _a;
					_eh = call _b;
		};
			["TaskSucceeded", ["", "E" + "S" + "P O" + "n"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn7 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Ai" + "m Ass" + "ist",{
		  waitUntil {!isNull player};
		 player addEventHandler ["Fired", {
		   {
			player reveal _x;
		   } forEach allPlayers;
		   _target = cursorTarget;
		   if (!isNull _target) then {
		  if ((!isNull (vehicle _target))) then {
		   _target = driver _target;
		  };
		  if ((alive _target) && (_target isKindOf "Man") && (group _target != group player)) then {
			_bullet = _this select 6;
			_body = _target modelToWorld (_target selectionPosition "body");
			_bullet setPos _head;
		  };
		   };
		 }];
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
		 }]
			;["TaskSucceeded", ["", "S" + "i" + "le" + "nt A" + "i" + "m O" + "n"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn9 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>Ki" + "ll Se" + "lf",{
			player setdamage 1;
			["TaskSucceeded", ["", "Si" + "le" + "nt A" + "im O" + "n"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn10 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Rep" + "air Ve" + "hicle",{
			vehicle player setDamage 0;
			["TaskSucceeded", ["", "Ve" + "hic" + "le Re" + "p" + "ai" + "red"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn11 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>H" + "ea" + "l Ne" + "ar",{
					if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

			hint format ["Healed NEAR"];
			cutText [format["Healed NEAR"], "PLAIN DOWN"];

			player setDamage 0;
			r_player_blood = 12000;
			r_player_handler = false;
			r_player_handler1 = false;
			r_player_dead = false;
			r_player_unconscious = false;
			r_player_infected = false;
			r_player_inpain = false;
			r_player_injured = false;
			r_player_loaded = false;
			r_player_cardiac = false;
			r_fracture_legs = false;
			r_fracture_arms = false;
			r_player_lowblood = false;
			r_player_timeout = 0;
			r_handlerCount = 0;
			dayz_hunger = 0;
			dayz_thirst = 0;
			dayz_temperatur = 42;

			_unit = player;
			_unit setVariable["USEC_lowBlood",false,true];
			_unit setVariable["USEC_infected",false,true];
			usecTransfuse = [_unit];
			publicVariable "usecTransfuse";
			usecBandage = [_unit];
			publicVariable "usecBandage";
			{_unit setVariable[_x,false,true];} forEach USEC_woundHit;
			_unit setVariable ["USEC_injured",false,true];
			_unit setVariable ["NORRN_unconscious", false, true];
			_unit setVariable ["USEC_isCardiac",false,true];
			_unit setVariable["medForceUpdate",true,true];
			usecMorphine = [_unit];
			publicVariable "usecMorphine";
			r_player_inpain = false;
			"dynamicBlur" ppEffectAdjust [0]; "dynamicBlur" ppEffectCommit 5;
			usecPainK = [_unit,player];
			publicVariable "usecPainK";
			_unit setVariable["medForceUpdate",true];

			dayz_sourceBleeding =	objNull;
			0 fadeSound 1;


			{
				if (getPlayerUID _x != "") then
				{
					_unit = _x;
					_unit setVariable["USEC_lowBlood",false,true];
					_unit setVariable["USEC_infected",false,true];
					usecTransfuse = [_unit];
					publicVariable "usecTransfuse";

					usecBandage = [_unit];
					publicVariable "usecBandage";
					{_unit setVariable[_x,false,true];} forEach USEC_woundHit;
					_unit setVariable ["USEC_injured",false,true];

					_unit setVariable ["NORRN_unconscious", false, true];
					_unit setVariable ["USEC_isCardiac",false,true];
					_unit setVariable["medForceUpdate",true,true];

					usecMorphine = [_unit];
					publicVariable "usecMorphine";

					r_player_inpain = false;
					"dynamicBlur" ppEffectAdjust [0]; "dynamicBlur" ppEffectCommit 5;

					usecPainK = [_unit,player];
					publicVariable "usecPainK";
					_unit setVariable["medForceUpdate",true];

				sleep 0.5;
				};
			} forEach ((position vehicle player) nearEntities [["Man"], 10]);

			}else{


			player setvehicleammo 1;
			player setdammage 0;
			player setVectorUp [0,0,1];

			{
			_x setvehicleammo 1;
			_x setdammage 0;

			_x setVectorUp [0,0,1];

			cutText [format["%1 Healed", name _x], "PLAIN DOWN"];
			sleep 0.5;
			} forEach ((getPosATL player) nearEntities [["Man"],10]);

			};
			["TaskSucceeded", ["", "He" + "a" + "led Ne" + "ar" + "by P" + "lay" + "er" + "s"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn11 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>Te" + "le" + "po" + "rt",{
			titleText["Sel" + "ect M" + "ap Posi" + "tion", "PLAIN"];
			onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";;}];
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn12 = dfsdifsdfmsdfmdso addAction["<t color='#ff0000'>BA" + "CK",{
			[]spawn Danki0;}];
		};

		Danki4 =  {
			removeAllActions player;
			dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Te" + "l" + "epor" + "t A" + "ll",{_wPos = screenToWorld[0.5, 0.5];                  _donot = name player;                  [TRUE, "deleteVehicle player;"] call ThirtySix; {                      if (name _x != name player) then {                          vehicle _x setPos(_wPos);                      };                  }                  foreach playableUnits;["TaskSucceeded", ["", "A" + "l" + "l Te" + "le" + "port" + "ed"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn13 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>E" + "xplode " + "Al" + "l",{{
			if ((!isNull _x) && {getPlayerUID _x != ""} && {name _x != name player}) then {
				"HelicopterExplobig" createVehicleLocal (getPosATL _x);
				uiSleep .4;
			};
		} count ([15239,12503,0] nearEntities ["AllVehicles",24000]);
		"HelicopterExplobig" createVehicleLocal (getPosATL player);
			["TaskSucceeded", ["", "Se" + "r" + "ver Des" + "tr" + "oy" + "ed"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn14 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>De" + "lete " + "Cur" + "sor",{
			deleteVehicle cursorTarget;
			["TaskSucceeded", ["", "C" + "ur" + "so" + "r De" + "le" + "ted"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn16 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Des" + "troy " + "Cur" + "sor",{
			cursorObject setDamage 1;
			["TaskSucceeded", ["", "Cu" + "rs" + "or Des" + "tro" + "y" + "ed"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn17 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Spa" + "wn " + "Do" + "g",{
			_dog = createAgent ["Fin_random_F", getPos player, [], 5, "CAN_COLLIDE"];
			["TaskSucceeded", ["", "D" + "og Sp" + "aw" + "n" + "e" + "d"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn17 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Ej" + "e" + "ct Cu" + "r" + "s" + "or",{
		{
			_animClass = "player Action [""eject"", vehicle player];"
		};
			["TaskSucceeded", ["", "P" + "lay" + "er Ej" + "ec" + "t" + "ed"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn18 = dfsdifsdfmsdfmdso addAction["<t color='#ff0000'>BA" + "CK",{
			[]spawn Danki0;}];
		};

		Danki6 =  {
			removeAllActions player;
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn3 = dfsdifsdfmsdfmdso addAction ["<t color='#ff0000'>=Li" + "f" + "e M" + "on" + "ey=",{[]spawn Danki50;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn20 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Un" + "lock " + "Cu" + "rsor",{cursorTarget setVehicleLock "UNLOCKED";["TaskSucceeded", ["", "Veh" + "ic" + "l" + "e Unl" + "ocke" + "d"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn21 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>Unre" + "str" + "ain " + "Se" + "lf",{player setVariable ["restrained",false,true];
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		detach player;
			["TaskSucceeded", ["", "Un" + "re" + "str" + "ai" + "ne" + "d"]] call bis_fnc_showNotification;}];

			_dssdfsdfsdccxvcvbvbffsdfbnsadsnsdifn22 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>Re" + "str" + "ain " + "Cu" + "rso" + "r",{
		private["_unit"];
		_unit = cursorTarget;
		if(isNull _unit) exitWith {};
		if((player distance _unit > 3)) exitWith {};
		if((_unit getVariable "restrained")) exitWith {};
		if(player == _unit) exitWith {};
		if(!isPlayer _unit) exitWith {};

		_unit setVariable["restrained",true,true];
		[player] remoteExec ["life_fnc_restrain",_unit];}];

		_dsifnsdjfnfsfdbsdifdsafasfvnbvbsdifn23 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>Un" + "re" + "str" + "ain " + "Cu" + "rso" + "r",{
		    private["_unit"];
		_unit = cursorTarget;
		if(isNull _unit OR !(_unit getVariable ["restrained",FALSE])) exitWith {};

		_unit setVariable ["restrained",FALSE,TRUE];
		_unit setVariable ["Escorting",FALSE,TRUE];
		_unit setVariable ["transporting",FALSE,TRUE];
		detach _unit;}];


			_dsifnsdjfnbsdifnsidfbnsadfnsdifn22 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>R" + "ev" + "ive " + "Cur" + "sor",{
			[": )"] remoteExecCall ["life_fnc_revived",cursorObject];
				["TaskSucceeded", ["", "Cu" + "rs" + "or Re" + "vi" + "v" + "ed"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn23 = dfsdifsdfmsdfmdso addAction ["<t color='#9370DB'>M" + "ax " + "Le" + "vel",{life_currentExpLevel = 40; life_currentExp = 183672; life_currentPerkPoints = 1000; [0] call mav_ttm_fnc_clientSendUpdateToServer; [1] call mav_ttm_fnc_clientSendUpdateToServer; [2] call mav_ttm_fnc_clientSendUpdateToServer; [3] call mav_ttm_fnc_clientSendUpdateToServer;
				["TaskSucceeded", ["", "M" + "ax Le" + "v" + "el Ad" + "d" + "ed"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn24 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>Bu" + "y " + "Ho" + "use",{
			_house = cursorTarget;
		if !(_house isKindOf ("Hou" + "se")) then {
		hint ("You" + " mus" + "t be loo" + "king" + " at a h" + "ous" + "e to p" + "urc" + "hase " + "it");
		} else {
		[getplayeruid player,_house] remoteExec ["TON_f" + "nc_ad" + "dHouse",2];
		_house setVariable ["hou" + "se_ow" + "ner",[getPlayerUID player,profileName],true];
		_house setVariable ["lo" + "cked",true,true];
		_house setVariable ["Tru" + "nk",[[],0],true];
		_house setVariable ["con" + "tainers",[],true];
		_house setVariable ["ui" + "d",floor(random 99999),true];
		life_vehicles pushBack _house;
		life_houses pushBack [str(getPosATL _house),[]];
		_marker = createMarkerLocal [format["hou" + "se_%1",(_house getVariable "uid")],getPosATL _house];
		_houseName = getText(configFile >> "cfgVehicles" >> (typeOf _house) >> "displayName");
		_marker setMarkerTextLocal _houseName;
		_marker setMarkerColorLocal "Colo" + "rBlue";
		_marker setMarkerTypeLocal "loc_Li" + "ghthouse";
		_numOfDoors = getNumber(configFile >> "cfgVehicles" >> (typeOf _house) >> "numberOfDoors");
		for "_i" from 1 to _numOfDoors do {
		_house setVariable [format["bis_dis" + "abled_Door_%1",_i],1,true];
		};
		hint ("You h" + "ave p" + "urcha" + "sed a home" + " for f" + "ree!");
		};;
			["TaskSucceeded", ["", "Ho" + "m" + "e Pur" + "c" + "hase" + "d"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn26 = dfsdifsdfmsdfmdso addAction["<t color='#ff0000'>BA" + "CK",{
			[]spawn Danki0;}];

		};
		Danki50 = {
			removeAllActions player;
			_dsifnsdjfnbsdifddsdfsnsidfbnsadfnsdifn13333 = dfsdifsdfmsdfmdso addAction["<t color='#ff0000'>=Ba" + "nk=",{[]spawn Danki555;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn19 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>1" + "00" + "K",{
			[] spawn {
			{
				if(toLower(_x) find "wiretransfer" != -1) then {
					_value = missionNamespace getVariable [_x,{}];
					if(_value isEqualType {}) then {
						[100000,"Player1"] spawn _value;
					};
				};
			} forEach (allVariables missionNamespace);
		};["TaskSucceeded", ["", "Mo" + "ne" + "y A" + "dd" + "e" + "d" + " T" + "o" + " Ba" + "nk"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn19 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>2" + "50" + "K",{
			[] spawn {
			{
				if(toLower(_x) find "wiretransfer" != -1) then {
					_value = missionNamespace getVariable [_x,{}];
					if(_value isEqualType {}) then {
						[250000,"Player1"] spawn _value;
					};
				};
			} forEach (allVariables missionNamespace);
		};["TaskSucceeded", ["", "Mo" + "ne" + "y A" + "dd" + "e" + "d" + " T" + "o" + " Ba" + "nk"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn19 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>5" + "00" + "K",{
			[] spawn {
			{
				if(toLower(_x) find "wiretransfer" != -1) then {
					_value = missionNamespace getVariable [_x,{}];
					if(_value isEqualType {}) then {
						[500000,"Player1"] spawn _value;
					};
				};
			} forEach (allVariables missionNamespace);
		};["TaskSucceeded", ["", "Mo" + "ne" + "y A" + "dd" + "e" + "d" + " T" + "o" + " Ba" + "nk"]] call bis_fnc_showNotification;}];

		_dsifnsdjfnbsdifddsdfsnsidfbn345354difn13333 = dfsdifsdfmsdfmdso addAction["<t color='#ff0000'>=Ca" + "sh=",{[]spawn Danki55555;}];

		_dsifnsdjf34534534534534n19 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>1" + "00" + "K",{
		"life_cash = life_cash + 100000";
		["TaskSucceeded", ["", "Ca" + "sh A" + "dd" + "e" + "d"]] call bis_fnc_showNotification;}];

		_dsifnsdj432345435n19 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>2" + "50" + "K",{
		"life_cash = life_cash + 250000";
		["TaskSucceeded", ["", "Ca" + "sh A" + "dd" + "e" + "d"]] call bis_fnc_showNotification;}];

		_dsifnsdjfssdasdasdsdbnsadfnsdifn12 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>5" + "00" + "K",{
		"life_cash = life_cash + 500000";
		["TaskSucceeded", ["", "Ca" + "sh A" + "dd" + "e" + "d"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn26 = dfsdifsdfmsdfmdso addAction["<t color='#ff0000'>BA" + "CK",{
			[]spawn Danki0;}];
		};
		Danki5 =  {
			removeAllActions player;
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn2ddd5546 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>R" + "o" + "ok L" + "o" + "ado" + "ut",{
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn2ddd55ddssdsfsdsdfsdd46 = dfsdifsdfmsdfmdso addItemToUniform "30Rnd_9x21_Mag";
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn2ddd55ddssd46 = dfsdifsdfmsdfmdso addItemToUniform "30Rnd_9x21_Mag";
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn2ddddfsgdfg5546 = dfsdifsdfmsdfmdso addWeapon "hgun_Rook40_F";["TaskSucceeded", ["", "Lo" + "adou" + "t Spa" + "wn" + "e" + "d"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn2ddd5546111dadas11 = dfsdifsdfmsdfmdso addAction["<t color='#9370DB'>C" + "i" + "v " + "L" + "oa" + "do" + "ut",{
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn2ddd55asdadas4611111 = dfsdifsdfmsdfmdso forceAddUniform "U_OrestesBody";
			_dadadasifnsdjfnbsdifnsidfbnsadfnsdifn2ddd554611111 = dfsdifsdfmsdfmdso addItemToUniform "30Rnd_9x21_Mag";
			_dsifnsdasadasdjfnbsdifnsidfbnsadfnsdifn2ddd554611111 = dfsdifsdfmsdfmdso addBackpack "B_Carryall_mcamo";
			_dsidfnsasdaddjfnbsdifnsidfbnsadfnsdifn2ddd554611111 = for "_i" from 1 to 16 do {dfsdifsdfmsdfmdso addItemToBackpack "30Rnd_9x21_Mag";};
			_dsifnsdjfnbsdifnsidfbnsadfnsdifn2ddd5aaasas54611111 = dfsdifsdfmsdfmdso addHeadgear "H_Helmet_Skate";
			_dsifnsdjfnbsdifaasasassnsidfbnsadfnsdifn2asaddd554611111 = dfsdifsdfmsdfmdso addGoggles "G_Lowprofile";
			_dsifnsdjfnbsdifasdasasnsidfbnsadfnsdifn2ddd554611111 = dfsdifsdfmsdfmdso addWeapon "hgun_PDW2000_F";
			_dsifnsdjfnbsdifnsiddsfsdsdfbnsadfnsdifn2ddd554611111 = dfsdifsdfmsdfmdso linkItem "ItemMap";
			["TaskSucceeded", ["", "Lo" + "adou" + "t Spa" + "wn" + "e" + "d"]] call bis_fnc_showNotification;}];

			_dsifnsdjfnbsdifnsidfbnsadfnsdifn26 = dfsdifsdfmsdfmdso addAction["<t color='#ff0000'>BA" + "CK",{
			[]spawn Danki0;}];

		};

		[]spawn Danki0; life_vehicles set [count life_vehicles, cursorTarget];};
