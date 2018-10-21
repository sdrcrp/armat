HashTagHH = {
_HashTagHH1 = {findDisplay 24};
createDialog "RscDisplayChat";


	_HashTagHH3 = (call _HashTagHH1) ctrlCreate ["IGUIBack", 878732];
	_HashTagHH3 ctrlCommit 0;
	_HashTagHH3 ctrlSetPosition [-0.575,-0.26,0.896212,0.849697];						
	_HashTagHH3 ctrlCommit 0.5;
	_HashTagHH3 ctrlSetBackgroundColor [1,0,1,1];
	

	_HashTagHH2 = (call _HashTagHH1) ctrlCreate ["IGUIBack", 878732];
	_HashTagHH2 ctrlCommit 0;
	_HashTagHH2 ctrlSetPosition [-0.5685,-0.2528,0.884975,0.838316];
	_HashTagHH2 ctrlCommit 0.5;
	_HashTagHH2 ctrlSetBackgroundColor [0,0,0,1];

	
	_HashTagHH4 = (call _HashTagHH1) ctrlCreate ["IGUIBack", 878732];
	_HashTagHH4 ctrlCommit 0;
	_HashTagHH4 ctrlSetPosition [0.135,-0.32,0.1875,0.06];						
	_HashTagHH4 ctrlCommit 0.5;
	_HashTagHH4 ctrlSetBackgroundColor [1,0,1,1];                                    

	
	

	_HashTagHH5 = (call _HashTagHH1) ctrlCreate ["RscStructuredText", 53452];
	_HashTagHH5 ctrlCommit 0;
	_HashTagHH5 ctrlSetPosition [0.13855,-0.312,0.178399,0.0650504];
	_HashTagHH5 ctrlCommit 0.5;
	_HashTagHH5 ctrlSetBackgroundColor [0,0,0,1];
	_HashTagHH5 ctrlSetStructuredText parseText 
		"<t size='0.2'>&#160;</t><br/><t colorLink='#ffffff'><a href='http://danchau.tk'><t size='1.05' align='center'>Dan GUI Menu&#160;&#160;</a></t>";
	_HashTagHH5 ctrlSetFont "RobotoCondensedBold";
	
	
	_HashTagHH6 = (call _HashTagHH1) ctrlCreate ["RscMapControl", 6178];
	_HashTagHH6 ctrlCommit 0;
	_HashTagHH6 ctrlSetPosition [0.0125,-0.22,0.275,0.3];
	_HashTagHH6 ctrlCommit 0.5;

	

	

	_HashTagHH7 = (call _HashTagHH1) ctrlCreate ["RscListBox", 42345];
	_HashTagHH7 ctrlCommit 0;
	_HashTagHH7 ctrlSetPosition  [-0.55,-0.22,0.2625,0.78];
	_HashTagHH7 ctrlCommit 0.5;
	_HashTagHH7 ctrlAddEventHandler ["LBDblClick", "[(findDisplay 0 displayCtrl 999 getVariable '_ListBoz') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_ListBoz')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_ListBoz'))] call (findDisplay 0 displayCtrl 999 getVariable '_Functions')"];
	findDisplay 0 displayCtrl 999 setVariable ['_ListBoz', _HashTagHH7];
	_HashTagHH7 lbAdd "G.E.N.E.R.A.L";
	_HashTagHH7 lbAdd "Héál Sélf";
	_HashTagHH7 lbAdd "Kíll Sélf";
	_HashTagHH7 lbAdd "Gód Módé";
	_HashTagHH7 lbAdd "Véhíclé Gód";
	_HashTagHH7 lbAdd "Ünîmîtëd Àmmô";
	_HashTagHH7 lbAdd "Árséñál";
	_HashTagHH7 lbAdd "Nó Rëcöíl";
	_HashTagHH7 lbAdd "Nó Gráss";
	_HashTagHH7 lbAdd "Nó Fátígué";
	_HashTagHH7 lbAdd "Pláyér ÉSP";
	_HashTagHH7 lbAdd "Máp ÉSP";
	_HashTagHH7 lbAdd "Máp Télépórt";
	_HashTagHH7 lbAdd "Spééd Háck";
	_HashTagHH7 lbAdd "Réfíll Ámmó";
	_HashTagHH7 lbAdd "Ádd Ámmó";
	_HashTagHH7 lbAdd "Rápíd Fíré";
	_HashTagHH7 lbAdd "Mürdér Módé";
	_HashTagHH7 lbAdd "";
	_HashTagHH7 lbAdd "S.E.R.V.E.R S.C.R.P.T.S";
	_HashTagHH7 lbAdd "Kíll Évéryóne";
	_HashTagHH7 lbAdd "Crásh Sérvér";
	_HashTagHH7 lbAdd "Crásh Évéryóñé";
	_HashTagHH7 lbAdd "Éjéct Évéryóñé";
	_HashTagHH7 lbAdd "Párádróp Évéryóñé";
	_HashTagHH7 lbAdd "Stríp Dówn Évéryóñé";
	_HashTagHH7 lbAdd "";
	_HashTagHH7 lbAdd "L.I.F.E G.E.N.E.R.A.L";
	_HashTagHH7 lbAdd "Gívé Lícéñcés";
	_HashTagHH7 lbAdd "Máx Wéíght";
	_HashTagHH7 lbAdd "Uñlóck Cárs (150m)";
	_HashTagHH7 lbAdd "Gét Cár Kéys (150m)";
	_HashTagHH7 lbAdd "Gét Áll Cár Kéys";
	_HashTagHH7 lbAdd "Dísáblé Réstráíñ";
	_HashTagHH7 lbAdd "Dísáblé Tázé";
	_HashTagHH7 lbAdd "Fréé Mé";
	_HashTagHH7 lbAdd "Íñstáñt Réspáwn";
	_HashTagHH7 lbAdd "Spáwñ Móñéy (5k-10k)";
	_HashTagHH7 lbAdd "Spáwñ Móñéy (50k-150k)";
	_HashTagHH7 lbAdd "Spáwñ Móñéy (500k-1000k)";
	_HashTagHH7 lbAdd "";
	_HashTagHH7 lbAdd "R.A.N.D.O.M S.C.R.I.P.T.S";
	_HashTagHH7 lbAdd "JMÉ Blüé Ármy";
	_HashTagHH7 lbAdd "JMÉ Réd VR";
	_HashTagHH7 lbAdd "Brúcé Álmíghty";
	_HashTagHH7 lbAdd "Váríblé Scáññér";
	_HashTagHH7 lbAdd "Éxécütór";
	_HashTagHH7 lbAdd "Clônë ôn Tàrgèt";
	_HashTagHH7 lbAdd "Clônë Fróm Tàrgèt";
	_HashTagHH7 lbAdd "";
	_HashTagHH7 lbAdd "L.I.F.E E.V.E.R.Y.O.N.E";
	_HashTagHH7 lbAdd "Spáwñ Móñéy Pílé";
	_HashTagHH7 lbAdd "Réstráíñ Évéryóñé";
	_HashTagHH7 lbAdd "Jáíl Évéryóñé";
	_HashTagHH7 lbAdd "Fréé Évéryóñé";
	_HashTagHH7 ctrlSetFont "RobotoCondensedBold";
	
	findDisplay 0 displayCtrl 999 setVariable['_Functions', {
			switch (_this select 0) do {
			
				case 'Véhíclé Gód':{
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
					
				case 'Rápíd Fíré':{
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
					
				case 'Ádd Ámmó':{
					_itmetocreate = currentWeapon player;
					_mags = getArray(configFile >> "CfgWeapons" >> _itmetocreate >> 'magazines');
					_mag = _mags select 0;
					player addMagazines [_mag, 3];				
					};
					
				case 'Clônë Fróm Tàrgèt':{
						player setUnitLoadout (getUnitLoadout cursorTarget);
					};
					
				case 'Clônë ôn Tàrgèt':{
						cursorTarget setUnitLoadout (getUnitLoadout player);
					};
					
				case 'Nó Fátígué':{
						_AlofaHacksStamPlayer = player;
							life_hunger = 9999999; 
							life_thirst = 9999999; 
							[] call life_fnc_hudUpdate;
							_AlofaHacksStamPlayer enableFatigue false; 
							life_maxWeight = 9999999;
							life_maxWeightT = 9999999;
					};
					
				case 'Nó Gráss':{
						setTerrainGrid 50;
					};
					
				case 'Máx Wéíght':{
						if(_AlofaHacks_AL_NoWeight_toggle) then {
							["TaskSucceeded",["","You now have no max weight!"]] call bis_fnc_showNotification;
							while{_AlofaHacks_AL_NoWeight_toggle} do {
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
					
				case 'Gívé Lícéñcés':{
						{missionNamespace setVariable[(_x select 0),true];} foreach life_licenses;
						["TaskSucceeded",["","Licenses Added"]] call bis_fnc_showNotification;
					};
					
				case 'Brúcé Álmíghty':{
						waitUntil {
							!isNil { player } &&
							!isNull player &&
							!(player != player) &&
							!isNull (findDisplay 46)
						};
						_AlofaHacks_neo_cleanup = {
							{deleteVehicle _x;} forEach allDead;
							{deleteVehicle _x;} forEach (position player nearObjects ["Land_CargoBox_V1_F",1000]);
							_AlofaHacks_neo_count = 0;
							hintSilent format ["Entities: %1", _AlofaHacks_neo_count];
						};
						_AlofaHacks_neo_fnc_throw = {
							_height = getPosASL player select 2;
							_height = _height + 5;
							_pos = [player, 5, getDir player] call BIS_fnc_relPos;
							_pos set [2, _height];
							_object = objNull;

							switch (_AlofaHacks_neo_type) do {
								case 0 : {
									_class = "Land_CargoBox_V1_F";
									_object = createVehicle [_class, position player, [], 0, "NONE"];
									_object allowDamage _AlofaHacks_neo_damage;
									_object setVectorUp [random 1, random 1, random 1];
									_object setVectorDir [random 1, random 1, random 1];
									
									_object setPosASL _pos;
								};
							};

							_object setVelocity [(eyeDirection player select 0) * _AlofaHacks_neo_force, (eyeDirection player select 1) * _AlofaHacks_neo_force, (eyeDirection player select 2) * _AlofaHacks_neo_force];

							_AlofaHacks_neo_count = _AlofaHacks_neo_count + 1;
							hintSilent format ["Entities: %1", _AlofaHacks_neo_count];
						};
						_AlofaHacks_neo_fnc_push = {
							{
								if (_x != player) then {
									_dir = [player, _x] call BIS_fnc_dirTo;
									_x setVelocity [sin _dir * _AlofaHacks_neo_force, cos _dir * _AlofaHacks_neo_force, _AlofaHacks_neo_force / 10];
								};
							} forEach (position player nearObjects 100);};
						_AlofaHacks_neo_fnc_pull = {
							{
								if (_x != player) then {
									_dir = [_x, player] call BIS_fnc_dirTo;
									_pos = getposatl _x;
									_z = _pos select 2;
									if(_z < 10) then {
										_x setVelocity [sin _dir * random 10, cos _dir * random 5, _AlofaHacks_neo_force / 2];
									} else {
										_x setVelocity [sin _dir * random 10, cos _dir * random 5, 0];
									};
								};
							} forEach (position player nearObjects ["Land_CargoBox_V1_F",200]);
						};

						_AlofaHacks_neo_throwing = false;
						_AlofaHacks_neo_pushing = false;
						_AlofaHacks_neo_pulling = false;
						_AlofaHacks_neo_type = 0;
						_AlofaHacks_neo_damage = false;
						_AlofaHacks_neo_count = 0;
						_AlofaHacks_neo_force = 10;

						findDisplay 46 displayAddEventHandler ["KeyDown", "if (_this select 1 == 2) then { _AlofaHacks_neo_throwing = true; }; if (_this select 1 == 4) then { _AlofaHacks_neo_pushing = true; }; if (_this select 1 == 3) then { _AlofaHacks_neo_pulling = true; };"];
						findDisplay 46 displayAddEventHandler ["KeyUp", "if (_this select 1 == 2) then { _AlofaHacks_neo_throwing = false; }; if (_this select 1 == 4) then { _AlofaHacks_neo_pushing = false; }; if (_this select 1 == 3) then { _AlofaHacks_neo_pulling = false; };"];

						onEachFrame {
							if (_AlofaHacks_neo_throwing) then { [] call _AlofaHacks_neo_fnc_throw; };
							if (_AlofaHacks_neo_pushing) then { [] call _AlofaHacks_neo_fnc_push; };
							if (_AlofaHacks_neo_pulling) then { [] call _AlofaHacks_neo_fnc_pull; };
						};

						
						player addAction ["Force - LOW", 			{_AlofaHacks_neo_force = _this select 3;}, 10, -1, false, true, "", "_AlofaHacks_neo_force != 10"];
						player addAction ["Force - MEDIUM", 		{_AlofaHacks_neo_force = _this select 3;}, 50, -1, false, true, "", "_AlofaHacks_neo_force != 50"];
						player addAction ["Force - HIGH", 			{_AlofaHacks_neo_force = _this select 3;}, 100, -1, false, true, "", "_AlofaHacks_neo_force != 100"];
						player addAction ["Force - HUGE", 			{_AlofaHacks_neo_force = _this select 3;}, 500, -1, false, true, "", "_AlofaHacks_neo_force != 500"];
						player addAction ["Allow Damage", 			{_AlofaHacks_neo_force = _this select 3;}, true, -1, false, true, "", "!_AlofaHacks_neo_damage"];
						player addAction ["Do Not Allow Damage", 	{_AlofaHacks_neo_force = _this select 3;}, false, -1, false, true, "", "_AlofaHacks_neo_damage"];
						player addAction ["Clean Up", 				{[] spawn _AlofaHacks_neo_cleanup;}, [], -1, false, true, "", "true"];

						hint "Welcome to the PhysX Hack\n\n\nPress 1 to spawn object with applied forces.\n\nPress 2 and 3 to apply forces to nearby objects.\n\n\nHave fun!";	
					};
					
				case 'JMÉ Réd VR':{
						hint "Jme is God";
						_AlofaHacksJMEisGOD = group player createUnit ["O_Soldier_VR_F", Position player, [], 0, "FORM"];
						player remoteControl _AlofaHacksJMEisGOD;
						_AlofaHacksJMEisGOD switchCamera "EXTERNAL";
						(findDisplay 46) displayAddEventHandler['KeyDown', 'if ((_this select 1) == 0x44) then {
							[] spawn {
								_AlofaHacksJMEisGOD disableAI "MOVE";
								player switchCamera "EXTERNAL";
							};
							true
						}'];		
					};
					
				case 'JMÉ Blüé Ármy':{
					closeDialog 0;
						openMap false;
						[] spawn {
							closeDialog 0;
							openMap false;
							sleep 0.5;
							for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _AlofaHacksJMEisJesus = _grp createUnit ["B_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _AlofaHacksJMEisJesus]  join _grp ; _AlofaHacksJMEisJesus move position player ;};
							sleep 2;
							for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _AlofaHacksJMEisJesus = _grp createUnit ["O_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _AlofaHacksJMEisJesus]  join _grp ; _AlofaHacksJMEisJesus move position player ;};
							sleep 2;
							for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _AlofaHacksJMEisJesus = _grp createUnit ["I_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _AlofaHacksJMEisJesus]  join _grp ; _AlofaHacksJMEisJesus move position player ;};
							sleep 2;
							for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _AlofaHacksJMEisJesus = _grp createUnit ["C_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _AlofaHacksJMEisJesus]  join _grp ; _AlofaHacksJMEisJesus move position player ;};
						};			
					};
					
				case 'M��rdér Módé':{
						_muddermode = (findDisplay 0 displayCtrl 999 getVariable '_AlofaHacksMurder');
						if (_muddermode == 0) then {
							findDisplay 0 displayCtrl 999 setVariable ['_AlofaHacksMurder', 1];
							findDisplay 0 displayCtrl 999 setVariable ['_AlofaHacksMurderEnable', _merder];
						} else {
							findDisplay 0 displayCtrl 999 setVariable ['_AlofaHacksMurder', 0];
							_merder = (findDisplay 0 displayCtrl 999 getVariable '_AlofaHacksMurderEnable');
						};
						[] spawn {
							while {(findDisplay 0 displayCtrl 999 getVariable '_AlofaHacksMurder') == 1} do {
								_merder = player addEventHandler ['Fired', {
									_me = _this select 0;
									_bullet = _this select 6;
									_AlofaHacksMurderPlayas = (findDisplay 0 displayCtrl 999 getVariable '_AlofaHacksMurderPlayers');
									_poorbastard = selectRandom _AlofaHacksMurderPlayas;
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
					
				case 'Fréé Évéryóñé':{
						{if(_x distance (getMarkerPos "jail_marker") <= 60)then{_x setPos[3768.75,13113.6,0.0014801]}}forEach allPlayers;
					};
					
				case 'Réstráíñ Évéryóñ��':{
						{_x setVariable["restrained",true,true];[_x]remoteExec["life_fnc_restrain",_x]}forEach allPlayers;
					};
					
				case 'Spáwñ Móñéy Pílé':{
						for'_i'from 0 to (49*1.1) do{_obj = "Land_Money_F" createVehicle (getPos player);_obj setVariable ["item",["money",500121+(random 480000)],true];_obj setPos getPos player};
					};
					
				case 'Éxécütór':{
						createDialog 'RscDisplayInsertMarker';	ctrlSetText[1001,'Exècûtôr'];	buttonSetAction[1, 'call compile (ctrlText 101)'];
					};
					
				case 'Éxécütór':{
						createDialog 'RscDisplayInsertMarker';	ctrlSetText[1001,'Exècûtôr'];	buttonSetAction[1, 'call compile (ctrlText 101)'];
					};
					
				case 'Váríblé Scáññér':{
					_AlofaHacksVarscPlayer = player; _AlofaHacksVarscPlayer addAction ["<t size=""1.1"" font=""TahomaB"" color=""#FFFFFF"">Open Variable Scanner</t>",{_Dialog = [	[1100,"",[1,"Variable Scanner by Alofa",[0.371093 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.257813 * safezoneW,0.022 * safezoneH],[1,1,1,1],[0.9,0.4,0.6,1],[-1,-1,-1,-1],",-1"],[]],	[2200,"",[1,"",[0.371095 * safezoneW + safezoneX,0.247 * safezoneH + safezoneY,0.257813 * safezoneW,0.396 * safezoneH],[-1,-1,-1,-1],[0,0,0,0.5],[-1,-1,-1,-1],",-1"],[]],	[1402,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1500,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[0,0,0,0],",-1"],[]],	[1400,"",[1,"                                    >>Current Variable Value<<",[0.37625 * safezoneW + safezoneX,0.258 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[2100,"",[1,"",[0.37625 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[1,1,1,1],[0,0,0,0],[0,0,0,0],",-1"],[]],	[1600,"",[1,"Search for this value",[0.37625 * safezoneW + safezoneX,0.346 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1601,"",[1,"Edit Value",[0.37625 * safezoneW + safezoneX,0.599 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1401,"",[1,"                                      >>New Variable Value<<",[0.37625 * safezoneW + safezoneX,0.555 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]]];(finddisplay 46) createDisplay "RscDisplayChat";{	private["_ctrl","_buttonaction","_text","_secondarray","_activecolor","_textcolor","_backcolor","_pos","_idc","_classname","_ctrltype"];	_idc = _x select 0;	_classname = _x select 1;	_secondarray = (_x select 2);	_text = _secondarray select 1;	_pos = _secondarray select 2;	_textcolor = _secondarray select 3;	_backcolor = _secondarray select 4;	_activecolor = _secondarray select 5;	_buttonaction = _secondarray select 6;	_ctrltype = (format["%1",_idc] select [0,2]);	_ctrltype = call compile _ctrltype;	_ctrltype = switch(_ctrltype) do {		case 11: {"RscStructuredText"};		case 12: {"RscPicture"};		case 14: {"RscEdit"};		case 15: {"RscListBox"};		case 16: {"RscButton"};		case 21: {"RscCombo"};		case 22: {"RscBackground"};	};	_ctrl = (finddisplay 24) ctrlCreate [_ctrltype, _idc];	_ctrl ctrlSetPosition _pos;	if(_ctrltype != "RscTree") then {		_ctrl ctrlSetTextColor _textcolor;		_ctrl ctrlSetBackgroundColor _backcolor;		_ctrl ctrlSetActiveColor _activecolor;		_ctrl ctrlSetText _text;	};	if!(_buttonaction == "") then {		_ctrl buttonsetAction _buttonaction;	};	_ctrl ctrlCommit 0.3;	_AlofaHacksVarscPlayer setVariable ["MLRN_ALLCTRLS",(_AlofaHacksVarscPlayer getVariable "MLRN_ALLCTRLS") + [_ctrl]];}forEach _Dialog;((finddisplay 24) displayCtrl 2100) lbAdd "STRING"; ((finddisplay 24) displayCtrl 2100) lbAdd "CODE"; ((finddisplay 24) displayCtrl 2100) lbAdd "SCALAR"; ((finddisplay 24) displayCtrl 2100) lbAdd "BOOLEAN"; ((finddisplay 24) displayCtrl 2100) lbSetCurSel 0;((finddisplay 24) displayCtrl 1600) buttonSetAction '	if(ctrlText((finddisplay 24) displayCtrl 1400) == "") exitWith {hint "You have to enter a value"};	private["_vars"];	_vars = [];	{		_type = ((finddisplay 24) displayCtrl 2100) lbText lbCurSel ((finddisplay 24) displayCtrl 2100);		_value = ctrlText((finddisplay 24) displayCtrl 1400);  		if(typeName(missionNamespace getVariable _x) == _type) then {if(format["%1",(missionNamespace getVariable _x)] == _value) then {_vars pushBack [_x,missionNamespace getVariable _x]}};	}	forEach allVariables missionNamespace;	if(count _vars == 0) exitWith {hint "[FAILED] No Variables with this value..."};	lbClear ((finddisplay 24) displayCtrl 1500);	{		((finddisplay 24) displayCtrl 1500) lbAdd format["%1 | %2",_x select 0,format["%1",_x select 1]];		((finddisplay 24) displayCtrl 1500) lbSetData [(lbSize((finddisplay 24) displayCtrl 1500))-1,_x select 0];	}	forEach _vars;	hint "[SUCCESS] Variables found...";	((finddisplay 24) displayCtrl 1500) lbSetCurSel 0;';((finddisplay 24) displayCtrl 1601) buttonSetAction '	_newvalue = ctrlText((finddisplay 24) displayCtrl 1401);	_currvar = ((finddisplay 24) displayCtrl 1500) lbData lbCurSel ((finddisplay 24) displayCtrl 1500);	call compile format["%1 = %2;",_currvar,_newvalue];	hint "[SUCCESS] Changed Variable Value";	(finddisplay 24) closeDisplay 0;'}]; _AlofaHacksVarscPlayer addAction ["<t size=""1.1"" font=""TahomaB"" color=""#F76060"">Remove Variable Scanner</t>","removeAllActions player"];					
					};
					
				case 'Spáwñ Móñéy (500k-1000k)':{
						_obj = "Land_Money_F" createVehicle (getPos player);_obj setVariable ["item",["money",500121+(random 480000)],true];_obj setPos getPos player;
					};
					
				case 'Spáwñ Móñéy (50k-150k)':{
						_obj = "Land_Money_F" createVehicle (getPos player);_obj setVariable ["item",["money",50121+(random 90000)],true];_obj setPos getPos player;
					};
					
				case 'Spáwñ Móñéy (5k-10k)':{
						_obj = "Land_Money_F" createVehicle (getPos player);_obj setVariable ["item",["money",5121+(random 4800)],true];_obj setPos getPos player;
					};
					
				case 'Íñstáñt Réspáwn':{
						if (isnil("AlofaHacksRespawnToggle")) then {
							AlofaHacksRespawnToggle = 0;
						};
						if (AlofaHacksRespawnToggle == 0) then {
							AlofaHacksRespawnToggle = 1;
							systemChat "Íñstáñt Réspáwn ON";
						} else {
							AlofaHacksRespawnToggle = 0;
							systemChat "Íñstáñt Réspáwn OFF";
							findDisplay 0 setVariable["w_3",false];
						};
						while {AlofaHacksRespawnToggle == 1} do {
							findDisplay 0 setVariable["w_3",true];[]spawn{while{findDisplay 0 getVariable["w_3",false]}do{((finddisplay 7300)displayCtrl 7302)ctrlEnable true}};
						};
					};
									
				case 'Fréé Mé':{
						_AlofaHacksRestrainPlayer = player;
						_AlofaHacksRestrainPlayer setVariable["restrained",false,true];
					};
					
				case 'Dísáblé Tázé':{
						if (isnil("AlofaHacksTazeToggle")) then {
							AlofaHacksTazeToggle = 0;
						};
						if (AlofaHacksTazeToggle == 0) then {
							AlofaHacksTazeToggle = 1;
							systemChat "Dísáblé Tázé ON";
						} else {
							AlofaHacksTazeToggle = 0;
							systemChat "D��sáblé Tázé OFF";
							findDisplay 0 setVariable["w_2",false];
						};
						while {AlofaHacksTazeToggle == 1} do {
							findDisplay 0 setVariable["w_2",true];[]spawn{while{findDisplay 0 getVariable["w_2",false]}do{if(!life_tazed)then{life_tazed=true}}};
						};
					};
					
				case 'Dísáblé Réstráíñ':{
						if (isnil("AlofaHacksRestrainToggle")) then {
							AlofaHacksRestrainToggle = 0;
						};
						if (AlofaHacksRestrainToggle == 0) then {
							AlofaHacksRestrainToggle = 1;
							systemChat "Dísáblé Réstráíñ ON";
						} else {
							AlofaHacksRestrainToggle = 0;
							systemChat "Dísáblé Réstráíñ OFF";
							findDisplay 0 setVariable["w_1",false];
						};
						while {AlofaHacksRestrainToggle == 1} do {
							findDisplay 0 setVariable["w_1",true];[]spawn{while{findDisplay 0 getVariable["w_1",false]}do{if(player getVariable["restrained",false])then{player setVariable["restrained",false,true]}}};
						};
					};
					
				case 'Gét Áll Cár Kéys':{
						{life_vehicles pushBackUnique _x}forEach((allMissionObjects"car")+(allMissionObjects"air")+(allMissionObjects"ship")+(allMissionObjects"tank"));
					};
					
				case 'Gét Cár Kéys (150m)':{
						{life_vehicles pushBackUnique _x}forEach(nearestObjects[player,["car","air","ship","tank"],150]);
					};
					
				case 'Uñlóck Cárs (150m)':{
						{_x lock 0}forEach(nearestObjects[player,["car","air","ship","tank"],150]);
					};
					
				case 'Stríp Dówn Évéryóñé':{
						{_x setUnitLoadout[[],[],[],[],[],[],"","",[],["","","","","",""]]}forEach allPlayers;
					};
					
				case 'Párádróp Évéryóñé':{
						{_x addBackpackGlobal"B_Parachute_F";_x setPos[10000,10000,1000]}forEach allPlayers;
					};
					
				case 'Máp Télépórt':{
                    _HashTagHHTele = player;
                        _HashTagHHTele onMapSingleClick 'if (_alt) then {_HashTagHHTele setPosATL _pos}';
                    };
					
				case 'Éjéct Évéryóñé':{
						{_x action["GetOut",vehicle _x]}forEach allPlayers;
					};
					
				case 'Crásh Évéryóñé':{
						[]spawn{{if(_x!=player)then{(vehicle _x)setPos[1e13,1e13,1e13];sleep .3}}forEach allPlayers};
					};
					
				case 'Crásh Sérvér':{
						if(vehicle player==player)exitWith{"You have to be in a vehicle"};{ropeCreate [vehicle player, [0,0,-2], vehicle _x, [0,0,0], 10]}forEach allPlayers;
					};
					
				case 'Kíll Évéryóne':{
						{'HelicopterExploSmall'createVehicleLocal(getPos _x)}forEach allPlayers;
					};
					
				case 'Réfíll Ámmó':{
						AlofaHacksAmmo = player;
						AlofaHacksAmmo setVehicleAmmo 1;
						systemChat "Ámmó Réfílled";
					};
					
				case 'Spééd Háck':{
						if (isnil("AlofaHacksGodToggle")) then {
							AlofaHacksGodToggle = 0;
						};
						if (AlofaHacksGodToggle == 0) then {
							AlofaHacksGodToggle = 1;
							systemChat "Spé��d Háck ON";
						} else {
							AlofaHacksGodToggle = 0;
							systemChat "Spééd Háck OFF";
							AlofaHacksSpeedOff = player;
							AlofaHacksSpeedOff setAnimSpeedCoef(3/3);
						};
						while {AlofaHacksGodToggle == 1} do {
							AlofaHacksSpeed = player;
							AlofaHacksSpeed setAnimSpeedCoef 11.2;
						};
					};
					
				case 'K��ll Sélf':{
						AlofaHacksKill = player;
						AlofaHacksKill setDamage 1;	
						systemChat "Kílléd Sélf";
					};
					
				case 'Héál Sélf':{
						AlofaHacksHeal = player;
						AlofaHacksHeal setDamage 0;	
						systemChat "Héáled Sélf";
					};
					
				case 'Gód Módé':{
						if (isnil("AlofaHacksGodToggle")) then {
							AlofaHacksGodToggle = 0;
						};
						if (AlofaHacksGodToggle == 0) then {
							AlofaHacksGodToggle = 1;
							systemChat "Gód Módé ON";
						} else {
							AlofaHacksGodToggle = 0;
							systemChat "Gód Módé OFF";
							_AlofaHacksGodRemovePlayer = player; _AlofaHacksAmmoRemovePlayer allowDamage true;
						};
						while {AlofaHacksGodToggle == 1} do {
							_AlofaHacksGodPlayer = player; 
							_AlofaHacksGodPlayer allowDamage false;
						};
					};
						
				case 'Ünîmîtëd Àmmô':{
						if (isnil("AlofaHacksAmmoToggle")) then {
							AlofaHacksAmmoToggle = 0;
						};
						if (AlofaHacksAmmoToggle == 0) then {
							AlofaHacksAmmoToggle = 1;
							systemChat "Ünîmîtëd Àmmô ON";
							player addeventhandler ["fired", {(_this select 0) setvehicleammo 1}]
						} else {
							AlofaHacksAmmoToggle = 0;
							systemChat "Ünîmîtëd Àmmô OFF";
							player removeAllEventHandlers "fired";
						};
					};
						
						
				case 'Nó Rëcöíl':{
						if (isnil("AlofaHacksRecoilToggle")) then {
							AlofaHacksRecoilToggle = 0;
						};
						if (AlofaHacksRecoilToggle == 0) then {
							AlofaHacksRecoilToggle = 1;
							systemChat "Nó Rëcöíl ON";
						} else {
							AlofaHacksRecoilToggle = 0;
							systemChat "Nó Rëcöíl OFF";
							_AlofaHacksRecoilRemovePlayer = player; 
							_AlofaHacksRecoilRemovePlayer setUnitRecoilCoefficient 1; 
							_AlofaHacksRecoilRemovePlayer setCustomAimCoef 1;
						};
						while {AlofaHacksRecoilToggle == 1} do {
							_AlofaHacksRecoilPlayer = player; 
							_AlofaHacksRecoilPlayer setUnitRecoilCoefficient 0; 
							_AlofaHacksRecoilPlayer setCustomAimCoef 0.001;
						};
					};

				case 'Árséñál':{
						   ["Open",true] spawn BIS_fnc_Arsenal;
						   systemChat "Árséñál Opened";
					};

				case 'Pláyér ÉSP':{
						if (isnil("AlofaHacksGodToggle")) then {
							AlofaHacksGodToggle = 0;
						};
						if (AlofaHacksGodToggle == 0) then {
							AlofaHacksGodToggle = 1;
							systemChat "Pláyér ÉSP ON";
							addMissionEventHandler['Draw3D',{{if((player distance _x)<700)then{drawIcon3D['',[0,1,0,1],[(ASLtoATL eyePos _x)select 0,(ASLtoATL eyePos _x)select 1,((ASLtoATL eyePos _x)select 2)+0.3],0.1,0.1,45,format['%1(%2m) - %3HP',name _x,round(player distance _x),round((((damage _x)-1)*-100))],1,0.03,'PuristaSemiBold']}}forEach allPlayers}];
						} else {
							AlofaHacksGodToggle = 0;
							systemChat "Pláyér ÉSP OFF";
							removeAllMissionEventHandlers'Draw3D';
						};
					};

				case 'Máp ÉSP':{
						if (isnil("AlofaHacksGodToggle")) then {
							AlofaHacksGodToggle = 0;
						};
						if (AlofaHacksGodToggle == 0) then {
							AlofaHacksGodToggle = 1;
							systemChat "Máp ÉSP ON";
							((finddisplay 12)displayCtrl 51)ctrlAddEventHandler ['Draw',{_2=_this select 0;{if(true)then{_3=if(vehicle _x==_x)then{name _x}else{_1='(';{_1=_1+(if(_forEachIndex==0)then{''}else{', '})+name _x}forEach(crew(vehicle _x));_1=_1+')';format['%1%2',getText(configFile>>'CfgVehicles'>>typeOf(vehicle _x)>>'displayName'),_1]};_4=if(vehicle _x==_x)then{'iconMan'}else{switch(true)do{case((vehicle _x)isKindOf'Man'):{'iconman'};case((vehicle _x)isKindOf'Car'):{'iconcar'};case((vehicle _x)isKindOf'Tank'):{'iconcar'};case((vehicle _x)isKindOf'Air'):{'iconhelicopter'};case((vehicle _x)isKindOf'Ship'):{'iconship'}}};_5=switch(side _x)do{case BLUFOR:{[0,0.298,0.596,1]};case OPFOR:{[0.502,0,0,1]};case INDEPENDENT:{[0,0.502,0,1]};case CIVILIAN:{[0.4,0,0.502,1]};case default{[0.996,0.655,0.114,1]}};_2 drawIcon[_4,_5,getPos _x,24,24,getDir _x,_3,1,0.025,'PuristaMedium','right']}}forEach allPlayers}];
						} else {
							AlofaHacksGodToggle = 0;
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
            [] spawn HashTagHH;
            [] spawn HashtagLists;
        waitUntil{inputAction "User5" == 0};
        };
    };
	
};