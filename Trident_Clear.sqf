private['_1','_2','_3','_4','_5','_6','_7','_8','_lb','_ed','_bu','_t1','_t2'];
_3=[];
{
	if(isClass _x)then{
		_1=configName _x;
		_2=getNumber(missionConfigFile>>_1>>'idd');
		if(_2>0)then{
			_4=(('true'configClasses(missionConfigFile>>_1>>'controls'))+('true'configClasses(missionConfigFile>>_1>>'controlsbackground')));
			_lb=false;
			_ed=false;
			_t1=false;
			_t2=false;
			_re=[];
			{
				_5=configName _x;
				_6=([_x]call BIS_fnc_returnparents);
				if((str _6 find'RscListBox')>-1)then{
					if(_lb)exitWith{};
					_lb=true;
					_re pushBack(_5);
				};
				if((str _6 find'RscEdit')>-1)then{
					if(_ed)exitWith{};
					_ed=true;
					_re pushBack(_5);
				};
				if((str _6 find'RscText')>-1)then{
					if(_t1&&_t2)exitWith{};
					if(_t1)then{_t2=true}else{_t1=true};
					_re pushBack(_5);
				};
			}forEach _4;
			if(_lb&&_ed&&_t1&&_t2)then{
				_3 pushBack[_1,_2,_re];
			};
		};
	};
}forEach('true'configClasses(missionConfigFile));

if(count _3<1)exitWith{hint parseText'Sorry,<br/>but there is no supported dialog on this server<br/><br/>please contact us on skype: Speed4Fun8'};

_7=(_3 call BIS_fnc_selectRandom);

