ArmaTeam = {
_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1 = {findDisplay 24};
createDialog "RscDisplayChat";

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg15 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["IGUIBack", 87676];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg15 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg15 ctrlSetPosition [-0.675,-0.36,0.8125,1.72];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg15 ctrlCommit 0.5;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg15 ctrlSetBackgroundColor [0.212,0.22,0.231,1];

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["RscIGUIListBox", 87676];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 ctrlSetPosition [-0.1625,0.16,0.2875,0.62];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 ctrlCommit 0.5;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 ctrlAddEventHandler["LBDblClick", "[_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 lbText (lbCurSel _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2),(lbCurSel _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2)] call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg12;"];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 ctrlSetBackgroundColor [0.463,0.757,0.6,1];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 ctrlSetFont "RobotoCondensedBold";
	{
		_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg2 lbAdd(name _x);
	} foreach allPlayers;

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg12 = {
		_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11 = this select 0;
		systemChat format["<AT> Selected %1!", _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11];
	};

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg13 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["RscStructuredText", 46657];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg13 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg13 ctrlSetPosition [-0.67,-0.352,0.802525,0.101684];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg13 ctrlCommit 0.5;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg13 ctrlSetStructuredText parseText
		"<t size='0.5'>&#160;</t><br/><t colorLink='#ffffff'><a href='http://arma.team'><t size='2' align='center'>Arma.Team GUI Menu&#160;&#160;</a></t>";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg13 ctrlSetFont "RobotoCondensedBold";

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg3 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["RscMapControl", 6178];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg3 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg3 ctrlSetPosition [-0.1625,0.8,0.2875,0.543368];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg3 ctrlCommit 0.5;

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg4 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["RscButton", 46657];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg4 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg4 ctrlSetPosition [-0.1625,0.0993939,0.0875,0.04];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg4 ctrlCommit 0.5;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg4 ctrlSetText "Execute";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg4 ctrlSetFont "RobotoCondensedBold";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg4 buttonSetAction "call compile ctrlText 92372;";

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg5 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["RscEdit", 92372];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg5 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg5 ctrlSetPosition [-0.1625,-0.236,0.2875,0.32];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg5 ctrlCommit 0.5;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg5 ctrlSetBackgroundColor [0.212,0.22,0.231,1];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg5 ctrlSetFont "RobotoCondensedBold";

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg7 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["RscButton", 46657];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg7 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg7 ctrlSetPosition [0.0375,0.1,0.0875,0.04];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg7 ctrlCommit 0.5;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg7 ctrlSetText "Leave";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg7 ctrlSetFont "RobotoCondensedBold";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg7 buttonSetAction "endMission 'left';";

	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["RscButton", 46657];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlSetPosition [-0.0625,0.1,0.0875,0.04];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlCommit 0.5;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlSetText "Teleport";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlSetFont "RobotoCondensedBold";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 buttonSetAction "player onMapSingleClick 'if (_alt) then {player setPosATL _pos}';";


	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 = (call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg1) ctrlCreate ["RscIGUIListBox", 46657];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlCommit 0;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlSetPosition [-0.6625,-0.236,0.4875,1.58];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlCommit 0.5;
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlAddEventHandler ["LBDblClick", "[(findDisplay 0 displayCtrl 999 getVariable '_ListBoz') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_ListBoz')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_ListBoz'))] call (findDisplay 0 displayCtrl 999 getVariable '_Functions')"];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlShow true;
	findDisplay 0 displayCtrl 999 setVariable ['_ListBoz', _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8];
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "= General Scripts =";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Heal Self";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Kill Self";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "God Mode";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Vehicle God";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Unlimited Ammo";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Arsenal";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "No Recoil";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "No Grass";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "No Fatigue";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Player ESP";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Map ESP";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Speed Hack";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Refill Ammo";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Add Ammo";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Rapid Fire";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Murder Mode";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "= Server Scripts =";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Kill Everyone";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Crash Server";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Crash Everyone";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Eject Everyone";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Paradrop Everyone";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Strip Down Everyone";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "= Target Scripts =";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Kill Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Eject Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Bomb Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Clone on Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Clone from Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Paradrop Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Strip Down Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Crash Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "= Life General =";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Give Licences";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Max Weight";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Unlock Cars (150m)";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Get Car Keys (150m)";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Get All Car Keys";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Disable Restrain";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Disable Taze";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Free Me";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Instant Respawn";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Spawn Money (5k-10k)";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Spawn Money (50k-150k)";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Spawn Money (500k-1000k)";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "= Random Scripts =";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "JME Blue Army";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "JME Red VR";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Bruce Almighty";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Varible Scanner";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Executor";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Clone on Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Clone From Target";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "= Life Everyone =";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Spawn Money Pile";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Restrain Everyone";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Jail Everyone";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 lbAdd "Free Everyone";
	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg8 ctrlSetFont "RobotoCondensedBold";



	findDisplay 0 displayCtrl 999 setVariable['_Functions', {
		switch (_this select 0) do {

			case 'Clone from Target':{
					{
						if (name _x == _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11) then {
							player setUnitLoadout (getUnitLoadout _x);
						};
					}
					foreach allPlayers;
				};

			case 'Clone on Target':{
					{
						if (name _x == _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11) then {
							_x setUnitLoadout (getUnitLoadout player);
						};
					}
					foreach allPlayers;
				};

			case 'Strip Down Target':{
					{
						if (name _x == _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11) then {
							removeAllAssignedItems _x;
							removeAllWeapons _x;
							removeAllContainers _x;
							removeHeadgear _x;
							removeGoggles _x;
							removeVest _x;
							removeBackpack _x;
							removeUniform _x;
						};
					}
					foreach allPlayers;
				};

			case 'Paradrop Target':{
					{
						if (name _x == _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11) then {
						_x addBackpackGlobal"B_Parachute_F";_x setPos[10000,10000,1000]
						};
					}
					foreach allPlayers;
				};

			case 'Crash Target':{
					{
						if (name _x == _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11) then {
						(_x) action["EJECT", vehicle _x];
						_x setPos[99999999999,99999999999,99999999];
						};
					}
					foreach allPlayers;
				};

			case 'Bomb Target':{
					{
						if (name _x == _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11) then {
							"HelicopterExploBig"
							createVehicleLocal(getPos _x);
						};
					}
					foreach allPlayers;
				};

			case 'Kill Target':{
					{
						if (name _x == _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11) then {
							_x setdamage 1;
						};
					}
					foreach allPlayers;
				};

			case 'Eject Target':{
					{
						if (name _x == _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg11) then {
							(_x) action["EJECT", vehicle _x];
						};
					}
					foreach allPlayers;
				};

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
							systemChat "Rapid Fire ON";
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
						systemChat "Rapid Fire OFF";
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

			case 'Clone on Target':{
					cursorTarget setUnitLoadout (getUnitLoadout player);
				};

			case 'No Fatigue':{
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgStamPlayer = player;
						life_hunger = 9999999;
						life_thirst = 9999999;
						[] call life_fnc_hudUpdate;
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgStamPlayer enableFatigue false;
						life_maxWeight = 9999999;
						life_maxWeightT = 9999999;
				};

			case 'No Grass':{
					setTerrainGrid 50;
				};

			case 'Max Weight':{
					if(_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_AL_NoWeight_toggle) then {
						["TaskSucceeded",["","You now have no max weight!"]] call bis_fnc_showNotification;
						while{_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_AL_NoWeight_toggle} do {
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

			case 'Give Licences':{
					{missionNamespace setVariable[(_x select 0),true];} foreach life_licenses;
					["TaskSucceeded",["","Licenses Added"]] call bis_fnc_showNotification;
				};

			case 'Bruce Almighty':{
					waitUntil {
						!isNil { player } &&
						!isNull player &&
						!(player != player) &&
						!isNull (findDisplay 46)
					};
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_cleanup = {
						{deleteVehicle _x;} forEach allDead;
						{deleteVehicle _x;} forEach (position player nearObjects ["Land_CargoBox_V1_F",1000]);
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_count = 0;
						hintSilent format ["Entities: %1", _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_count];
					};
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_fnc_throw = {
						_height = getPosASL player select 2;
						_height = _height + 5;
						_pos = [player, 5, getDir player] call BIS_fnc_relPos;
						_pos set [2, _height];
						_object = objNull;

						switch (_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_type) do {
							case 0 : {
								_class = "Land_CargoBox_V1_F";
								_object = createVehicle [_class, position player, [], 0, "NONE"];
								_object allowDamage _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_damage;
								_object setVectorUp [random 1, random 1, random 1];
								_object setVectorDir [random 1, random 1, random 1];

								_object setPosASL _pos;
							};
						};

						_object setVelocity [(eyeDirection player select 0) * _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force, (eyeDirection player select 1) * _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force, (eyeDirection player select 2) * _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force];

						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_count = _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_count + 1;
						hintSilent format ["Entities: %1", _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_count];
					};
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_fnc_push = {
						{
							if (_x != player) then {
								_dir = [player, _x] call BIS_fnc_dirTo;
								_x setVelocity [sin _dir * _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force, cos _dir * _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force, _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force / 10];
							};
						} forEach (position player nearObjects 100);};
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_fnc_pull = {
						{
							if (_x != player) then {
								_dir = [_x, player] call BIS_fnc_dirTo;
								_pos = getposatl _x;
								_z = _pos select 2;
								if(_z < 10) then {
									_x setVelocity [sin _dir * random 10, cos _dir * random 5, _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force / 2];
								} else {
									_x setVelocity [sin _dir * random 10, cos _dir * random 5, 0];
								};
							};
						} forEach (position player nearObjects ["Land_CargoBox_V1_F",200]);
					};

					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_throwing = false;
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_pushing = false;
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_pulling = false;
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_type = 0;
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_damage = false;
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_count = 0;
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force = 10;

					findDisplay 46 displayAddEventHandler ["KeyDown", "if (_this select 1 == 2) then { _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_throwing = true; }; if (_this select 1 == 4) then { _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_pushing = true; }; if (_this select 1 == 3) then { _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_pulling = true; };"];
					findDisplay 46 displayAddEventHandler ["KeyUp", "if (_this select 1 == 2) then { _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_throwing = false; }; if (_this select 1 == 4) then { _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_pushing = false; }; if (_this select 1 == 3) then { _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_pulling = false; };"];

					onEachFrame {
						if (_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_throwing) then { [] call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_fnc_throw; };
						if (_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_pushing) then { [] call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_fnc_push; };
						if (_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_pulling) then { [] call _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_fnc_pull; };
					};


					player addAction ["Force - LOW", 			{_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force = _this select 3;}, 10, -1, false, true, "", "_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force != 10"];
					player addAction ["Force - MEDIUM", 		{_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force = _this select 3;}, 50, -1, false, true, "", "_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force != 50"];
					player addAction ["Force - HIGH", 			{_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force = _this select 3;}, 100, -1, false, true, "", "_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force != 100"];
					player addAction ["Force - HUGE", 			{_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force = _this select 3;}, 500, -1, false, true, "", "_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force != 500"];
					player addAction ["Allow Damage", 			{_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force = _this select 3;}, true, -1, false, true, "", "!_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_damage"];
					player addAction ["Do Not Allow Damage", 	{_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_force = _this select 3;}, false, -1, false, true, "", "_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_damage"];
					player addAction ["Clean Up", 				{[] spawn _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfg_neo_cleanup;}, [], -1, false, true, "", "true"];

					hint "Welcome to the PhysX Hack\n\n\nPress 1 to spawn object with applied forces.\n\nPress 2 and 3 to apply forces to nearby objects.\n\n\nHave fun!";
				};

			case 'JME Red VR':{
					hint "Jme is God";
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisGOD = group player createUnit ["O_Soldier_VR_F", Position player, [], 0, "FORM"];
					player remoteControl _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisGOD;
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisGOD switchCamera "EXTERNAL";
					(findDisplay 46) displayAddEventHandler['KeyDown', 'if ((_this select 1) == 0x44) then {
						[] spawn {
							_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisGOD disableAI "MOVE";
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
						for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus = _grp createUnit ["B_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus]  join _grp ; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus move position player ;};
						sleep 2;
						for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus = _grp createUnit ["O_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus]  join _grp ; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus move position player ;};
						sleep 2;
						for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus = _grp createUnit ["I_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus]  join _grp ; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus move position player ;};
						sleep 2;
						for "_i" from 5 to 100 step 5 do {_grp = createGroup west; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus = _grp createUnit ["C_Soldier_VR_F", position player, [], 100, "FORM"] ; [ _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus]  join _grp ; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgJMEisJesus move position player ;};
					};
				};

			case 'Murder Mode':{
					_muddermode = (findDisplay 0 displayCtrl 999 getVariable '_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurder');
					if (_muddermode == 0) then {
						findDisplay 0 displayCtrl 999 setVariable ['_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurder', 1];
						findDisplay 0 displayCtrl 999 setVariable ['_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurderEnable', _merder];
					} else {
						findDisplay 0 displayCtrl 999 setVariable ['_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurder', 0];
						_merder = (findDisplay 0 displayCtrl 999 getVariable '_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurderEnable');
					};
					[] spawn {
						while {(findDisplay 0 displayCtrl 999 getVariable '_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurder') == 1} do {
							_merder = player addEventHandler ['Fired', {
								_me = _this select 0;
								_bullet = _this select 6;
								_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurderPlayas = (findDisplay 0 displayCtrl 999 getVariable '_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurderPlayers');
								_poorbastard = selectRandom _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgMurderPlayas;
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

			case 'Varible Scanner':{
				_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgVarscPlayer = player; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgVarscPlayer addAction ["<t size=""1.1"" font=""TahomaB"" color=""#FFFFFF"">Open Variable Scanner</t>",{_Dialog = [	[1100,"",[1,"Variable Scanner by Arma.Team",[0.371093 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.257813 * safezoneW,0.022 * safezoneH],[1,1,1,1],[0.9,0.4,0.6,1],[-1,-1,-1,-1],",-1"],[]],	[2200,"",[1,"",[0.371095 * safezoneW + safezoneX,0.247 * safezoneH + safezoneY,0.257813 * safezoneW,0.396 * safezoneH],[-1,-1,-1,-1],[0,0,0,0.5],[-1,-1,-1,-1],",-1"],[]],	[1402,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1500,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[0,0,0,0],",-1"],[]],	[1400,"",[1,"                                    >>Current Variable Value<<",[0.37625 * safezoneW + safezoneX,0.258 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[2100,"",[1,"",[0.37625 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[1,1,1,1],[0,0,0,0],[0,0,0,0],",-1"],[]],	[1600,"",[1,"Search for this value",[0.37625 * safezoneW + safezoneX,0.346 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1601,"",[1,"Edit Value",[0.37625 * safezoneW + safezoneX,0.599 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1401,"",[1,"                                      >>New Variable Value<<",[0.37625 * safezoneW + safezoneX,0.555 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]]];(finddisplay 46) createDisplay "RscDisplayChat";{	private["_ctrl","_buttonaction","_text","_secondarray","_activecolor","_textcolor","_backcolor","_pos","_idc","_classname","_ctrltype"];	_idc = _x select 0;	_classname = _x select 1;	_secondarray = (_x select 2);	_text = _secondarray select 1;	_pos = _secondarray select 2;	_textcolor = _secondarray select 3;	_backcolor = _secondarray select 4;	_activecolor = _secondarray select 5;	_buttonaction = _secondarray select 6;	_ctrltype = (format["%1",_idc] select [0,2]);	_ctrltype = call compile _ctrltype;	_ctrltype = switch(_ctrltype) do {		case 11: {"RscStructuredText"};		case 12: {"RscPicture"};		case 14: {"RscEdit"};		case 15: {"RscListBox"};		case 16: {"RscButton"};		case 21: {"RscCombo"};		case 22: {"RscBackground"};	};	_ctrl = (finddisplay 24) ctrlCreate [_ctrltype, _idc];	_ctrl ctrlSetPosition _pos;	if(_ctrltype != "RscTree") then {		_ctrl ctrlSetTextColor _textcolor;		_ctrl ctrlSetBackgroundColor _backcolor;		_ctrl ctrlSetActiveColor _activecolor;		_ctrl ctrlSetText _text;	};	if!(_buttonaction == "") then {		_ctrl buttonsetAction _buttonaction;	};	_ctrl ctrlCommit 0.3;	_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgVarscPlayer setVariable ["MLRN_ALLCTRLS",(_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgVarscPlayer getVariable "MLRN_ALLCTRLS") + [_ctrl]];}forEach _Dialog;((finddisplay 24) displayCtrl 2100) lbAdd "STRING"; ((finddisplay 24) displayCtrl 2100) lbAdd "CODE"; ((finddisplay 24) displayCtrl 2100) lbAdd "SCALAR"; ((finddisplay 24) displayCtrl 2100) lbAdd "BOOLEAN"; ((finddisplay 24) displayCtrl 2100) lbSetCurSel 0;((finddisplay 24) displayCtrl 1600) buttonSetAction '	if(ctrlText((finddisplay 24) displayCtrl 1400) == "") exitWith {hint "You have to enter a value"};	private["_vars"];	_vars = [];	{		_type = ((finddisplay 24) displayCtrl 2100) lbText lbCurSel ((finddisplay 24) displayCtrl 2100);		_value = ctrlText((finddisplay 24) displayCtrl 1400);  		if(typeName(missionNamespace getVariable _x) == _type) then {if(format["%1",(missionNamespace getVariable _x)] == _value) then {_vars pushBack [_x,missionNamespace getVariable _x]}};	}	forEach allVariables missionNamespace;	if(count _vars == 0) exitWith {hint "[FAILED] No Variables with this value..."};	lbClear ((finddisplay 24) displayCtrl 1500);	{		((finddisplay 24) displayCtrl 1500) lbAdd format["%1 | %2",_x select 0,format["%1",_x select 1]];		((finddisplay 24) displayCtrl 1500) lbSetData [(lbSize((finddisplay 24) displayCtrl 1500))-1,_x select 0];	}	forEach _vars;	hint "[SUCCESS] Variables found...";	((finddisplay 24) displayCtrl 1500) lbSetCurSel 0;';((finddisplay 24) displayCtrl 1601) buttonSetAction '	_newvalue = ctrlText((finddisplay 24) displayCtrl 1401);	_currvar = ((finddisplay 24) displayCtrl 1500) lbData lbCurSel ((finddisplay 24) displayCtrl 1500);	call compile format["%1 = %2;",_currvar,_newvalue];	hint "[SUCCESS] Changed Variable Value";	(finddisplay 24) closeDisplay 0;'}]; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgVarscPlayer addAction ["<t size=""1.1"" font=""TahomaB"" color=""#F76060"">Remove Variable Scanner</t>","removeAllActions player"];
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
					if (isnil("ArmaTeamRespawnToggle")) then {
						ArmaTeamRespawnToggle = 0;
					};
					if (ArmaTeamRespawnToggle == 0) then {
						ArmaTeamRespawnToggle = 1;
						systemChat "Instant Respawn ON";
					} else {
						ArmaTeamRespawnToggle = 0;
						systemChat "Instant Respawn OFF";
						findDisplay 0 setVariable["w_3",false];
					};
					while {ArmaTeamRespawnToggle == 1} do {
						findDisplay 0 setVariable["w_3",true];[]spawn{while{findDisplay 0 getVariable["w_3",false]}do{((finddisplay 7300)displayCtrl 7302)ctrlEnable true}};
					};
				};

			case 'Free Me':{
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgRestrainPlayer = player;
					_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgRestrainPlayer setVariable["restrained",false,true];
				};

			case 'Disable Taze':{
					if (isnil("ArmaTeamTazeToggle")) then {
						ArmaTeamTazeToggle = 0;
					};
					if (ArmaTeamTazeToggle == 0) then {
						ArmaTeamTazeToggle = 1;
						systemChat "Disable Taze ON";
					} else {
						ArmaTeamTazeToggle = 0;
						systemChat "Disable Taze OFF";
						findDisplay 0 setVariable["w_2",false];
					};
					while {ArmaTeamTazeToggle == 1} do {
						findDisplay 0 setVariable["w_2",true];[]spawn{while{findDisplay 0 getVariable["w_2",false]}do{if(!life_tazed)then{life_tazed=true}}};
					};
				};

			case 'Disable Restrain':{
					if (isnil("ArmaTeamRestrainToggle")) then {
						ArmaTeamRestrainToggle = 0;
					};
					if (ArmaTeamRestrainToggle == 0) then {
						ArmaTeamRestrainToggle = 1;
						systemChat "Disable Restrain ON";
					} else {
						ArmaTeamRestrainToggle = 0;
						systemChat "Disable Restrain OFF";
						findDisplay 0 setVariable["w_1",false];
					};
					while {ArmaTeamRestrainToggle == 1} do {
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

			case 'Strip Down Everyone':{
					{_x setUnitLoadout[[],[],[],[],[],[],"","",[],["","","","","",""]]}forEach allPlayers;
				};

			case 'Paradrop Everyone':{
					{_x addBackpackGlobal"B_Parachute_F";_x setPos[10000,10000,1000]}forEach allPlayers;
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
					ArmaTeamAmmo = player;
					ArmaTeamAmmo setVehicleAmmo 1;
					systemChat "Ámmó Réfílled";
				};

			case 'Speed Hack':{
					if (isnil("ArmaTeamGodToggle")) then {
						ArmaTeamGodToggle = 0;
					};
					if (ArmaTeamGodToggle == 0) then {
						ArmaTeamGodToggle = 1;
						systemChat "Speed Hack ON";
					} else {
						ArmaTeamGodToggle = 0;
						systemChat "Speed Hack OFF";
						ArmaTeamSpeedOff = player;
						ArmaTeamSpeedOff setAnimSpeedCoef(3/3);
					};
					while {ArmaTeamGodToggle == 1} do {
						ArmaTeamSpeed = player;
						ArmaTeamSpeed setAnimSpeedCoef 11.2;
					};
				};

			case 'Kill Self':{
					ArmaTeamKill = player;
					ArmaTeamKill setDamage 1;
					systemChat "Kílléd Sélf";
				};

			case 'Heal Self':{
					ArmaTeamHeal = player;
					ArmaTeamHeal setDamage 0;
					systemChat "Héáled Sélf";
				};

			case 'God Mode':{
					if (isnil("ArmaTeamGodToggle")) then {
						ArmaTeamGodToggle = 0;
					};
					if (ArmaTeamGodToggle == 0) then {
						ArmaTeamGodToggle = 1;
						systemChat "God Mode ON";
					} else {
						ArmaTeamGodToggle = 0;
						systemChat "God Mode OFF";
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgGodRemovePlayer = player; _samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgAmmoRemovePlayer allowDamage true;
					};
					while {ArmaTeamGodToggle == 1} do {
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgGodPlayer = player;
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgGodPlayer allowDamage false;
					};
				};

			case 'Unlimited Ammo':{
					if (isnil("ArmaTeamAmmoToggle")) then {
						ArmaTeamAmmoToggle = 0;
					};
					if (ArmaTeamAmmoToggle == 0) then {
						ArmaTeamAmmoToggle = 1;
						systemChat "Unlimited Ammo ON";
						player addeventhandler ["fired", {(_this select 0) setvehicleammo 1}]
					} else {
						ArmaTeamAmmoToggle = 0;
						systemChat "Unlimited Ammo OFF";
						player removeAllEventHandlers "fired";
					};
				};


			case 'No Recoil':{
					if (isnil("ArmaTeamRecoilToggle")) then {
						ArmaTeamRecoilToggle = 0;
					};
					if (ArmaTeamRecoilToggle == 0) then {
						ArmaTeamRecoilToggle = 1;
						systemChat "No Recoil ON";
					} else {
						ArmaTeamRecoilToggle = 0;
						systemChat "No Recoil OFF";
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgRecoilRemovePlayer = player;
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgRecoilRemovePlayer setUnitRecoilCoefficient 1;
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgRecoilRemovePlayer setCustomAimCoef 1;
					};
					while {ArmaTeamRecoilToggle == 1} do {
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgRecoilPlayer = player;
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgRecoilPlayer setUnitRecoilCoefficient 0;
						_samisafatturdheaddgfdfgdfgdkappaunodostes23523sdfdsfgadfgRecoilPlayer setCustomAimCoef 0.001;
					};
				};

			case 'Arsenal':{
					   ["Open",true] spawn BIS_fnc_Arsenal;
					   systemChat "Arsenal Opened";
				};

			case 'Player ESP':{
					if (isnil("ArmaTeamGodToggle")) then {
						ArmaTeamGodToggle = 0;
					};
					if (ArmaTeamGodToggle == 0) then {
						ArmaTeamGodToggle = 1;
						systemChat "Player ESP ON";
						addMissionEventHandler['Draw3D',{{if((player distance _x)<700)then{drawIcon3D['',[0,1,0,1],[(ASLtoATL eyePos _x)select 0,(ASLtoATL eyePos _x)select 1,((ASLtoATL eyePos _x)select 2)+0.3],0.1,0.1,45,format['%1(%2m) - %3HP',name _x,round(player distance _x),round((((damage _x)-1)*-100))],1,0.03,'PuristaSemiBold']}}forEach allPlayers}];
					} else {
						ArmaTeamGodToggle = 0;
						systemChat "Player ESP OFF";
						removeAllMissionEventHandlers'Draw3D';
					};
				};

			case 'Map ESP':{
					if (isnil("ArmaTeamGodToggle")) then {
						ArmaTeamGodToggle = 0;
					};
					if (ArmaTeamGodToggle == 0) then {
						ArmaTeamGodToggle = 1;
						systemChat "Map ESP ON";
                        ((finddisplay 12)displayCtrl 51)ctrlAddEventHandler ['Draw',{_2=_this select 0;{if(true)then{_3=if(vehicle _x==_x)then{name _x}else{_1='(';{_1=_1+(if(_forEachIndex==0)then{''}else{', '})+name _x}forEach(crew(vehicle _x));_1=_1+')';format['%1%2',getText(configFile>>'CfgVehicles'>>typeOf(vehicle _x)>>'displayName'),_1]};_4=if(vehicle _x==_x)then{'iconMan'}else{switch(true)do{case((vehicle _x)isKindOf'Man'):{'iconman'};case((vehicle _x)isKindOf'Car'):{'iconcar'};case((vehicle _x)isKindOf'Tank'):{'iconcar'};case((vehicle _x)isKindOf'Air'):{'iconhelicopter'};case((vehicle _x)isKindOf'Ship'):{'iconship'}}};_5=switch(side _x)do{case BLUFOR:{[0,0.298,0.596,1]};case OPFOR:{[0.502,0,0,1]};case INDEPENDENT:{[0,0.502,0,1]};case CIVILIAN:{[0.4,0,0.502,1]};case default{[0.996,0.655,0.114,1]}};_2 drawIcon[_4,_5,getPos _x,24,24,getDir _x,_3,1,0.025,'PuristaMedium','right']}}forEach allPlayers}];
					} else {
						ArmaTeamGodToggle = 0;
						systemChat "Map ESP OFF";
						removeAllMissionEventHandlers'Draw';
					};
				};
			};

			default {
				systemChat "This Button	Does Nothing";
			};
	}];

 		 _CameraList2 = findDisplay 24 ctrlCreate ["RscIGUIListBox", 1];


 		 _CameraList2 ctrlCommit 0;
 		 _CameraList2  ctrlSetPosition [0.875,-0.34,0.7875,0.82];
 		 _CameraList2 ctrlCommit 0.5;
 		 _CameraList2 ctrlSetEventHandler ["LbDBlClick","call fivedorraboughtfromtitanmods_Wep;"];
 		 _CameraList2 ctrlSetFont "RobotoCondensedBold";

 		 _CameraList2 ctrlShow true;



			for "_i" from 0 to (count weaponList)-1 do
			{
				_weapon = weaponList select _i;
					_CameraList2 lbAdd _weapon;
					_CameraList2 lbSetPicture [_i, (getText (configFile >> "cfgWeapons" >> _weapon >> "picture"))];

			};



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



	while {true} do {
	if (inputAction "User5" > 0) then
	{
		waitUntil{inputAction "User5" > 0};
			[] spawn ArmaTeam;
			[] spawn ArmaTeamLists;
		waitUntil{inputAction "User5" == 0};
		};
	};
};
