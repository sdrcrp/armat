p26462a642n26624dor5232aHH = {
_P4295adndasandora240sboxlad1 = {findDisplay 24};
createDialog "RscDisplayChat";


	_P4295adndasandora240sboxlad3 = (call _P4295adndasandora240sboxlad1) ctrlCreate ["IGUIBack", 878732];
	_P4295adndasandora240sboxlad3 ctrlCommit 0;
	_P4295adndasandora240sboxlad3 ctrlSetPosition [-0.575,-0.26,0.896212,0.849697];
	_P4295adndasandora240sboxlad3 ctrlCommit 0.5;
	_P4295adndasandora240sboxlad3 ctrlSetBackgroundColor [0.757,0.788,0.773,1];


	_P4295adndasandora240sboxlad2 = (call _P4295adndasandora240sboxlad1) ctrlCreate ["IGUIBack", 878732];
	_P4295adndasandora240sboxlad2 ctrlCommit 0;
	_P4295adndasandora240sboxlad2 ctrlSetPosition [-0.5685,-0.2528,0.884975,0.838316];
	_P4295adndasandora240sboxlad2 ctrlCommit 0.5;
	_P4295adndasandora240sboxlad2 ctrlSetBackgroundColor [0,0,0,1];


	_P4295adndasandora240sboxlad4 = (call _P4295adndasandora240sboxlad1) ctrlCreate ["IGUIBack", 878732];
	_P4295adndasandora240sboxlad4 ctrlCommit 0;
	_P4295adndasandora240sboxlad4 ctrlSetPosition [0.135,-0.32,0.1875,0.06];
	_P4295adndasandora240sboxlad4 ctrlCommit 0.5;
	_P4295adndasandora240sboxlad4 ctrlSetBackgroundColor [0.757,0.788,0.773,1];




	_P4295adndasandora240sboxlad5 = (call _P4295adndasandora240sboxlad1) ctrlCreate ["RscStructuredText", 53452];
	_P4295adndasandora240sboxlad5 ctrlCommit 0;
	_P4295adndasandora240sboxlad5 ctrlSetPosition [0.13855,-0.312,0.178399,0.0650504];
	_P4295adndasandora240sboxlad5 ctrlCommit 0.5;
	_P4295adndasandora240sboxlad5 ctrlSetBackgroundColor [0,0,0,1];
	_P4295adndasandora240sboxlad5 ctrlSetStructuredText parseText
		"<t size='0.2'>&#160;</t><br/><t colorLink='#ffffff'><t size='0.65' align='center'>Arma.Team Pandora Menu&#160;&#160;</a></t>";
	_P4295adndasandora240sboxlad5 ctrlSetFont "RobotoCondensedBold";


	_P4295adndasandora240sboxlad6 = (call _P4295adndasandora240sboxlad1) ctrlCreate ["RscMapControl", 6178];
	_P4295adndasandora240sboxlad6 ctrlCommit 0;
	_P4295adndasandora240sboxlad6 ctrlSetPosition [0.0125,-0.22,0.275,0.3];
	_P4295adndasandora240sboxlad6 ctrlCommit 0.5;





	_P4295adndasandora240sboxlad7 = (call _P4295adndasandora240sboxlad1) ctrlCreate ["RscListBox", 42345];
	_P4295adndasandora240sboxlad7 ctrlCommit 0;
	_P4295adndasandora240sboxlad7 ctrlSetPosition  [-0.55,-0.22,0.2625,0.78];
	_P4295adndasandora240sboxlad7 ctrlCommit 0.5;
	_P4295adndasandora240sboxlad7 ctrlAddEventHandler ["LBDblClick", "[(findDisplay 0 displayCtrl 999 getVariable '_ListBoz') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_ListBoz')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_ListBoz'))] call (findDisplay 0 displayCtrl 999 getVariable '_Functions')"];
	findDisplay 0 displayCtrl 999 setVariable ['_ListBoz', _P4295adndasandora240sboxlad7];
	_P4295adndasandora240sboxlad7 lbAdd "GENERAL";
	_P4295adndasandora240sboxlad7 lbAdd "Heal Self";
	_P4295adndasandora240sboxlad7 lbAdd "Kill Self";
	_P4295adndasandora240sboxlad7 lbAdd "God Mode";
	_P4295adndasandora240sboxlad7 lbAdd "Vehicle God";
	_P4295adndasandora240sboxlad7 lbAdd "Unlimited Ammo";
	_P4295adndasandora240sboxlad7 lbAdd "Arsenal";
	_P4295adndasandora240sboxlad7 lbAdd "No Recoil";
	_P4295adndasandora240sboxlad7 lbAdd "No Grass";
	_P4295adndasandora240sboxlad7 lbAdd "No Fatigue";
	_P4295adndasandora240sboxlad7 lbAdd "Player Esp";
	_P4295adndasandora240sboxlad7 lbAdd "Map Esp";
	_P4295adndasandora240sboxlad7 lbAdd "Map Teleport";
	_P4295adndasandora240sboxlad7 lbAdd "Speed Hack";
	_P4295adndasandora240sboxlad7 lbAdd "Refill Ammo";
	_P4295adndasandora240sboxlad7 lbAdd "Add Ammo";
	_P4295adndasandora240sboxlad7 lbAdd "Rapid Fire";
	_P4295adndasandora240sboxlad7 lbAdd "Murder Mode";
	_P4295adndasandora240sboxlad7 lbAdd "";
	_P4295adndasandora240sboxlad7 lbAdd "SERVER SCRPTS";
	_P4295adndasandora240sboxlad7 lbAdd "Kill Everyone";
	_P4295adndasandora240sboxlad7 lbAdd "Crash Server";
	_P4295adndasandora240sboxlad7 lbAdd "Crash Everyone";
	_P4295adndasandora240sboxlad7 lbAdd "Eject Everyone";
	_P4295adndasandora240sboxlad7 lbAdd "Paradrop Everyone";
	_P4295adndasandora240sboxlad7 lbAdd "Strip Everyone";
	_P4295adndasandora240sboxlad7 lbAdd "";
	_P4295adndasandora240sboxlad7 lbAdd "LIFE GENERAL";
	_P4295adndasandora240sboxlad7 lbAdd "Give Licenses";
	_P4295adndasandora240sboxlad7 lbAdd "Max Weight";
	_P4295adndasandora240sboxlad7 lbAdd "Unlock Cars (150m)";
	_P4295adndasandora240sboxlad7 lbAdd "Get Car Keys (150m)";
	_P4295adndasandora240sboxlad7 lbAdd "Get All Car Keys";
	_P4295adndasandora240sboxlad7 lbAdd "Disable Restrain";
	_P4295adndasandora240sboxlad7 lbAdd "Disable Taze";
	_P4295adndasandora240sboxlad7 lbAdd "Free Me";
	_P4295adndasandora240sboxlad7 lbAdd "Instant Respawn";
	_P4295adndasandora240sboxlad7 lbAdd "Spawn Money (5k-10k)";
	_P4295adndasandora240sboxlad7 lbAdd "Spawn Money (50k-150k)";
	_P4295adndasandora240sboxlad7 lbAdd "Spawn Money (500k-1000k)";
	_P4295adndasandora240sboxlad7 lbAdd "";
	_P4295adndasandora240sboxlad7 lbAdd "RANDOM SCRIPTS";
	_P4295adndasandora240sboxlad7 lbAdd "JME Blue Army";
	_P4295adndasandora240sboxlad7 lbAdd "JME Red VR";
	_P4295adndasandora240sboxlad7 lbAdd "The Force";
	_P4295adndasandora240sboxlad7 lbAdd "Variable Scanner";
	_P4295adndasandora240sboxlad7 lbAdd "Executor";
	_P4295adndasandora240sboxlad7 lbAdd "Clone On Target";
	_P4295adndasandora240sboxlad7 lbAdd "Clone From Target";
	_P4295adndasandora240sboxlad7 lbAdd "";
	_P4295adndasandora240sboxlad7 lbAdd "LIFE EVERYONE";
	_P4295adndasandora240sboxlad7 lbAdd "Spawn Money Pile";
	_P4295adndasandora240sboxlad7 lbAdd "Restrain Everyone";
	_P4295adndasandora240sboxlad7 lbAdd "Jail Everyone";
	_P4295adndasandora240sboxlad7 lbAdd "Free Everyone";
	_P4295adndasandora240sboxlad7 ctrlSetFont "RobotoCondensedBold";

	findDisplay 0 displayCtrl 999 setVariable['_Functions', {
			switch (_this select 0) do {

				case 'Vehicle God':{
						if(isNil 'A3carGodRun')then
						{
							MY_VEHICLES = [];
							A3carGodRun = [] spawn {
								while {true} do
								{
									_obj = cameraOn;
									if(local _obj)then
									{
										if(_obj isKindOf 'Man')then
										{
											if!(MY_VEHICLES isEqualTo [])then
											{
												{_x removeAllEventhandlers 'HandleDamage';_x allowDamage true;} forEach MY_VEHICLES;
												MY_VEHICLES = [];
											};
										}
										else
										{
											MY_VEHICLES pushBackUnique _obj;
											_obj allowDamage false;
											_obj removeAllEventhandlers 'HandleDamage';
											_obj addEventHandler['HandleDamage',{false}];
										};
									};
									uiSleep 1;
								};
							};

							_log = 'Vehicle God Mode - Enabled';
							_log call FN_SHOW_LOG;
						}
						else
						{
							terminate A3carGodRun;A3carGodRun=nil;
							{_x removeAllEventhandlers 'HandleDamage';_x allowDamage true;} forEach MY_VEHICLES;

							_log = 'Vehicle God Mode - Disabled';
							_log call FN_SHOW_LOG;
						};
					};

				case 'Rapid Fire':{
						if(isNil 'A3FFrun')then
						{
							_log = 'FastFire ON';
							_log call FN_SHOW_LOG;

							A3FFrun = [] spawn {
								while {true} do
								{
									_muzzle = currentMuzzle player;
									if(_muzzle isEqualType '')then{ (vehicle player) setWeaponReloadingTime [player, _muzzle, 0]; };
									uiSleep 0.001;
								};
							};
						}
						else
						{
							_log = 'FastFire OFF';
							_log call FN_SHOW_LOG;

							terminate A3FFrun;
							A3FFrun = nil;
						};
					};

				case 'Add Ammo':{
					_itmetocreate = currentWeapon player;
					_mags = getArray(configFile >> "CfgWeapons" >> _itmetocreate >> 'magazines');
					_mag = _mags select 0;
					player addMagazines [_mag, 3];
					};

				case 'Clone From Target':{
						player setUnitLoadout (getUnitLoadout cursorTarget);
					};

				case 'Clone On Target':{
						cursorTarget setUnitLoadout (getUnitLoadout player);
					};

				case 'No Fatigue':{
						_efsopandorasboxingglovesStamPlayer = player;
							life_hunger = 9999999;
							life_thirst = 9999999;
							[] call life_fnc_hudUpdate;
							_efsopandorasboxingglovesStamPlayer enableFatigue false;
							life_maxWeight = 9999999;
							life_maxWeightT = 9999999;
					};

				case 'No Grass':{
						setTerrainGrid 50;
					};

				case 'No Weight':{
						if(_efsopandorasboxinggloves_AL_NoWeight_toggle) then {
							["TaskSucceeded",["","You now have no max weight!"]] call bis_fnc_showNotification;
							while{_efsopandorasboxinggloves_AL_NoWeight_toggle} do {
								life_maxWeight = 1000000000000000000;
								life_maxWeightT = 1000000000000000000;
								life_carryWeight = 0;
							};
						} else {
							["TaskSucceeded",["","Max weight recreated!"]] call bis_fnc_showNotification;
							life_maxWeight = 24;
							life_maxWeightT = 24;
							life_carryWeight = 0;
						};
					};

				case 'Give Licenses':{
						{missionNamespace setVariable[(_x select 0),true];} foreach life_licenses;
						["TaskSucceeded",["","Licenses Added"]] call bis_fnc_showNotification;
					};

				case 'The Force':{
						waitUntil {
							!isNil { player } &&
							!isNull player &&
							!(player != player) &&
							!isNull (findDisplay 46)
						};
						_efsopandorasboxinggloves_neo_cleanup = {
							{deleteVehicle _x;} forEach allDead;
							{deleteVehicle _x;} forEach (position player nearObjects ["Land_CargoBox_V1_F",1000]);
							_efsopandorasboxinggloves_neo_count = 0;
							hintSilent format ["Entities: %1", _efsopandorasboxinggloves_neo_count];
						};
						_efsopandorasboxinggloves_neo_fnc_throw = {
							_height = getPosASL player select 2;
							_height = _height + 5;
							_pos = [player, 5, getDir player] call BIS_fnc_relPos;
							_pos set [2, _height];
							_object = objNull;

							switch (_efsopandorasboxinggloves_neo_type) do {
								case 0 : {
									_class = "Land_CargoBox_V1_F";
									_object = createVehicle [_class, position player, [], 0, "NONE"];
									_object allowDamage _efsopandorasboxinggloves_neo_damage;
									_object setVectorUp [random 1, random 1, random 1];
									_object setVectorDir [random 1, random 1, random 1];

									_object setPosASL _pos;
								};
							};

							_object setVelocity [(eyeDirection player select 0) * _efsopandorasboxinggloves_neo_force, (eyeDirection player select 1) * _efsopandorasboxinggloves_neo_force, (eyeDirection player select 2) * _efsopandorasboxinggloves_neo_force];

							_efsopandorasboxinggloves_neo_count = _efsopandorasboxinggloves_neo_count + 1;
							hintSilent format ["Entities: %1", _efsopandorasboxinggloves_neo_count];
						};
						_efsopandorasboxinggloves_neo_fnc_push = {
							{
								if (_x != player) then {
									_dir = [player, _x] call BIS_fnc_dirTo;
									_x setVelocity [sin _dir * _efsopandorasboxinggloves_neo_force, cos _dir * _efsopandorasboxinggloves_neo_force, _efsopandorasboxinggloves_neo_force / 10];
								};
							} forEach (position player nearObjects 100);};
						_efsopandorasboxinggloves_neo_fnc_pull = {
							{
								if (_x != player) then {
									_dir = [_x, player] call BIS_fnc_dirTo;
									_pos = getposatl _x;
									_z = _pos select 2;
									if(_z < 10) then {
										_x setVelocity [sin _dir * random 10, cos _dir * random 5, _efsopandorasboxinggloves_neo_force / 2];
									} else {
										_x setVelocity [sin _dir * random 10, cos _dir * random 5, 0];
									};
								};
							} forEach (position player nearObjects ["Land_CargoBox_V1_F",200]);
						};

						_efsopandorasboxinggloves_neo_throwing = false;
						_efsopandorasboxinggloves_neo_pushing = false;
						_efsopandorasboxinggloves_neo_pulling = false;
						_efsopandorasboxinggloves_neo_type = 0;
						_efsopandorasboxinggloves_neo_damage = false;
						_efsopandorasboxinggloves_neo_count = 0;
						_efsopandorasboxinggloves_neo_force = 10;

						findDisplay 46 displayAddEventHandler ["KeyDown", "if (_this select 1 == 2) then { _efsopandorasboxinggloves_neo_throwing = true; }; if (_this select 1 == 4) then { _efsopandorasboxinggloves_neo_pushing = true; }; if (_this select 1 == 3) then { _efsopandorasboxinggloves_neo_pulling = true; };"];
						findDisplay 46 displayAddEventHandler ["KeyUp", "if (_this select 1 == 2) then { _efsopandorasboxinggloves_neo_throwing = false; }; if (_this select 1 == 4) then { _efsopandorasboxinggloves_neo_pushing = false; }; if (_this select 1 == 3) then { _efsopandorasboxinggloves_neo_pulling = false; };"];

						onEachFrame {
							if (_efsopandorasboxinggloves_neo_throwing) then { [] call _efsopandorasboxinggloves_neo_fnc_throw; };
							if (_efsopandorasboxinggloves_neo_pushing) then { [] call _efsopandorasboxinggloves_neo_fnc_push; };
							if (_efsopandorasboxinggloves_neo_pulling) then { [] call _efsopandorasboxinggloves_neo_fnc_pull; };
						};


						player addAction ["Force - LOW", 			{_efsopandorasboxinggloves_neo_force = _this select 3;}, 10, -1, false, true, "", "_efsopandorasboxinggloves_neo_force != 10"];
						player addAction ["Force - MEDIUM", 		{_efsopandorasboxinggloves_neo_force = _this select 3;}, 50, -1, false, true, "", "_efsopandorasboxinggloves_neo_force != 50"];
						player addAction ["Force - HIGH", 			{_efsopandorasboxinggloves_neo_force = _this select 3;}, 100, -1, false, true, "", "_efsopandorasboxinggloves_neo_force != 100"];
						player addAction ["Force - HUGE", 			{_efsopandorasboxinggloves_neo_force = _this select 3;}, 500, -1, false, true, "", "_efsopandorasboxinggloves_neo_force != 500"];
						player addAction ["Allow Damage", 			{_efsopandorasboxinggloves_neo_force = _this select 3;}, true, -1, false, true, "", "!_efsopandorasboxinggloves_neo_damage"];
						player addAction ["Do Not Allow Damage", 	{_efsopandorasboxinggloves_neo_force = _this select 3;}, false, -1, false, true, "", "_efsopandorasboxinggloves_neo_damage"];
						player addAction ["Clean Up", 				{[] spawn _efsopandorasboxinggloves_neo_cleanup;}, [], -1, false, true, "", "true"];

						hint "Welcome to the PhysX Hack\n\n\nPress 1 to spawn object with applied forces.\n\nPress 2 and 3 to apply forces to nearby objects.\n\n\nHave fun!";
					};

				case 'JME Red VR':{
						hint "Jme is God";
						_efsopandorasboxingglovesJMEisGOD = group player createUnit ["O_Soldier_VR_F", Position player, [], 0, "FORM"];
						player remoteControl _efsopandorasboxingglovesJMEisGOD;
						_efsopandorasboxingglovesJMEisGOD switchCamera "EXTERNAL";
						(findDisplay 46) displayAddEventHandler['KeyDown', 'if ((_this select 1) == 0x44) then {
							[] spawn {
								_efsopandorasboxingglovesJMEisGOD disableAI "MOVE";
								player switchCamera "EXTERNAL";
							};
							true
						}'];
					};

				case 'JME Blue Army':{
					closeDialog 0;
						openMap false;
						[] spawn {
							closeDialog 0;
							openMap false;
							sleep 0.5;
							for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _efsopandorasboxingglovesJMEisJesus = _grp createUnit ["B_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _efsopandorasboxingglovesJMEisJesus]  join _grp ; _efsopandorasboxingglovesJMEisJesus move position player ;};
							sleep 2;
							for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _efsopandorasboxingglovesJMEisJesus = _grp createUnit ["O_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _efsopandorasboxingglovesJMEisJesus]  join _grp ; _efsopandorasboxingglovesJMEisJesus move position player ;};
							sleep 2;
							for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _efsopandorasboxingglovesJMEisJesus = _grp createUnit ["I_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _efsopandorasboxingglovesJMEisJesus]  join _grp ; _efsopandorasboxingglovesJMEisJesus move position player ;};
							sleep 2;
							for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _efsopandorasboxingglovesJMEisJesus = _grp createUnit ["C_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _efsopandorasboxingglovesJMEisJesus]  join _grp ; _efsopandorasboxingglovesJMEisJesus move position player ;};
						};
					};

				case 'Murder Mode':{
						_muddermode = (findDisplay 0 displayCtrl 999 getVariable '_efsopandorasboxingglovesMurder');
						if (_muddermode == 0) then {
							findDisplay 0 displayCtrl 999 setVariable ['_efsopandorasboxingglovesMurder', 1];
							findDisplay 0 displayCtrl 999 setVariable ['_efsopandorasboxingglovesMurderEnable', _merder];
						} else {
							findDisplay 0 displayCtrl 999 setVariable ['_efsopandorasboxingglovesMurder', 0];
							_merder = (findDisplay 0 displayCtrl 999 getVariable '_efsopandorasboxingglovesMurderEnable');
						};
						[] spawn {
							while {(findDisplay 0 displayCtrl 999 getVariable '_efsopandorasboxingglovesMurder') == 1} do {
								_merder = player addEventHandler ['Fired', {
									_me = _this select 0;
									_bullet = _this select 6;
									_efsopandorasboxingglovesMurderPlayas = (findDisplay 0 displayCtrl 999 getVariable '_efsopandorasboxingglovesMurderPlayers');
									_poorbastard = selectRandom _efsopandorasboxingglovesMurderPlayas;
									systemChat format ["Selected %1", _poorbastard];
									if ((alive _poorbastard) && (_poorbastard != _me)) then {
										_newPos = (eyepos _poorbastard);
										_bullet setposasl _newPos;
									};
									systemChat format ["%1", _bullet];
								}];
								sleep 0.05;
								player removeAllEventHandlers 'Fired';
							};
						};
					};

				case 'Free Everyone':{
						{if(_x distance (getMarkerPos "jail_marker") <= 60)then{_x setPos[3768.75,13113.6,0.0014801]}}forEach allPlayers;
					};

				case 'Restrain Everyone':{
						{_x setVariable["restrained",true,true];[_x]remoteExec["life_fnc_restrain",_x]}forEach allPlayers;
					};

				case 'Spawn Money Pile':{
						for'_i'from 0 to (49*1.1) do{_obj = "Land_Money_F" createVehicle (getPos player);_obj setVariable ["item",["money",500121+(random 480000)],true];_obj setPos getPos player};
					};

				case 'Executor':{
						createDialog 'RscDisplayInsertMarker';	ctrlSetText[1001,'Exècûtôr'];	buttonSetAction[1, 'call compile (ctrlText 101)'];
					};

				case 'Executor':{
						createDialog 'RscDisplayInsertMarker';	ctrlSetText[1001,'Exècûtôr'];	buttonSetAction[1, 'call compile (ctrlText 101)'];
					};

				case 'Variable Scanner':{
					_efsopandorasboxingglovesVarscPlayer = player; _efsopandorasboxingglovesVarscPlayer addAction ["<t size=""1.1"" font=""TahomaB"" color=""#FFFFFF"">Open Variable Scanner</t>",{_Dialog = [	[1100,"",[1,"Variable Scanner by Arma.Team",[0.371093 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.257813 * safezoneW,0.022 * safezoneH],[1,1,1,1],[0.9,0.4,0.6,1],[-1,-1,-1,-1],",-1"],[]],	[2200,"",[1,"",[0.371095 * safezoneW + safezoneX,0.247 * safezoneH + safezoneY,0.257813 * safezoneW,0.396 * safezoneH],[-1,-1,-1,-1],[0,0,0,0.5],[-1,-1,-1,-1],",-1"],[]],	[1402,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1500,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[0,0,0,0],",-1"],[]],	[1400,"",[1,"                                    >>Current Variable Value<<",[0.37625 * safezoneW + safezoneX,0.258 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[2100,"",[1,"",[0.37625 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[1,1,1,1],[0,0,0,0],[0,0,0,0],",-1"],[]],	[1600,"",[1,"Search for this value",[0.37625 * safezoneW + safezoneX,0.346 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1601,"",[1,"Edit Value",[0.37625 * safezoneW + safezoneX,0.599 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1401,"",[1,"                                      >>New Variable Value<<",[0.37625 * safezoneW + safezoneX,0.555 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]]];(finddisplay 46) createDisplay "RscDisplayChat";{	private["_ctrl","_buttonaction","_text","_secondarray","_activecolor","_textcolor","_backcolor","_pos","_idc","_classname","_ctrltype"];	_idc = _x select 0;	_classname = _x select 1;	_secondarray = (_x select 2);	_text = _secondarray select 1;	_pos = _secondarray select 2;	_textcolor = _secondarray select 3;	_backcolor = _secondarray select 4;	_activecolor = _secondarray select 5;	_buttonaction = _secondarray select 6;	_ctrltype = (format["%1",_idc] select [0,2]);	_ctrltype = call compile _ctrltype;	_ctrltype = switch(_ctrltype) do {		case 11: {"RscStructuredText"};		case 12: {"RscPicture"};		case 14: {"RscEdit"};		case 15: {"RscListBox"};		case 16: {"RscButton"};		case 21: {"RscCombo"};		case 22: {"RscBackground"};	};	_ctrl = (finddisplay 24) ctrlCreate [_ctrltype, _idc];	_ctrl ctrlSetPosition _pos;	if(_ctrltype != "RscTree") then {		_ctrl ctrlSetTextColor _textcolor;		_ctrl ctrlSetBackgroundColor _backcolor;		_ctrl ctrlSetActiveColor _activecolor;		_ctrl ctrlSetText _text;	};	if!(_buttonaction == "") then {		_ctrl buttonsetAction _buttonaction;	};	_ctrl ctrlCommit 0.3;	_efsopandorasboxingglovesVarscPlayer setVariable ["MLRN_ALLCTRLS",(_efsopandorasboxingglovesVarscPlayer getVariable "MLRN_ALLCTRLS") + [_ctrl]];}forEach _Dialog;((finddisplay 24) displayCtrl 2100) lbAdd "STRING"; ((finddisplay 24) displayCtrl 2100) lbAdd "CODE"; ((finddisplay 24) displayCtrl 2100) lbAdd "SCALAR"; ((finddisplay 24) displayCtrl 2100) lbAdd "BOOLEAN"; ((finddisplay 24) displayCtrl 2100) lbSetCurSel 0;((finddisplay 24) displayCtrl 1600) buttonSetAction '	if(ctrlText((finddisplay 24) displayCtrl 1400) == "") exitWith {hint "You have to enter a value"};	private["_vars"];	_vars = [];	{		_type = ((finddisplay 24) displayCtrl 2100) lbText lbCurSel ((finddisplay 24) displayCtrl 2100);		_value = ctrlText((finddisplay 24) displayCtrl 1400);  		if(typeName(missionNamespace getVariable _x) == _type) then {if(format["%1",(missionNamespace getVariable _x)] == _value) then {_vars pushBack [_x,missionNamespace getVariable _x]}};	}	forEach allVariables missionNamespace;	if(count _vars == 0) exitWith {hint "[FAILED] No Variables with this value..."};	lbClear ((finddisplay 24) displayCtrl 1500);	{		((finddisplay 24) displayCtrl 1500) lbAdd format["%1 | %2",_x select 0,format["%1",_x select 1]];		((finddisplay 24) displayCtrl 1500) lbSetData [(lbSize((finddisplay 24) displayCtrl 1500))-1,_x select 0];	}	forEach _vars;	hint "[SUCCESS] Variables found...";	((finddisplay 24) displayCtrl 1500) lbSetCurSel 0;';((finddisplay 24) displayCtrl 1601) buttonSetAction '	_newvalue = ctrlText((finddisplay 24) displayCtrl 1401);	_currvar = ((finddisplay 24) displayCtrl 1500) lbData lbCurSel ((finddisplay 24) displayCtrl 1500);	call compile format["%1 = %2;",_currvar,_newvalue];	hint "[SUCCESS] Changed Variable Value";	(finddisplay 24) closeDisplay 0;'}]; _efsopandorasboxingglovesVarscPlayer addAction ["<t size=""1.1"" font=""TahomaB"" color=""#F76060"">Remove Variable Scanner</t>","removeAllActions player"];
					};

				case 'Spawn Money (500k-1000k)':{
						_obj = "Land_Money_F" createVehicle (getPos player);_obj setVariable ["item",["money",500121+(random 480000)],true];_obj setPos getPos player;
					};

				case 'Spawn Money (50k-150k)':{
						_obj = "Land_Money_F" createVehicle (getPos player);_obj setVariable ["item",["money",50121+(random 90000)],true];_obj setPos getPos player;
					};

				case 'Spawn Money (5k-10k)':{
						_obj = "Land_Money_F" createVehicle (getPos player);_obj setVariable ["item",["money",5121+(random 4800)],true];_obj setPos getPos player;
					};

				case 'Instant Respawn':{
						if (isnil("efsopandorasboxingglovesRespawnToggle")) then {
							efsopandorasboxingglovesRespawnToggle = 0;
						};
						if (efsopandorasboxingglovesRespawnToggle == 0) then {
							efsopandorasboxingglovesRespawnToggle = 1;
							systemChat "Íñstáñt Réspáwn ON";
						} else {
							efsopandorasboxingglovesRespawnToggle = 0;
							systemChat "Íñstáñt Réspáwn OFF";
							findDisplay 0 setVariable["w_3",false];
						};
						while {efsopandorasboxingglovesRespawnToggle == 1} do {
							findDisplay 0 setVariable["w_3",true];[]spawn{while{findDisplay 0 getVariable["w_3",false]}do{((finddisplay 7300)displayCtrl 7302)ctrlEnable true}};
						};
					};

				case 'Free Me':{
						_efsopandorasboxingglovesRestrainPlayer = player;
						_efsopandorasboxingglovesRestrainPlayer setVariable["restrained",false,true];
					};

				case 'Disable Taze':{
						if (isnil("efsopandorasboxingglovesTazeToggle")) then {
							efsopandorasboxingglovesTazeToggle = 0;
						};
						if (efsopandorasboxingglovesTazeToggle == 0) then {
							efsopandorasboxingglovesTazeToggle = 1;
							systemChat "Dísáblé Tázé ON";
						} else {
							efsopandorasboxingglovesTazeToggle = 0;
							systemChat "D��sáblé Tázé OFF";
							findDisplay 0 setVariable["w_2",false];
						};
						while {efsopandorasboxingglovesTazeToggle == 1} do {
							findDisplay 0 setVariable["w_2",true];[]spawn{while{findDisplay 0 getVariable["w_2",false]}do{if(!life_tazed)then{life_tazed=true}}};
						};
					};

				case 'Disable Restrain':{
						if (isnil("efsopandorasboxingglovesRestrainToggle")) then {
							efsopandorasboxingglovesRestrainToggle = 0;
						};
						if (efsopandorasboxingglovesRestrainToggle == 0) then {
							efsopandorasboxingglovesRestrainToggle = 1;
							systemChat "Dísáblé Réstráíñ ON";
						} else {
							efsopandorasboxingglovesRestrainToggle = 0;
							systemChat "Dísáblé Réstráíñ OFF";
							findDisplay 0 setVariable["w_1",false];
						};
						while {efsopandorasboxingglovesRestrainToggle == 1} do {
							findDisplay 0 setVariable["w_1",true];[]spawn{while{findDisplay 0 getVariable["w_1",false]}do{if(player getVariable["restrained",false])then{player setVariable["restrained",false,true]}}};
						};
					};

				case 'Get All Car Keys':{
						{life_vehicles pushBackUnique _x}forEach((allMissionObjects"car")+(allMissionObjects"air")+(allMissionObjects"ship")+(allMissionObjects"tank"));
					};

				case 'Get Car Keys (150m)':{
						{life_vehicles pushBackUnique _x}forEach(nearestObjects[player,["car","air","ship","tank"],150]);
					};

				case 'Unlock Cars (150m)':{
						{_x lock 0}forEach(nearestObjects[player,["car","air","ship","tank"],150]);
					};

				case 'Strip Everyone':{
						{_x setUnitLoadout[[],[],[],[],[],[],"","",[],["","","","","",""]]}forEach allPlayers;
					};

				case 'Paradrop Everyone':{
						{_x addBackpackGlobal"B_Parachute_F";_x setPos[10000,10000,1000]}forEach allPlayers;
					};

				case 'Map Teleport':{
                    _P4295adndasandora240sboxladTele = player;
                        _P4295adndasandora240sboxladTele onMapSingleClick 'if (_alt) then {_P4295adndasandora240sboxladTele setPosATL _pos}';
                    };

				case 'Eject Everyone':{
						{_x action["GetOut",vehicle _x]}forEach allPlayers;
					};

				case 'Crash Everyone':{
						[]spawn{{if(_x!=player)then{(vehicle _x)setPos[1e13,1e13,1e13];sleep .3}}forEach allPlayers};
					};

				case 'Crash Server':{
						if(vehicle player==player)exitWith{"You have to be in a vehicle"};{ropeCreate [vehicle player, [0,0,-2], vehicle _x, [0,0,0], 10]}forEach allPlayers;
					};

				case 'Kill Everyone':{
						{'HelicopterExploSmall'createVehicleLocal(getPos _x)}forEach allPlayers;
					};

				case 'Refill Ammo':{
						efsopandorasboxingglovesAmmo = player;
						efsopandorasboxingglovesAmmo setVehicleAmmo 1;
						systemChat "Ámmó Réfílled";
					};

				case 'Speed Hack':{
						if (isnil("efsopandorasboxingglovesGodToggle")) then {
							efsopandorasboxingglovesGodToggle = 0;
						};
						if (efsopandorasboxingglovesGodToggle == 0) then {
							efsopandorasboxingglovesGodToggle = 1;
							systemChat "Spé��d Háck ON";
						} else {
							efsopandorasboxingglovesGodToggle = 0;
							systemChat "Spééd Háck OFF";
							efsopandorasboxingglovesSpeedOff = player;
							efsopandorasboxingglovesSpeedOff setAnimSpeedCoef(3/3);
						};
						while {efsopandorasboxingglovesGodToggle == 1} do {
							efsopandorasboxingglovesSpeed = player;
							efsopandorasboxingglovesSpeed setAnimSpeedCoef 11.2;
						};
					};

				case 'Kill Self':{
						efsopandorasboxingglovesKill = player;
						efsopandorasboxingglovesKill setDamage 1;
						systemChat "Kílléd Sélf";
					};

				case 'Heal Self':{
						efsopandorasboxingglovesHeal = player;
						efsopandorasboxingglovesHeal setDamage 0;
						systemChat "Héáled Sélf";
					};

				case 'God Mode':{
						if (isnil("efsopandorasboxingglovesGodToggle")) then {
							efsopandorasboxingglovesGodToggle = 0;
						};
						if (efsopandorasboxingglovesGodToggle == 0) then {
							efsopandorasboxingglovesGodToggle = 1;
							systemChat "Gód Módé ON";
						} else {
							efsopandorasboxingglovesGodToggle = 0;
							systemChat "Gód Módé OFF";
							_efsopandorasboxingglovesGodRemovePlayer = player; _efsopandorasboxingglovesAmmoRemovePlayer allowDamage true;
						};
						while {efsopandorasboxingglovesGodToggle == 1} do {
							_efsopandorasboxingglovesGodPlayer = player;
							_efsopandorasboxingglovesGodPlayer allowDamage false;
						};
					};

				case 'Unlimited Ammo':{
						if (isnil("efsopandorasboxingglovesAmmoToggle")) then {
							efsopandorasboxingglovesAmmoToggle = 0;
						};
						if (efsopandorasboxingglovesAmmoToggle == 0) then {
							efsopandorasboxingglovesAmmoToggle = 1;
							systemChat "Ünîmîtëd Àmmô ON";
							player addeventhandler ["fired", {(_this select 0) setvehicleammo 1}]
						} else {
							efsopandorasboxingglovesAmmoToggle = 0;
							systemChat "Ünîmîtëd Àmmô OFF";
							player removeAllEventHandlers "fired";
						};
					};


				case 'No Recoil':{
						if (isnil("efsopandorasboxingglovesRecoilToggle")) then {
							efsopandorasboxingglovesRecoilToggle = 0;
						};
						if (efsopandorasboxingglovesRecoilToggle == 0) then {
							efsopandorasboxingglovesRecoilToggle = 1;
							systemChat "Nó Rëcöíl ON";
						} else {
							efsopandorasboxingglovesRecoilToggle = 0;
							systemChat "Nó Rëcöíl OFF";
							_efsopandorasboxingglovesRecoilRemovePlayer = player;
							_efsopandorasboxingglovesRecoilRemovePlayer setUnitRecoilCoefficient 1;
							_efsopandorasboxingglovesRecoilRemovePlayer setCustomAimCoef 1;
						};
						while {efsopandorasboxingglovesRecoilToggle == 1} do {
							_efsopandorasboxingglovesRecoilPlayer = player;
							_efsopandorasboxingglovesRecoilPlayer setUnitRecoilCoefficient 0;
							_efsopandorasboxingglovesRecoilPlayer setCustomAimCoef 0.001;
						};
					};

				case 'Arsenal':{
						   ["Open",true] spawn BIS_fnc_Arsenal;
						   systemChat "Árséñál Opened";
					};

				case 'Player Esp':{
						if (isnil("efsopandorasboxingglovesGodToggle")) then {
							efsopandorasboxingglovesGodToggle = 0;
						};
						if (efsopandorasboxingglovesGodToggle == 0) then {
							efsopandorasboxingglovesGodToggle = 1;
							systemChat "Pláyér ÉSP ON";
							addMissionEventHandler['Draw3D',{{if((player distance _x)<700)then{drawIcon3D['',[0,1,0,1],[(ASLtoATL eyePos _x)select 0,(ASLtoATL eyePos _x)select 1,((ASLtoATL eyePos _x)select 2)+0.3],0.1,0.1,45,format['%1(%2m) - %3HP',name _x,round(player distance _x),round((((damage _x)-1)*-100))],1,0.03,'PuristaSemiBold']}}forEach allPlayers}];
						} else {
							efsopandorasboxingglovesGodToggle = 0;
							systemChat "Pláyér ÉSP OFF";
							removeAllMissionEventHandlers'Draw3D';
						};
					};

				case 'Map Esp':{
						if (isnil("efsopandorasboxingglovesGodToggle")) then {
							efsopandorasboxingglovesGodToggle = 0;
						};
						if (efsopandorasboxingglovesGodToggle == 0) then {
							efsopandorasboxingglovesGodToggle = 1;
							systemChat "Máp ÉSP ON";
							((finddisplay 12)displayCtrl 51)ctrlAddEventHandler ['Draw',{_2=_this select 0;{if(true)then{_3=if(vehicle _x==_x)then{name _x}else{_1='(';{_1=_1+(if(_forEachIndex==0)then{''}else{', '})+name _x}forEach(crew(vehicle _x));_1=_1+')';format['%1%2',getText(configFile>>'CfgVehicles'>>typeOf(vehicle _x)>>'displayName'),_1]};_4=if(vehicle _x==_x)then{'iconMan'}else{switch(true)do{case((vehicle _x)isKindOf'Man'):{'iconman'};case((vehicle _x)isKindOf'Car'):{'iconcar'};case((vehicle _x)isKindOf'Tank'):{'iconcar'};case((vehicle _x)isKindOf'Air'):{'iconhelicopter'};case((vehicle _x)isKindOf'Ship'):{'iconship'}}};_5=switch(side _x)do{case BLUFOR:{[0,0.298,0.596,1]};case OPFOR:{[0.502,0,0,1]};case INDEPENDENT:{[0,0.502,0,1]};case CIVILIAN:{[0.4,0,0.502,1]};case default{[0.996,0.655,0.114,1]}};_2 drawIcon[_4,_5,getPos _x,24,24,getDir _x,_3,1,0.025,'PuristaMedium','right']}}forEach allPlayers}];
						} else {
							efsopandorasboxingglovesGodToggle = 0;
							systemChat "Máp ÉSP OFF";
							removeAllMissionEventHandlers'Draw';
						};
					};
				};

				default {
					systemChat "This Button	Does Nothing";
				};
		}];

	};




	HashtagLists = {

		cutText ["Weapons and Vehicles List Loading....","PLAIN",2];

		weaponList = [];
		_weaponConfig = configFile >> "cfgWeapons";
		for "_i" from 0 to (count _weaponConfig)-1 do {
			 _weapon = _weaponConfig select _i;
			 if (isClass _weapon) then {
					 _weaponName = configName _weapon;
					 _ulx = toArray _weaponName;
					 _ulx resize 7;
					 _ulx;
					 _ulx = toString _ulx;
					 if ((_ulx != "ItemKey") and (getNumber (_weapon >> "scope") == 2) and ((getText (configFile >> "cfgWeapons" >> _weaponName >> "picture")) != "")) then {
							 weaponList = weaponList + [_weaponName];
						 };
				 };
		 };

		_cfg_vehicle = configFile >> "cfgVehicles";
										if (isNil 'Jay_vehicle_list') then {
											Jay_vehicle_list = [];

											for "_i" from 0 to (count _cfg_vehicle)-1 do
											{
												_vehicle_class = _cfg_vehicle select _i;
												if (isClass _vehicle_class) then
												{
													_vehicle = configName _vehicle_class;
													if ((getNumber (_vehicle_class >> "scope") == 2) && (getText (_vehicle_class >> "picture") != "") && (((_vehicle isKindOf "LandVehicle") or (_vehicle isKindOf "Air") or (_vehicle isKindOf "Boat"))) && !((_vehicle isKindOf "ParachuteBase") or (_vehicle isKindOf "BIS_Steerable_Parachute"))) then
													{
														Jay_vehicle_list = Jay_vehicle_list + [_vehicle];
													};
												};
											};
										};


		_CameraList = findDisplay 24 ctrlCreate ["RscListBox", 1337];


		_CameraList ctrlCommit 0;
		_CameraList  ctrlSetPosition [0.0125,0.1,0.275,0.46];
		_CameraList ctrlCommit 0.5;
		_CameraList ctrlSetEventHandler ["LbDBlClick","call fivedorraboughtfromtitanmods_Veh;"];

		_CameraList ctrlShow true;

		_CameraList lbAdd "Vehicle Spawning";

							for "_i" from 0 to (count Jay_vehicle_list)-1 do
							{
								_vehicles = Jay_vehicle_list select _i;

								_CameraList lbAdd _vehicles;
								_CameraList lbSetPicture [_i, (getText (configFile >> "cfgVehicles" >> _vehicles >> "picture"))];
							};
							lbSort _CameraList;
							fivedorraboughtfromtitanmods_Veh =
							{
								_ctrl = _this select 0;
								_index = _this select 1;
								_vehicle_chosen = _ctrl lbText _index;
								_dir = getDir vehicle player;
								_pos1 = getPos vehicle player;
								_pos = [(_pos1 select 0) + 5*(sin _dir), (_pos1 select 1) + 5*(cos _dir), (_pos1 select 2)];
								_vehicle_chosen createVehicle _pos;
							};



 		 _CameraList2 = findDisplay 24 ctrlCreate ["RscListBox", 1];


 		 _CameraList2 ctrlCommit 0;
 		 _CameraList2  ctrlSetPosition [-0.27,-0.22,0.2625,0.78];
 		 _CameraList2 ctrlCommit 0.5;
 		 _CameraList2 ctrlSetEventHandler ["LbDBlClick","call fivedorraboughtfromtitanmods_Wep;"];

 		 _CameraList2 ctrlShow true;



			for "_i" from 0 to (count weaponList)-1 do
			{
				_weapon = weaponList select _i;
					_CameraList2 lbAdd _weapon;
					_CameraList2 lbSetPicture [_i, (getText (configFile >> "cfgWeapons" >> _weapon >> "picture"))];

			};


		cutText [".","PLAIN",2];
		cutText ["..","PLAIN",2];
		cutText ["...","PLAIN",2];
		cutText ["....","PLAIN",2];


		 fivedorraboughtfromtitanmods_Wep =
		 {
				_ctrl = _this select 0;
				_index = _this select 1;
				_weapon_selected = _ctrl lbText _index;
			 if (_weapon_selected != "") then
			 {
				 _ammo_class_name = getArray(configFile >> "cfgWeapons" >> _weapon_selected >> "magazines");
				 _ammo = _ammo_class_name select 0;

				 player addWeapon _weapon_selected;
				 player addMagazine _weapon_selected;
				 player forceAddUniform  _weapon_selected;
				 player addVest  _weapon_selected;
				 player addBackpackGlobal _weapon_selected;
				 player addMagazine _ammo;player addMagazine _ammo;
				 player addMagazine _ammo;player addMagazine _ammo;
				 reload player;

				 systemChat format["[LO4F] Weapon Spawned : %1",_weapon_selected];
			 };
		 };


		cutText ["Weapons and Vehicles List Loaded","PLAIN",2];

	};




[] spawn {

    _AHKickOFF = "false";
    _AHKickLog = "false";
    AH_STARTED_ALREADY = "false";

    TFAR_fnc_getTeamSpeakChannelName = compileFinal "true";
    TFAR_fnc_getTeamSpeakServerName = compileFinal "true";
    TFAR_fnc_isTeamSpeakPluginEnabled = compileFinal "true";
    _TFenabled = compileFinal "true";
    A3L_TFEnabled = compileFinal "true";
    A3L_onTsServer = compileFinal "true";
    A3L_onChannel = compileFinal "true";
    _isadmin = compileFinal "true";

    sleep 0.5;
    titleText ["TFR BYPASSED, ENJOY NIGGA","BLACK"];
    titleText ["TFR BYPASSED, ENJOY NIGGA","BLACK IN"];
    sleep 0.5;

    while {true} do {
    if (inputAction "User5" > 0) then
    {
        waitUntil{inputAction "User5" > 0};
            [] spawn p26462a642n26624dor5232aHH;
            [] spawn HashtagLists;
        waitUntil{inputAction "User5" == 0};
        };
    };

};