(finddisplay 46)createDisplay(_7 select 0);
_8=[-1,-1];
_9=false;
{
	if((ctrlClassName _x)in(_7 select 2))then{
		switch(ctrlType _x)do{
			case 5:{
				_8 set[0,_x];
				_x ctrlSetBackgroundColor[0.235,0.651,0.651,1];
				_x ctrlSetFontHeight 0.04;
				_x ctrlSetPosition[0.29375 * safezoneW + safezoneX,0.247 * safezoneH + safezoneY,0.4125 * safezoneW,0.154 * safezoneH];
				_x ctrlCommit 0;
			};
			case 2:{
				_8 set[1,_x];
				_x ctrlSetText'//Press ''ENTER'' to execute';
				_x ctrlSetFontHeight 0.04;
				_x ctrlSetBackgroundColor[0.235,0.651,0.651,0.3];
				_x ctrlSetPosition[0.29375 * safezoneW + safezoneX,0.423 * safezoneH + safezoneY,0.4125 * safezoneW,0.033 * safezoneH];
				_x ctrlCommit 0
			};
			case default{
				if(_9)then{
					_x ctrlSetText'Functions';
					_x ctrlSetFontHeight 0.04;
					_x ctrlSetTextColor[1,1,1,1];
					_x ctrlSetBackgroundColor[0.008,0.325,0.451,1];
					_x ctrlSetPosition[0.29375 * safezoneW + safezoneX,0.401 * safezoneH + safezoneY,0.4125 * safezoneW,0.022 * safezoneH];
					_x ctrlCommit 0;
				}else{
					_9=true;
					_x ctrlSetText'Script Executer';
					_x ctrlSetFontHeight 0.04;
					_x ctrlSetTextColor[1,1,1,1];
					_x ctrlSetBackgroundColor[0.008,0.325,0.451,1];
					_x ctrlSetPosition[0.29375 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.4125 * safezoneW,0.022 * safezoneH];
					_x ctrlCommit 0;
				};
			};
		};
	}else{
		_x ctrlShow false;
	};
}forEach allControls(finddisplay(_7 select 1));
(_8 select 1)ctrlAddEventHandler['KeyDown','if(_this select 1!=28)exitWith{};[]spawn{sleep 0.1;hint'''';call compile ctrlText((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 1))+')};false'];
(_8 select 0)ctrlAddEventHandler['LBDblClick',(compile('call call compile(((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 0))+')lbData(lbCurSel((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 0))+')))'))];
hint parseText('Found '+str count(_3)+' compatible dialogs <br/> automaticly chosen: ('+(_7 select 0)+'|'+str(_7 select 1)+')');
[(_7 select 1)]spawn{inGameUISetEventHandler['PrevAction','true'];inGameUISetEventHandler['Action','true'];inGameUISetEventHandler['NextAction','true'];waitUntil{isNull(finddisplay(_this select 0))};inGameUISetEventHandler['PrevAction',''];inGameUISetEventHandler['Action',''];inGameUISetEventHandler['NextAction','']};

		_FUNCTIONS=[
			["-----------SELF FUNCTIONS-----------",{}],
			['HEAL PLAYER',{hint'Healed yourself';(vehicle player)setDamage 0;(vehicle player)setFuel 1}],
			['KILL PLAYER',{hint'Killed yourself';(vehicle player)setDamage 1}],
			['BACK TO LOBBY',{hint'Backed out to lobby';(finddisplay 24)closeDisplay 0;endMission'endDefault'}],
			['MAP TELEPORT',{hint'Click on the map to teleport';{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2410,true],[2411,true],[2412,false]];{((finddisplay 24)displayCtrl(_x select 0))ctrlShow(_x select 1)}forEach[[1113,false],[1808,false],[1809,false],[1611,false],[1501,false],[2444,false],[2445,false],[1401,false],[1000,false],[2100,false],[1001,false],[1002,false],[1504,false],[1003,false],[1004,false],[1005,false],[1402,false],[1006,false],[1600,false],[13766,false],[1102,false],[2205,false],[5501,true],[2441,false],[2442,false],[2443,false]];onMapSingleClick{onMapSingleClick{};player setPos _pos;hint('Teleportet: '+str(_pos))}}],
			['GODMODE',{hint'Godmode activated';player removeAllEventHandlers'HandleDamage';player addEventHandler['HandleDamage',{false}]},{hint'Godmode deactivated';player removeAllEventHandlers'HandleDamage'}],
			['INVISIBLE (RE)',{hint'Invisiblity activated';(compile format['if(!isServer)exitWith{};(objectFromNetId"%1")hideObjectGlobal true',netID player])call(profileNamespace getVariable'MAIN_RE')},{hint'Invisiblity deactivated';(compile format['if(!isServer)exitWith{};(objectFromNetId"%1")hideObjectGlobal false',netID player])call(profileNamespace getVariable'MAIN_RE')}],
			['RAPID FIRE (Infishit dtctd.)',{hint'Rapid Fire activated';vehicle player setWeaponReloadingTime[vehicle player,currentWeapon vehicle player,0]},{hint'Rapid Fire deactivated';vehicle player setWeaponReloadingTime[vehicle player,currentWeapon vehicle player,1]}],
			['SPEEDHACK',{hint'Speedhack on';player setAnimSpeedCoef 10},{hint'Speedhack off';player setAnimSpeedCoef 1}],
			['NO GRASS',{hint'No grass on';setTerrainGrid 50},{hint'No grass off';setTerrainGrid 12.5}],
			['NO FATIGUE',{hint'No fatigue on';player enableFatigue false},{hint'No fatigue off';player enableFatigue true}],
			['NO RECOIL (Infishit dtctd.)',{hint'No recoil on';player setUnitRecoilCoefficient 0},{hint'No recoil off';player setUnitRecoilCoefficient 1}],
			['UNLIMITED AMMO',{hint'Unlimited Ammo activated';[]spawn{waitUntil{(vehicle player)setVehicleAmmo 1;(player getVariable['++++++++++++++++#',false])}}},{hint'Unlimited Ammo deactivated';(player setVariable['++++++++++++++++#',true])}],
			['EXPLOSIVE AMMO (Infishit dtctd.)',{hint'Explosive Ammo activated';(vehicle player)removeAllEventHandlers'Fired';(vehicle player)addEventHandler['Fired',{_1='R_PG32V_F'createVehicleLocal[0,0,0];_2=velocity(_this select 6);_3=direction(_this select 6);_4=getPosASL(_this select 6);deleteVehicle(_this select 6);_1 setPosASL _4;_1 setDir _3;_1 setVelocity _2}]},{hint'Explosive Ammo deactivated';(vehicle player)removeAllEventHandlers'Fired'}],
			['PLAYER ESP',{hint'Player Esp on';addMissionEventHandler['Draw3D',{{if((player distance _x)<700)then{drawIcon3D['',[0,1,0,1],[(ASLtoATL eyePos _x)select 0,(ASLtoATL eyePos _x)select 1,((ASLtoATL eyePos _x)select 2)+0.3],0.1,0.1,45,format['%1(%2m) - %3HP',name _x,round(player distance _x),round((((damage _x)-1)*-100))],1,0.03,'PuristaSemiBold']}}forEach allPlayers}];},{hint'Player Esp off';removeAllMissionEventHandlers'Draw3D'}],
			['MAP MARKER',{hint'Map Marker on';((finddisplay 12)displayCtrl 51)ctrlAddEventHandler ['Draw',{_2=_this select 0;{if(true)then{_3=if(vehicle _x==_x)then{name _x}else{_1='(';{_1=_1+(if(_forEachIndex==0)then{''}else{', '})+name _x}forEach(crew(vehicle _x));_1=_1+')';format['%1%2',getText(configFile>>'CfgVehicles'>>typeOf(vehicle _x)>>'displayName'),_1]};_4=if(vehicle _x==_x)then{'iconMan'}else{switch(true)do{case((vehicle _x)isKindOf'Man'):{'iconman'};case((vehicle _x)isKindOf'Car'):{'iconcar'};case((vehicle _x)isKindOf'Tank'):{'iconcar'};case((vehicle _x)isKindOf'Air'):{'iconhelicopter'};case((vehicle _x)isKindOf'Ship'):{'iconship'}}};_5=switch(side _x)do{case BLUFOR:{[0,0.298,0.596,1]};case OPFOR:{[0.502,0,0,1]};case INDEPENDENT:{[0,0.502,0,1]};case CIVILIAN:{[0.4,0,0.502,1]};case default{[0.996,0.655,0.114,1]}};_2 drawIcon[_4,_5,getPos _x,24,24,getDir _x,_3,1,0.025,'PuristaMedium','right']}}forEach allPlayers}]},{hint'Map Marker off';((finddisplay 12)displayCtrl 51)ctrlRemoveAllEventHandlers'Draw'}],
			["KIT CIVILIAN",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_BG_Guerilla2_3';for'_i'from 1 to 3 do{player addItemToUniform'16Rnd_9x21_Mag'};player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 17 do{player addItemToBackpack'30Rnd_9x21_Red_Mag'};for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};player addHeadgear'H_Hat_checker';player addGoggles'G_Squares';player addWeapon'hgun_PDW2000_F';player addPrimaryWeaponItem'optic_Aco';player addWeapon'hgun_Rook40_F';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch'}],
			["KIT REPORTER",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_C_Journalist';player addVest'V_Press_F';player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 10 do{player addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 12 do{player addItemToBackpack'30Rnd_9x21_Yellow_Mag'};player addHeadgear'H_Cap_press';player addGoggles'G_Aviator';player addWeapon'hgun_Rook40_F';player addWeapon'Binocular';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles_OPFOR';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
			["KIT COP",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_Marshal';for'_i'from 1 to 2 do{player addItemToUniform'16Rnd_9x21_Mag'};player addVest'V_TacVest_blk_POLICE';for'_i'from 1 to 3 do{player addItemToVest'20Rnd_762x51_Mag'};player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 10 do{player addItemToBackpack'SmokeShellBlue'};player addItemToBackpack'16Rnd_9x21_Mag';player addHeadgear'H_Beret_02';player addGoggles'G_Aviator';player addWeapon'srifle_EBR_F';player addPrimaryWeaponItem'acc_pointer_IR';player addPrimaryWeaponItem'optic_Hamr';player addWeapon'hgun_P07_F';player addHandgunItem'muzzle_snds_L';player addWeapon'Rangefinder';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles_OPFOR';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
			["KIT SNIPER",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_O_GhillieSuit';for'_i'from 1 to 2 do{player addItemToUniform'16Rnd_9x21_Mag'};player addVest'V_TacVest_camo';for'_i'from 1 to 3 do{player addItemToVest'5Rnd_127x108_Mag'};player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{player addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 5 do{player addItemToBackpack'16Rnd_9x21_Mag'};for'_i'from 1 to 8 do{player addItemToBackpack'5Rnd_127x108_APDS_Mag'};player addGoggles'G_Aviator';player addWeapon'srifle_GM6_F';player addPrimaryWeaponItem'optic_Hamr';player addWeapon'hgun_P07_F';player addHandgunItem'muzzle_snds_L';player addWeapon'Rangefinder';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
			["KIT REBEL",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_I_G_resistanceLeader_F';for'_i'from 1 to 3 do{player addItemToUniform'30Rnd_65x39_caseless_green'};player addVest'V_TacVest_khk';player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{player addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 10 do{player addItemToBackpack'6Rnd_45ACP_Cylinder'};for'_i'from 1 to 10 do{player addItemToBackpack'30Rnd_65x39_caseless_green'};player addHeadgear'H_ShemagOpen_khk';player addGoggles'G_Aviator';player addWeapon'arifle_Katiba_F';player addPrimaryWeaponItem'optic_Hamr';player addWeapon'hgun_Pistol_heavy_02_F';player addHandgunItem'optic_Yorris';player addWeapon'Rangefinder';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
			["KIT HACKER",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_C_Scientist';player addItemToUniform'10Rnd_338_Mag';player addVest'V_TacVest_camo';for'_i'from 1 to 7 do{player addItemToVest'10Rnd_338_Mag'};player addBackpack'B_Carryall_oucamo';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{player addItemToBackpack'SmokeShellBlue'};player addItemToBackpack'Titan_AA';for'_i'from 1 to 5 do{player addItemToBackpack'6Rnd_GreenSignal_F'};player addHeadgear'H_RacingHelmet_1_blue_F';player addGoggles'G_Aviator';player addWeapon'srifle_DMR_02_F';player addPrimaryWeaponItem'muzzle_snds_338_black';player addPrimaryWeaponItem'acc_pointer_IR';player addPrimaryWeaponItem'optic_tws_mg';player addPrimaryWeaponItem'bipod_01_F_blk';player addWeapon'launch_I_Titan_F';player addWeapon'hgun_Pistol_Signal_F';player addWeapon'Rangefinder';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles_OPFOR';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
			["HINT HOTKEYS",{hint parseText "<t color=""#3CA6A6"" size=""1"">END  = Show Hotkeys</t><br/> <t color=""#3CA6A6"" size=""1"">Num0  = Revive Self</t><br/> <t color=""#3CA6A6"" size=""1"">Num1  = Delete CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num2  = Heal CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num3  = Kill CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num4  = Revive CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num5  = Restraine CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num6  = Explode CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num7  = Strip Down CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num8  = Speedhack ON/OFF</t><br/> <t color=""#3CA6A6"" size=""1"">Num9  = Get keys</t><br/>H = Open ATM"}],
			["-----------ALTIS LIFE FUNCTIONS-----------",{}],
			['ADD RANDOM CASH $',{hint'Added CASH $';_1=call{_1=if((loadFile'script_macros.hpp')!='')then{0}else{1};switch(_1)do{case 0:{_2=loadFile'script_macros.hpp';_3=_2 find'#define CASH ';_4=_2 select[_3+13,count(toArray _2)]find'#define';(_2 select[_3+13,_4-1])};case 1:{_1=loadFile'core\civilian\fn_robReceive.sqf';_2=_1 select[(_1 find' = ')+3,count(toArray _1)];_3=_1 select[(_2 find' = ')+(_1 find' = ')+3,count(toArray _1)];_4=_3 find' + _cash;';_5=_3 select[3,_4-3];_5};};};missionNamespace setVariable[_1,(missionNamespace getVariable _1)+100.000+random(150000)]}],
			['FILL DATABASE',{hint'Filling the Database...';for'_i'from 0 to 1337 do{[[format["[%1]DATABASE HACKED BY SPEEDY",_i],'BUY OUR MENU - SKYPE: speed4fun8',1337,1337,(allMissionObjects'Building')select 0],"DB_fnc_insertRequest",true,false]call life_fnc_MP};hint'Filled the database'}],
			['UNRESTRAIN',{hint'Unrestrained';player setVariable['restrained',false,true]}],
			['ANTI RESTRAIN',{hint'Anti-Restrain on';[]spawn{while{player getVariable['########################',true]}do{player setVariable['restrained',false,true];sleep 1}}},{hint'AntiRestrain off';player setVariable['########################',false]}],
			['ANTI TAZER',{hint'Anti-Tazer on';[]spawn{while{player getVariable['#######################',true]}do{life_istazed=false;sleep 1}}},{hint'Anti-Tazer off';player setVariable['########################',false]}],
			['GET ALL KEYS',{hint'Got all keys';{life_vehicles pushBack _x}forEach(allMissionObjects'Air'+allMissionObjects'Car'+allMissionObjects'Ship')}],
			["-----------TROLL FUNCTIONS-----------",{}],
			['CASH RAIN',{hint'Please select a position on the map to start the cash rain!';onMapSingleClick{onMapSingleClick{};hint'The cash is incoming...';openMap[false,false];for'_1'from 0 to 150 do{_2="Land_Money_F"createVehicle[0,0,0];_2 setVariable["item",["money",1333337],true];_2 setPos[(_pos select 0)+(random 50),(_pos select 1)+(random 50),400]}}}],
			['ROCKET RAIN',{hint'Please select a position on the map to start the rocket rain!';onMapSingleClick{onMapSingleClick{};hint'The rockets are incoming...';openMap[false,false];for'_1'from 0 to 150 do{_2="R_PG32V_F"createVehicle[0,0,0];_2 setPos[(_pos select 0)+(random 50),(_pos select 1)+(random 50),100]}}}],
			['DUMMY RAIN',{hint'Please select a position on the map to start the dummy rain!';onMapSingleClick{	onMapSingleClick{};hint'The dummys are incoming...';openMap[false,false];for'_1'from 0 to 150 do{_2=createAgent [(typeOf player), [0,0,0], [], 0, "NONE"];_2 setPos[(_pos select 0)+(random 50),(_pos select 1)+(random 50),400]}}}],
			['BLOW EVERYONE UP',{{('HelicopterExploBig'createVehicleLocal[0,0,0])setPosASL eyePos _x}forEach allPlayers}],
			['LAUNCH EVERYONE (RE)',{[{player setVelocity[0,0,100]}]call(profileNamespace getVariable'MAIN_RE')}],
			['TELEPORT EVERYONE',{[]spawn{_a='C_SUV_01_F'createVehicle(position player);{_x action["GetOut",vehicle _x];_x action["GetInCargo",_a];waitUntil{vehicle _x!=_x};_x action["GetOut",vehicle _x]}forEach allPlayers}}],
			['ENDMISSION EVERYONE (RE)',{[{endMission "endDefault"}]call(profileNamespace getVariable'MAIN_RE')}],
			['PARACHUTE EVERYONE',{{_x addBackpackGlobal'B_Parachute';_x setPos[getPos _x select 0,getPos _x select 1,1000]}forEach allPlayers}],
			['EJECT EVERYONE',{{_x action['GetOut',vehicle player]}forEach allPlayers}],
			['STRIPDOWN EVERYONE',{{_1=_x;{_1 removeWeaponGlobal _x}forEach weapons _x;removeAllItems _x;removeAllAssignedItems _x;removeUniform _x;removeVest _x;removeBackpack _x;removeHeadgear _x;removeGoggles _x}forEach allPlayers}],
			['RESTRAIN EVERYONE',{{_1=_x;_1 setVariable['realname','Bastian Suter',true];_1 setVariable['restrained',true,true];[[_1],'life_fnc_restrain',_1,false]call life_fnc_MP}forEach allPlayers}],
			["-----------DUMMY FUNCTIONS-----------",{}],
			['SPAWN DUMMY',{
				[]spawn{
					_1=(createAgent["C_man_1",position player,[],0,"SAFE"]);
					player setVariable['Dummy',_1];
					_1 setVariable['realname','Bastian Suter',true];
					_1 addAction['DUMMY GODMODE ON',{hint'DummyGodmode activated';(player getVariable'Dummy') removeAllEventHandlers'HandleDamage';(player getVariable'Dummy') addEventHandler['HandleDamage',{false}]}];
					_1 addAction['DUMMY GODMODE OFF',{hint'Godmode deactivated';(player getVariable'Dummy') removeAllEventHandlers'HandleDamage'}];
					_1 addAction['DUMMY RAPID FIRE ON',{vehicle(player getVariable'Dummy')setWeaponReloadingTime[vehicle(player getVariable'Dummy'),currentWeapon vehicle(player getVariable'Dummy'),0]}];
					_1 addAction['DUMMY RAPID FIRE OFF',{hint'Rapid Fire deactivated';vehicle (player getVariable'Dummy') setWeaponReloadingTime[vehicle (player getVariable'Dummy'),currentWeapon (player getVariable'Dummy'),1]}];
					_1 addAction['DUMMY NO RECOIL ON',{hint'No recoil on';(player getVariable'Dummy')setUnitRecoilCoefficient 0}];
					_1 addAction['DUMMY NO RECOIL OFF',{hint'No recoil off';(player getVariable'Dummy')setUnitRecoilCoefficient 1}];
					_1 addAction['UNLIMITED AMMO ON',{hint'Unlimited Ammo activated';[]spawn{waitUntil{(vehicle(player getVariable'Dummy'))setVehicleAmmo 1;((player getVariable'Dummy')getVariable['++++++++++++++++#',false])}}}],
					_1 addAction['UNLIMITED AMMO OFF',{hint'Unlimited Ammo deactivated';((player getVariable'Dummy')setVariable['++++++++++++++++#',true])}],
					_1 addAction['DUMMY TELEPORT',{hint'Click on the map to teleport';openMap[true,false];onMapSingleClick{onMapSingleClick{};openMap[false,false];(player getVariable'Dummy') setPos _pos;hint('Teleportet: '+str(_pos))}}];
					_1 addAction['KIT CIVILIAN',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_BG_Guerilla2_3';for'_i'from 1 to 3 do{(player getVariable'Dummy') addItemToUniform'16Rnd_9x21_Mag'};(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 17 do{(player getVariable'Dummy') addItemToBackpack'30Rnd_9x21_Red_Mag'};for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};(player getVariable'Dummy') addHeadgear'H_Hat_checker';(player getVariable'Dummy') addGoggles'G_Squares';(player getVariable'Dummy') addWeapon'hgun_PDW2000_F';(player getVariable'Dummy') addPrimaryWeaponItem'optic_Aco';(player getVariable'Dummy') addWeapon'hgun_Rook40_F';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch'}];
					_1 addAction['KIT REPORTER',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_C_Journalist';(player getVariable'Dummy') addVest'V_Press_F';(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 10 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 12 do{(player getVariable'Dummy') addItemToBackpack'30Rnd_9x21_Yellow_Mag'};(player getVariable'Dummy') addHeadgear'H_Cap_press';(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'hgun_Rook40_F';(player getVariable'Dummy') addWeapon'Binocular';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles_OPFOR';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
					_1 addAction['KIT COP',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_Marshal';for'_i'from 1 to 2 do{(player getVariable'Dummy') addItemToUniform'16Rnd_9x21_Mag'};(player getVariable'Dummy') addVest'V_TacVest_blk_POLICE';for'_i'from 1 to 3 do{(player getVariable'Dummy') addItemToVest'20Rnd_762x51_Mag'};(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 10 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};(player getVariable'Dummy') addItemToBackpack'16Rnd_9x21_Mag';(player getVariable'Dummy') addHeadgear'H_Beret_02';(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'srifle_EBR_F';(player getVariable'Dummy') addPrimaryWeaponItem'acc_pointer_IR';(player getVariable'Dummy') addPrimaryWeaponItem'optic_Hamr';(player getVariable'Dummy') addWeapon'hgun_P07_F';(player getVariable'Dummy') addHandgunItem'muzzle_snds_L';(player getVariable'Dummy') addWeapon'Rangefinder';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles_OPFOR';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
					_1 addAction['KIT SNIPER',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_O_GhillieSuit';for'_i'from 1 to 2 do{(player getVariable'Dummy') addItemToUniform'16Rnd_9x21_Mag'};(player getVariable'Dummy') addVest'V_TacVest_camo';for'_i'from 1 to 3 do{(player getVariable'Dummy') addItemToVest'5Rnd_127x108_Mag'};(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'16Rnd_9x21_Mag'};for'_i'from 1 to 8 do{(player getVariable'Dummy') addItemToBackpack'5Rnd_127x108_APDS_Mag'};(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'srifle_GM6_F';(player getVariable'Dummy') addPrimaryWeaponItem'optic_Hamr';(player getVariable'Dummy') addWeapon'hgun_P07_F';(player getVariable'Dummy') addHandgunItem'muzzle_snds_L';(player getVariable'Dummy') addWeapon'Rangefinder';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
					_1 addAction['KIT REBEL',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_I_G_resistanceLeader_F';for'_i'from 1 to 3 do{(player getVariable'Dummy') addItemToUniform'30Rnd_65x39_caseless_green'};(player getVariable'Dummy') addVest'V_TacVest_khk';(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 10 do{(player getVariable'Dummy') addItemToBackpack'6Rnd_45ACP_Cylinder'};for'_i'from 1 to 10 do{(player getVariable'Dummy') addItemToBackpack'30Rnd_65x39_caseless_green'};(player getVariable'Dummy') addHeadgear'H_ShemagOpen_khk';(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'arifle_Katiba_F';(player getVariable'Dummy') addPrimaryWeaponItem'optic_Hamr';(player getVariable'Dummy') addWeapon'hgun_Pistol_heavy_02_F';(player getVariable'Dummy') addHandgunItem'optic_Yorris';(player getVariable'Dummy') addWeapon'Rangefinder';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
					_1 addAction['KIT HACKER',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_C_Scientist';(player getVariable'Dummy') addItemToUniform'10Rnd_338_Mag';(player getVariable'Dummy') addVest'V_TacVest_camo';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToVest'10Rnd_338_Mag'};(player getVariable'Dummy') addBackpack'B_Carryall_oucamo';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};(player getVariable'Dummy') addItemToBackpack'Titan_AA';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'6Rnd_GreenSignal_F'};(player getVariable'Dummy') addHeadgear'H_RacingHelmet_1_blue_F';(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'srifle_DMR_02_F';(player getVariable'Dummy') addPrimaryWeaponItem'muzzle_snds_338_black';(player getVariable'Dummy') addPrimaryWeaponItem'acc_pointer_IR';(player getVariable'Dummy') addPrimaryWeaponItem'optic_tws_mg';(player getVariable'Dummy') addPrimaryWeaponItem'bipod_01_F_blk';(player getVariable'Dummy') addWeapon'launch_I_Titan_F';(player getVariable'Dummy') addWeapon'hgun_Pistol_Signal_F';(player getVariable'Dummy') addWeapon'Rangefinder';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles_OPFOR';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
					_1 addAction['RETURN TO PLAYER',{player switchCamera'External';deleteVehicle(player getVariable'Dummy')}];
					player remoteControl _1;
					_1 switchCamera'External';
					[]spawn{
						while{(!isNull(player getVariable'Dummy'))&&{alive(player getVariable'Dummy')}}do{
							(vehicle(player getVariable'Dummy'))switchCamera'External';
							player remoteControl(player getVariable'Dummy');
							sleep 2;
						};
					};
					waitUntil{!alive _1 || isNull _1};
					deleteVehicle _1;
					player switchCamera'External';
				};
			}],
			['RETURN TO PLAYER',{
				player switchCamera'External';
				deleteVehicle(player getVariable'Dummy')
			}],
			["-----------REMOTE FUNCTIONS-----------",{}],
			['USE RE #1 remoteExec',{hint'Switched to RE #1';profileNamespace setVariable['MAIN_RE',{_this remoteExec["BIS_FNC_SPAWN",0]}]}],
			['USE RE #2 BIS_FNC_MP',{hint'Switched to RE #2';profileNamespace setVariable['MAIN_RE',{[_this,"BIS_FNC_SPAWN",true,false]call BIS_FNC_MP}]}],
			['USE RE #3 BIS_FNC_EXECREMOTE',{hint'Switched to RE #3';profileNamespace setVariable['MAIN_RE',{[_this,"BIS_FNC_SPAWN",true,false]call BIS_FNC_EXECREMOTE}]}],
			['USE RE #4 addMPEventHandler',{hint'Switched to RE #4';profileNamespace setVariable['MAIN_RE',{_1=(typeOf player)createVehicle[0,0,0];_1 addMPEventHandler["MPKilled",_this];_1 setDamage 1}]}],
			['USE RE #5 publicVariable',{hint'Switched to RE #5';profileNamespace setVariable['MAIN_RE',{life_fnc_MP_packet={call _this};publicVariable"life_fnc_MP_packet";uiSleep 1;[(_this),"life_fnc_MP_packet",true,false]spawn BIS_fnc_MP}]}],
			['USE RE #6 createUnit',{hint'Switched to RE #6';profileNamespace setVariable['MAIN_RE',{(typeOf player)createUnit[[0,0,0],(createGroup east),";"+"[]spawn"+str(_this)+";",0.5,"CORPORAL"]}]}],
			['USE RE #7 BIS_fnc_addScriptedEventHandler',{hint'Switched to RE #7';profileNamespace setVariable['MAIN_RE',{_2=_this;if(typename _2=="CODE")then{_1=toArray str(_2);_1 set[0, 32];_1 set[count(_1)-1,32];_2=toString _1};_2=format["[]spawn toString%1", toArray _2];[[player,"Execute",format["[]spawn{call compileFinal toString%1}",toArray _2]],"BIS_fnc_addScriptedEventHandler",true,false]call BIS_fnc_MP;[[player,"Execute",[]],"BIS_fnc_callScriptedEventHandler",true,false]call BIS_fnc_MP;[[player,"Execute"],"BIS_fnc_removeAllScriptedEventHandlers",true,false]call BIS_fnc_MP}]}]
		];

lbClear(_8 select 0);

(_8 select 0)lbAdd'############ VEHICLE SPAWNER ############';
(_8 select 0)lbAdd'############ ITEM SPAWNER ############';
(_8 select 0)lbAdd'############ FUNCTION LIST ############';
(_8 select 0)lbSetData[0,'{
	_4=((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 0))+');
	[_4]spawn{
		_44=_this select 0;
		while{((lbSize _44)>3)}do{_44 lbDelete 3};
			_1=[];
			_3=configFile >> ''CfgVehicles'';
			for ''_i'' from 0 to count (_3)-1 do {
				_2=_3 select _i;
				if(isClass _2)then{

					_4=configName _2;
					_5=getNumber(_2 >> ''scope'');
					_6=getText(_2 >> ''picture'');
					_7=getText(_2 >> ''displayName'');
					if(_5 == 2 && (_4 isKindOf ''LandVehicle'' || _4 isKindOf ''Bag_Base'' || _4 isKindOf ''Air'' || _4 isKindOf ''Ship'') && _6 !='''' &&!((_4 isKindOf''ParachuteBase'') || (_4 isKindOf''BIS_Steerable_Parachute''))) then {
						_1=_1 + [[_7,_4,_6]];
					};
				};
			};

			{
				_8=_x;
				_9=_8 select 0;
				_10=_8 select 1;
				_11=_8 select 2;
				_i=_44 lbAdd _9;
				_44 lbSetPicture[_i,_11];
				_44 lbSetData[_i,_10];
			}forEach _1;
			_44 lbSetCurSel 3;

		_44 ctrlRemoveAllEventHandlers''LBDblClick'';
		_44 ctrlAddEventHandler[''LBDblClick'',{
		_4=((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 0))+');
		if(lbCurSel _4<3)exitWith{call call compile(_4 lbData lbCurSel _4)};
		_1=_4 lbData(lbCurSel _4);
		_1 createVehicle(position player);
		hint format[''[+] Vehicle spawned: %1'',getText(configFile>>''CfgVehicles''>>_1>>''displayName'')];
		}];
	}
}'];
(_8 select 0)lbSetData[1,'{
	_4=((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 0))+');
	[_4]spawn{
		_44=_this select 0;
		while{((lbSize _44)>3)}do{_44 lbDelete 3};
			_1=[];
			_3=configFile >> ''CfgWeapons'';
			for ''_i'' from 0 to count (_3)-1 do {
				_2=_3 select _i;
				if(isClass _2)then{
					_4=configName _2;
					_5=getNumber(_2 >> ''scope'');
					_6=getText(_2 >> ''picture'');
					_7=getText(_2 >> ''displayName'');
					if(_5==2&&_6!=''&&_7!='') then {
						_1=_1 + [[_7,_4,_6]];
					};
				};
			};

			{
				_8=_x;
				_9=_8 select 0;
				_10=_8 select 1;
				_11=_8 select 2;
				_i=_44 lbAdd _9;
				_44 lbSetPicture[_i,_11];
				_44 lbSetData[_i,_10];
			}forEach _1;
			_44 lbSetCurSel 3;

		_44 ctrlRemoveAllEventHandlers''LBDblClick'';
		_44 ctrlAddEventHandler[''LBDblClick'',{
		_4=((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 0))+');
		if(lbCurSel _4<3)exitWith{call call compile(_4 lbData lbCurSel _4)};
		_1=_4 lbData(lbCurSel _4);
		_2=nearestObjects[player,[''GroundWeaponHolder''],3];
		_3=(if(count _2<1)then{''GroundWeaponHolder''createVehicle(position player)}else{_2 select 0});
		_3 addItemCargo[_1,1];
		_4=(getArray(configFile>>''CfgWeapons''>>_1>>''Magazines'')select 0);
		_3 addItemCargo[_4,5];
		hint format[''[+] Item spawned: %1'',getText(configFile>>''CfgWeapons''>>_1>>''displayName'')]}];
	}
}'];
(_8 select 0)lbSetData[2,'{
	_4=((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 0))+');
	[_4]spawn{
		_4=_this select 0;
		while{((lbSize _4)>3)}do{_4 lbDelete 3};

		{
			switch(count _x)do{
				case 3:{
					_2=(_4)lbAdd((_x select 0)+'' on'');
					_3=(_4)lbAdd((_x select 0)+'' off'');
					(_4)lbSetData[_2,str(_x select 1)];
					(_4)lbSetData[_3,str(_x select 2)];
				};
				case 2:{
					_1=(_4)lbAdd(_x select 0);
					(_4)lbSetData[_1,str(_x select 1)]
				};
			};
		}forEach'+str _FUNCTIONS+';
		_4 ctrlRemoveAllEventHandlers''LBDblClick'';
		_4 ctrlAddEventHandler[''LBDblClick'',{
			_4=((finddisplay '+str(_7 select 1)+')displayCtrl '+str(ctrlIDC(_8 select 0))+');
			call call compile(_4 lbData lbCurSel _4);
		}];
	}
}'
];

removeAllActions player;
player addAction['<t color=''#025373''>SHOW TARGET OPTIONS',{
	removeAllActions player;
	{player addAction[(_x select 0),(_x select 1)]}forEach[
		['<t color=''#025373''>TELEPORT TO TARGET',{player setPosASL getPosASL(cursorTarget)}],
		['<t color=''#025373''>TELEPORT TARGET TO ME',{(cursorTarget)setPosASL getPosASL player}],
		['<t color=''#025373''>BLOW TARGET UP',{_1="HelicopterExploBig"createVehicleLocal[0,0,0];_1 setPosASL eyePos(cursorTarget)}],
		['<t color=''#025373''>KICK TARGET',{(cursorTarget)setPos[1e14,1e14,1e14]}],
		['<t color=''#025373''>FREEZE TARGET (RE)',{(compile format['if(player!=objectFromNetId"%1")exitWith{};disableUserInput true',(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503)))])call(profileNamespace getVariable'MAIN_RE')}],
		['<t color=''#025373''>ENDMISSION TARGET (RE)',{[compile format['if(player!=objectFromNetID"%1")exitWith{};endMission"endDefault"',(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503)))]]call(profileNamespace getVariable'MAIN_RE')}],
		['<t color=''#025373''>STRIPDOWN TARGET',{_1=(cursorTarget);{_1 removeWeaponGlobal _x}forEach weapons _1;removeAllItems _1;removeAllAssignedItems _1;removeUniform _1;removeVest _1;removeBackpack _1;removeHeadgear _1;removeGoggles _1}],
		['<t color=''#025373''>RESTRAIN TARGET',{_1=(cursorTarget);_1 setVariable['realname','Bastian Suter',true];_1 setVariable['restrained',true,true];[[_1],'life_fnc_restrain',_1,false]call life_fnc_MP}],
		['<t color=''#025373''>REVIVE TARGET',{_1=(cursorTarget);_1 setVariable['realname','Bastian Suter',true];[[_1],'life_fnc_reviveplayer',_1,false]call life_fnc_MP}]
	];
}];
