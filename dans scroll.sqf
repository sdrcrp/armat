[]spawn {

    danisthebestcopyandpasterlol__button_player = player;
    danisthebestcopyandpasterlol__button_player addEventHandler ["InventoryOpened", {
    mah_donny_spawnhahahhah = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    danisthebestcopyandpasterlol__ctrl = (findDisplay 602) ctrlCreate ["RscButton",1928];
    danisthebestcopyandpasterlol__ctrl ctrlSetPosition [-0.07,-0.116,0.36,0.14];
    danisthebestcopyandpasterlol__ctrl ctrlSetFont "PuristaMedium";   
    danisthebestcopyandpasterlol__ctrl ctrlSetBackgroundColor [-0.851951,-0.498818,0.3,0.04];  
    danisthebestcopyandpasterlol__ctrl ctrlCommit 0;
    danisthebestcopyandpasterlol__ctrl ctrlSetText "open menu on scroll";
	danisthebestcopyandpasterlol__ctrl ctrlSetTextColor [1,0,0,1];
    danisthebestcopyandpasterlol__ctrl ctrlAddEventHandler ["ButtonClick", "[]spawn danisthebestcopyandpasterlol__main"];
    };
    }];

danisthebestcopyandpasterlol__closemenu = {
danisthebestcopyandpasterlol__close_player = player;
removeAllActions danisthebestcopyandpasterlol__close_player; 
["TaskSucceeded", ["", "press the button in your inventory to open menu"]]call BIS_fnc_showNotification;
};

danisthebestcopyandpasterlol__main = {
danisthebestcopyandpasterlol__main_player = player;
removeAllActions danisthebestcopyandpasterlol__main_player;
danisthebestcopyandpasterlol__main_player addAction["<t size=""1.1"" font=""RobotoCondensed"" color=""#ff00aa"">Dan's Scroll</t>",{[]}];
danisthebestcopyandpasterlol__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Life Stuff</t>",{[]spawn danisthebestcopyandpasterlol__sub1}];
danisthebestcopyandpasterlol__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Weapon Stuff</t>",{[]spawn danisthebestcopyandpasterlol__sub2}];
danisthebestcopyandpasterlol__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Health tings</t>",{[]spawn danisthebestcopyandpasterlol__sub3}];
danisthebestcopyandpasterlol__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">edgy memes</t>",{[]spawn danisthebestcopyandpasterlol__sub4;}];
danisthebestcopyandpasterlol__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">loadouts</t>",{[]spawn danisthebestcopyandpasterlol__sub5;}];
danisthebestcopyandpasterlol__main_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">close menu</t>",{[]spawn danisthebestcopyandpasterlol__closemenu;}];
};

danisthebestcopyandpasterlol__sub1 = {
danisthebestcopyandpasterlol__sub1_player = player;
removeAllActions danisthebestcopyandpasterlol__main_player;
danisthebestcopyandpasterlol__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Lîfe Levels</t>",{[]spawn danisthebestcopyandpasterlol__levels;}];
danisthebestcopyandpasterlol__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Redgull Ànd Bandage</t>",{[]spawn danisthebestcopyandpasterlol__rab;}];
danisthebestcopyandpasterlol__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Àll Lîcence's</t>",{[]spawn danisthebestcopyandpasterlol__passport;}];
danisthebestcopyandpasterlol__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Mónëy BÀgs</t>",{[]spawn danisthebestcopyandpasterlol__bag;}];
danisthebestcopyandpasterlol__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">ÀTM</t>",{life_fnc_atmMenu;}];
danisthebestcopyandpasterlol__sub1_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">back</t>",{[]spawn danisthebestcopyandpasterlol__main;}];
};

danisthebestcopyandpasterlol__sub2 = {
danisthebestcopyandpasterlol__sub2_player = player;
removeAllActions danisthebestcopyandpasterlol__sub2_player;
danisthebestcopyandpasterlol__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Ünîmîtëd Àmmô</t>",{[]spawn danisthebestcopyandpasterlol__unlim_ammo;}];
danisthebestcopyandpasterlol__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Nó Rëcöíl</t>",{[]spawn danisthebestcopyandpasterlol__no_recoil;}];
danisthebestcopyandpasterlol__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Sîlént Àîm</t>",{[]spawn danisthebestcopyandpasterlol__aimbot;}];
danisthebestcopyandpasterlol__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Mrdér Módé</t>",{[]spawn danisthebestcopyandpasterlol__murder;}];
danisthebestcopyandpasterlol__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">ÉSP</t>",{[]spawn danisthebestcopyandpasterlol__esp;}];
danisthebestcopyandpasterlol__sub2_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">back</t>",{[]spawn danisthebestcopyandpasterlol__main;}];
};

danisthebestcopyandpasterlol__sub3 = {
danisthebestcopyandpasterlol__sub3_player = player;
removeAllActions danisthebestcopyandpasterlol__sub3_player;
danisthebestcopyandpasterlol__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Gód Módé</t>",{[]spawn danisthebestcopyandpasterlol__god_mode;}];
danisthebestcopyandpasterlol__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Véhíclé Gód</t>",{[]spawn danisthebestcopyandpasterlol__car_god;}];
danisthebestcopyandpasterlol__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">héÀl tÀrgét</t>",{cursorTarget setDamage 0;}];
danisthebestcopyandpasterlol__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">héÀl sélf</t>",{player setDamage 0;}];
danisthebestcopyandpasterlol__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">rév tÀrgét</t>",{[]spawn danisthebestcopyandpasterlol__rev_target;}];
danisthebestcopyandpasterlol__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">kîll tÀrgét</t>",{cursorTarget setDamage 1;}];
danisthebestcopyandpasterlol__sub3_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">back</t>",{[]spawn danisthebestcopyandpasterlol__main;}];
};

danisthebestcopyandpasterlol__sub4 = {
danisthebestcopyandpasterlol__sub4_player = player;
removeAllActions danisthebestcopyandpasterlol__sub4_player;
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">nóôkér</t>",{[]spawn danisthebestcopyandpasterlol__nuker_script;}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">néwsbÀnnér lol</t>",{[]spawn danisthebestcopyandpasterlol__banner;}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">gét kéys</t>",{life_vehicles set [count life_vehicles, cursorTarget];}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Tp Àll</t>",{[]spawn danisthebestcopyandpasterlol__tp_all;}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">mÀp tpÀrinó</t>",{[]spawn danisthebestcopyandpasterlol__tp_map;}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">un réstrÀin sélf</t>",{[]spawn danisthebestcopyandpasterlol__un_rest_self;}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">un réstrÀin tÀrgét</t>",{[]spawn danisthebestcopyandpasterlol__un_rest_target;}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">éxécutór</t>",{[]spawn danisthebestcopyandpasterlol__executor;}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aax"">vÀriablé scÀnnór</t>",{[]spawn danisthebestcopyandpasterlol__variablescanner;}];
danisthebestcopyandpasterlol__sub4_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">back</t>",{[]spawn danisthebestcopyandpasterlol__main;}];
};

danisthebestcopyandpasterlol__sub5 = {
danisthebestcopyandpasterlol__sub5_player = player;
removeAllActions danisthebestcopyandpasterlol__main_player;
danisthebestcopyandpasterlol__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">lannister m27</t>",{[]spawn danisthebestcopyandpasterlol__m27;}];
danisthebestcopyandpasterlol__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">lannister mk1</t>",{[]spawn danisthebestcopyandpasterlol__mk1;}];
danisthebestcopyandpasterlol__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">LDC m27</t>",{[]spawn danisthebestcopyandpasterlol_LDCM27;}];
danisthebestcopyandpasterlol__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">BlackR m27</t>",{[]spawn danisthebestcopyandpasterlol_BlackM27;}];
danisthebestcopyandpasterlol__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">Swat m27</t>",{[]spawn danisthebestcopyandpasterlol_LanM27Swat;}];
danisthebestcopyandpasterlol__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#ff00aa"">MarshalsM27</t>",{[]spawn danisthebestcopyandpasterlol_MarshalsM27;}];
danisthebestcopyandpasterlol__sub5_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">back</t>",{[]spawn danisthebestcopyandpasterlol__main;}];
};

danisthebestcopyandpasterlol__variablescanner = {
danisthebestcopyandpasterlol__varsc_player = player;
	danisthebestcopyandpasterlol__varsc_player = player; danisthebestcopyandpasterlol__varsc_player addAction ["<t size=""1.1"" font=""PuristaLight"" color=""#FFFFFF"">Open Variable Scanner</t>",{_Dialog = [	[1100,"",[1,"Variable Scanner by Alofa",[0.371093 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.257813 * safezoneW,0.022 * safezoneH],[1,1,1,1],[0.9,0.4,0.6,1],[-1,-1,-1,-1],",-1"],[]],	[2200,"",[1,"",[0.371095 * safezoneW + safezoneX,0.247 * safezoneH + safezoneY,0.257813 * safezoneW,0.396 * safezoneH],[-1,-1,-1,-1],[0,0,0,0.5],[-1,-1,-1,-1],",-1"],[]],	[1402,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1500,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[0,0,0,0],",-1"],[]],	[1400,"",[1,"                                    >>Current Variable Value<<",[0.37625 * safezoneW + safezoneX,0.258 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[2100,"",[1,"",[0.37625 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[1,1,1,1],[0,0,0,0],[0,0,0,0],",-1"],[]],	[1600,"",[1,"Search for this value",[0.37625 * safezoneW + safezoneX,0.346 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1601,"",[1,"Edit Value",[0.37625 * safezoneW + safezoneX,0.599 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1401,"",[1,"                                      >>New Variable Value<<",[0.37625 * safezoneW + safezoneX,0.555 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]]];(finddisplay 46) createDisplay "RscDisplayChat";{	private["_ctrl","_buttonaction","_text","_secondarray","_activecolor","_textcolor","_backcolor","_pos","_idc","_classname","_ctrltype"];	_idc = _x select 0;	_classname = _x select 1;	_secondarray = (_x select 2);	_text = _secondarray select 1;	_pos = _secondarray select 2;	_textcolor = _secondarray select 3;	_backcolor = _secondarray select 4;	_activecolor = _secondarray select 5;	_buttonaction = _secondarray select 6;	_ctrltype = (format["%1",_idc] select [0,2]);	_ctrltype = call compile _ctrltype;	_ctrltype = switch(_ctrltype) do {		case 11: {"RscStructuredText"};		case 12: {"RscPicture"};		case 14: {"RscEdit"};		case 15: {"RscListBox"};		case 16: {"RscButton"};		case 21: {"RscCombo"};		case 22: {"RscBackground"};	};	_ctrl = (finddisplay 24) ctrlCreate [_ctrltype, _idc];	_ctrl ctrlSetPosition _pos;	if(_ctrltype != "RscTree") then {		_ctrl ctrlSetTextColor _textcolor;		_ctrl ctrlSetBackgroundColor _backcolor;		_ctrl ctrlSetActiveColor _activecolor;		_ctrl ctrlSetText _text;	};	if!(_buttonaction == "") then {		_ctrl buttonsetAction _buttonaction;	};	_ctrl ctrlCommit 0.3;	danisthebestcopyandpasterlol__varsc_player setVariable ["MLRN_ALLCTRLS",(danisthebestcopyandpasterlol__varsc_player getVariable "MLRN_ALLCTRLS") + [_ctrl]];}forEach _Dialog;((finddisplay 24) displayCtrl 2100) lbAdd "STRING"; ((finddisplay 24) displayCtrl 2100) lbAdd "CODE"; ((finddisplay 24) displayCtrl 2100) lbAdd "SCALAR"; ((finddisplay 24) displayCtrl 2100) lbAdd "BOOLEAN"; ((finddisplay 24) displayCtrl 2100) lbSetCurSel 0;((finddisplay 24) displayCtrl 1600) buttonSetAction '	if(ctrlText((finddisplay 24) displayCtrl 1400) == "") exitWith {hint "You have to enter a value"};	private["_vars"];	_vars = [];	{		_type = ((finddisplay 24) displayCtrl 2100) lbText lbCurSel ((finddisplay 24) displayCtrl 2100);		_value = ctrlText((finddisplay 24) displayCtrl 1400);  		if(typeName(missionNamespace getVariable _x) == _type) then {if(format["%1",(missionNamespace getVariable _x)] == _value) then {_vars pushBack [_x,missionNamespace getVariable _x]}};	}	forEach allVariables missionNamespace;	if(count _vars == 0) exitWith {hint "[FAILED] No Variables with this value..."};	lbClear ((finddisplay 24) displayCtrl 1500);	{		((finddisplay 24) displayCtrl 1500) lbAdd format["%1 | %2",_x select 0,format["%1",_x select 1]];		((finddisplay 24) displayCtrl 1500) lbSetData [(lbSize((finddisplay 24) displayCtrl 1500))-1,_x select 0];	}	forEach _vars;	hint "[SUCCESS] Variables found...";	((finddisplay 24) displayCtrl 1500) lbSetCurSel 0;';((finddisplay 24) displayCtrl 1601) buttonSetAction '	_newvalue = ctrlText((finddisplay 24) displayCtrl 1401);	_currvar = ((finddisplay 24) displayCtrl 1500) lbData lbCurSel ((finddisplay 24) displayCtrl 1500);	call compile format["%1 = %2;",_currvar,_newvalue];	hint "[SUCCESS] Changed Variable Value";	(finddisplay 24) closeDisplay 0;'}]; danisthebestcopyandpasterlol__varsc_player addAction ["<t size=""1.1"" font=""PuristaLight"" color=""#F76060"">Remove Variable Scanner</t>","removeAllActions player"];					
					};

danisthebestcopyandpasterlol__no_recoil = {
	danisthebestcopyandpasterlol__recoil_player = player;
	danisthebestcopyandpasterlol__recoil_player setUnitRecoilCoefficient 0; danisthebestcopyandpasterlol__recoil_player setCustomAimCoef 0.01;
};

danisthebestcopyandpasterlol__levels = {
life_currentExpLevel = 40; life_currentExp = 183672; life_currentPerkPoints = 1000; [0] call mav_ttm_fnc_clientSendUpdateToServer; [1] call mav_ttm_fnc_clientSendUpdateToServer; [2] call mav_ttm_fnc_clientSendUpdateToServer; [3] call mav_ttm_fnc_clientSendUpdateToServer;
};

danisthebestcopyandpasterlol__rab = {
life_inv_akeycard = 1; life_inv_bandage = 25; life_inv_medkit = 1; life_inv_redgull = 25;
};

danisthebestcopyandpasterlol__passport = {
life_licenses =
	[
		["license_cop_air","cop"],
		["license_cop_swat","cop"],
		["license_cop_cg","cop"],
		["license_civ_driver","civ"],
		["license_civ_air","civ"],
		["license_civ_heroin","civ"],
		["license_civ_marijuana","civ"],
		["license_civ_gang","civ"],
		["license_civ_boat","civ"],
		["license_civ_oil","civ"],
		["license_civ_home","civ"],
		["license_civ_dive","civ"],
		["license_civ_truck","civ"],
		["license_civ_gun","civ"],
		["license_civ_rebel","civ"],
		["license_civ_coke","civ"],
		["license_civ_diamond","civ"],
		["license_civ_copper","civ"],
		["license_civ_iron","civ"],
		["license_civ_sand","civ"],
		["license_civ_salt","civ"],
		["license_civ_cement","civ"]
	];
	
	{missionNamespace setVariable[(_x select 0),true];} foreach life_licenses;
	["TaskSucceeded", ["", "Liscenses Added"]] call bis_fnc_showNotification;
};

danisthebestcopyandpasterlol__bag = {
 hash_bag_lmao = "Land_Sleeping_bag_blue_folded_F";
    hash_baag_player = player; 
    { _veh = hash_bag_lmao createVehicle position hash_baag_player; } forEach [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];
	_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos hash_baag_player);{_veh disableCollisionWith _x} foreach playableUnits;_veh setVariable ["pickup",false,true];_veh attachto [player, [0.1,-0.18,0], "rfemur"];_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];life_nospampls = 0;DisableUserInput false;[_veh] spawn {_veh = _this select 0;if (cobra_attached == 0) exitWith {}; while {cobra_attached == 1} do {if(vehicle player != player) then {_coolbisanigga = count attachedObjects player;if (_coolbisanigga == 1) then {detach _veh;deleteVehicle _veh;};} else {_check = count attachedObjects player;if (_check == 0) then {_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player);{_veh disableCollisionWith _x} foreach playableUnits;_veh setVariable ["pickup",false,true];_veh attachto [player, [0.1,-0.18,0], "rfemur"];_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];_veh setdir (getdir player + 180);_veh setpos (getpos _veh);["<t size='3.2' color='#04EE4A'>Heres your bag back!</t>"] call life_fnc_alerttwo;};};uiSleep 0.25;		};};
};

danisthebestcopyandpasterlol__m27 = {
 danisthebestcopyandpasterlol_LanM27_player = player;

removeAllWeapons danisthebestcopyandpasterlol_LanM27_player;
removeAllItems danisthebestcopyandpasterlol_LanM27_player;
removeAllAssignedItems danisthebestcopyandpasterlol_LanM27_player;
removeUniform danisthebestcopyandpasterlol_LanM27_player;
removeVest danisthebestcopyandpasterlol_LanM27_player;
removeBackpack danisthebestcopyandpasterlol_LanM27_player;
removeHeadgear danisthebestcopyandpasterlol_LanM27_player;
removeGoggles danisthebestcopyandpasterlol_LanM27_player;

danisthebestcopyandpasterlol_LanM27_player forceAddUniform "ALRP_Lannister_Uniform";
for "_i" from 1 to 8 do {danisthebestcopyandpasterlol_LanM27_player addItemToUniform "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_LanM27_player addVest "ALRP_Lan_Vestmemes";
for "_i" from 1 to 10 do {danisthebestcopyandpasterlol_LanM27_player addItemToVest "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_LanM27_player addBackpack "cg_invisbp";
danisthebestcopyandpasterlol_LanM27_player addItemToBackpack "ToolKit";
danisthebestcopyandpasterlol_LanM27_player addHeadgear "ALRP_BUSYHAT_2";
danisthebestcopyandpasterlol_LanM27_player addGoggles "KA_MCU";

danisthebestcopyandpasterlol_LanM27_player addWeapon "RH_M27IAR";
danisthebestcopyandpasterlol_LanM27_player addPrimaryWeaponItem "acc_pointer_IR";
danisthebestcopyandpasterlol_LanM27_player addPrimaryWeaponItem "optic_Arco_blk_F";

danisthebestcopyandpasterlol_LanM27_player linkItem "ItemMap";
danisthebestcopyandpasterlol_LanM27_player linkItem "ItemCompass";
danisthebestcopyandpasterlol_LanM27_player linkItem "Itemwatch";
danisthebestcopyandpasterlol_LanM27_player linkItem "TFAR_anprc152";
danisthebestcopyandpasterlol_LanM27_player linkItem "ItemGPS";
danisthebestcopyandpasterlol_LanM27_player linkItem "pmc_earpiece";};

danisthebestcopyandpasterlol__mk1 = {
 danisthebestcopyandpasterlol_LanMK1_player = player;

removeAllWeapons danisthebestcopyandpasterlol_LanMK1_player;
removeAllItems danisthebestcopyandpasterlol_LanMK1_player;
removeAllAssignedItems danisthebestcopyandpasterlol_LanMK1_player;
removeUniform danisthebestcopyandpasterlol_LanMK1_player;
removeVest danisthebestcopyandpasterlol_LanMK1_player;
removeBackpack danisthebestcopyandpasterlol_LanMK1_player;
removeHeadgear danisthebestcopyandpasterlol_LanMK1_player;
removeGoggles danisthebestcopyandpasterlol_LanMK1_player;

danisthebestcopyandpasterlol_LanMK1_player forceAddUniform "ALRP_Lannister_Uniform";
for "_i" from 1 to 3 do {danisthebestcopyandpasterlol_LanMK1_player addItemToUniform "20Rnd_762x51_Mag";};
danisthebestcopyandpasterlol_LanMK1_player addVest "ALRP_Lan_Vestmemes";
for "_i" from 1 to 10 do {danisthebestcopyandpasterlol_LanMK1_player addItemToVest "20Rnd_762x51_Mag";};
danisthebestcopyandpasterlol_LanMK1_player addBackpack "cg_invisbp";
danisthebestcopyandpasterlol_LanMK1_player addItemToBackpack "ToolKit";
for "_i" from 1 to 20 do {danisthebestcopyandpasterlol_LanMK1_player addItemToBackpack "20Rnd_762x51_Mag";};
danisthebestcopyandpasterlol_LanMK1_player addHeadgear "ALRP_BUSYHAT_2";
danisthebestcopyandpasterlol_LanMK1_player addGoggles "KA_MCU";

danisthebestcopyandpasterlol_LanMK1_player addWeapon "srifle_DMR_03_F";
danisthebestcopyandpasterlol_LanMK1_player addPrimaryWeaponItem "optic_Arco_blk_F";

danisthebestcopyandpasterlol_LanMK1_player linkItem "ItemMap";
danisthebestcopyandpasterlol_LanMK1_player linkItem "ItemCompass";
danisthebestcopyandpasterlol_LanMK1_player linkItem "Itemwatch";
danisthebestcopyandpasterlol_LanMK1_player linkItem "TFAR_anprc152";
danisthebestcopyandpasterlol_LanMK1_player linkItem "ItemGPS";
danisthebestcopyandpasterlol_LanMK1_player linkItem "pmc_earpiece";};

danisthebestcopyandpasterlol_LanM27Swat = {
 danisthebestcopyandpasterlol_LanM27Swat_player = player;

removeAllWeapons danisthebestcopyandpasterlol_LanM27Swat_player;
removeAllItems danisthebestcopyandpasterlol_LanM27Swat_player;
removeAllAssignedItems danisthebestcopyandpasterlol_LanM27Swat_player;
removeUniform danisthebestcopyandpasterlol_LanM27Swat_player;
removeVest danisthebestcopyandpasterlol_LanM27Swat_player;
removeBackpack danisthebestcopyandpasterlol_LanM27Swat_player;
removeHeadgear danisthebestcopyandpasterlol_LanM27Swat_player;
removeGoggles danisthebestcopyandpasterlol_LanM27Swat_player;

danisthebestcopyandpasterlol_LanM27Swat_player forceAddUniform "ALRP_SWATCpl";
for "_i" from 1 to 3 do {danisthebestcopyandpasterlol_LanM27Swat_player addItemToUniform "KA_15Rnd_45ACP_Mag";};
for "_i" from 1 to 6 do {danisthebestcopyandpasterlol_LanM27Swat_player addItemToUniform "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_LanM27Swat_player addVest "SWAT_VEST_CPL";
for "_i" from 1 to 10 do {danisthebestcopyandpasterlol_LanM27Swat_player addItemToVest "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_LanM27Swat_player addBackpack "cg_invisbp";
for "_i" from 1 to 14 do {danisthebestcopyandpasterlol_LanM27Swat_player addItemToBackpack "RH_60Rnd_556x45_Mk262";};
for "_i" from 1 to 14 do {danisthebestcopyandpasterlol_LanM27Swat_player addItemToBackpack "KA_15Rnd_45ACP_Mag";};
danisthebestcopyandpasterlol_LanM27Swat_player addHeadgear "ALRP_BUSYHAT_2";
danisthebestcopyandpasterlol_LanM27Swat_player addGoggles "Nemesis_Gasmask";

danisthebestcopyandpasterlol_LanM27Swat_player addWeapon "RH_M27IAR";
danisthebestcopyandpasterlol_LanM27Swat_player addPrimaryWeaponItem "acc_pointer_IR";
danisthebestcopyandpasterlol_LanM27Swat_player addPrimaryWeaponItem "optic_Arco_blk_F";
danisthebestcopyandpasterlol_LanM27Swat_player addWeapon "KA_FNP45";
danisthebestcopyandpasterlol_LanM27Swat_player addHandgunItem "muzzle_snds_acp";
danisthebestcopyandpasterlol_LanM27Swat_player addHandgunItem "KA_red";
danisthebestcopyandpasterlol_LanM27Swat_player addHandgunItem "KA_FNP45_shield2";

danisthebestcopyandpasterlol_LanM27Swat_player linkItem "ItemMap";
danisthebestcopyandpasterlol_LanM27Swat_player linkItem "ItemCompass";
danisthebestcopyandpasterlol_LanM27Swat_player linkItem "Itemwatch";
danisthebestcopyandpasterlol_LanM27Swat_player linkItem "TFAR_anprc152";
danisthebestcopyandpasterlol_LanM27Swat_player linkItem "ItemGPS";
danisthebestcopyandpasterlol_LanM27Swat_player linkItem "pmc_earpiece";};

danisthebestcopyandpasterlol_LDCM27 = {
 danisthebestcopyandpasterlol_LDCM27_player = player;

removeAllWeapons danisthebestcopyandpasterlol_LDCM27_player;
removeAllItems danisthebestcopyandpasterlol_LDCM27_player;
removeAllAssignedItems danisthebestcopyandpasterlol_LDCM27_player;
removeUniform danisthebestcopyandpasterlol_LDCM27_player;
removeVest danisthebestcopyandpasterlol_LDCM27_player;
removeBackpack danisthebestcopyandpasterlol_LDCM27_player;
removeHeadgear danisthebestcopyandpasterlol_LDCM27_player;
removeGoggles danisthebestcopyandpasterlol_LDCM27_player;

danisthebestcopyandpasterlol_LDCM27_player forceAddUniform "TRYK_U_B_3CD_Ranger_BDU";
danisthebestcopyandpasterlol_LDCM27_player addItemToUniform "FirstAidKit";
danisthebestcopyandpasterlol_LDCM27_player addItemToUniform "RH_60Rnd_556x45_Mk262";
danisthebestcopyandpasterlol_LDCM27_player addItemToUniform "RH_60Rnd_556x45_M855A1";
danisthebestcopyandpasterlol_LDCM27_player addVest "V_PlateCarrierH_CTRG";
for "_i" from 1 to 2 do {danisthebestcopyandpasterlol_LDCM27_player addItemToVest "FirstAidKit";};
for "_i" from 1 to 2 do {danisthebestcopyandpasterlol_LDCM27_player addItemToVest "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_LDCM27_player addBackpack "cg_invisbp";
for "_i" from 1 to 26 do {danisthebestcopyandpasterlol_LDCM27_player addItemToBackpack "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_LDCM27_player addHeadgear "TRYK_H_headsetcap_blk_Glasses";
danisthebestcopyandpasterlol_LDCM27_player addGoggles "G_Bandanna_beast";

danisthebestcopyandpasterlol_LDCM27_player addWeapon "RH_M27IAR";
danisthebestcopyandpasterlol_LDCM27_player addPrimaryWeaponItem "RH_fa556";
danisthebestcopyandpasterlol_LDCM27_player addPrimaryWeaponItem "acc_pointer_IR";
danisthebestcopyandpasterlol_LDCM27_player addPrimaryWeaponItem "optic_Arco_blk_F";

danisthebestcopyandpasterlol_LDCM27_player linkItem "ItemMap";
danisthebestcopyandpasterlol_LDCM27_player linkItem "ItemCompass";
danisthebestcopyandpasterlol_LDCM27_player linkItem "Itemwatch";
danisthebestcopyandpasterlol_LDCM27_player linkItem "TFAR_anprc152";
danisthebestcopyandpasterlol_LDCM27_player linkItem "ItemGPS";
danisthebestcopyandpasterlol_LDCM27_player linkItem "TRYK_Shemagh_TAN_NV";};

danisthebestcopyandpasterlol_BlackM27 = {
 danisthebestcopyandpasterlol_BlackRM27_player = player;

removeAllWeapons danisthebestcopyandpasterlol_BlackRM27_player;
removeAllItems danisthebestcopyandpasterlol_BlackRM27_player;
removeAllAssignedItems danisthebestcopyandpasterlol_BlackRM27_player;
removeUniform danisthebestcopyandpasterlol_BlackRM27_player;
removeVest danisthebestcopyandpasterlol_BlackRM27_player;
removeBackpack danisthebestcopyandpasterlol_BlackRM27_player;
removeHeadgear danisthebestcopyandpasterlol_BlackRM27_player;
removeGoggles danisthebestcopyandpasterlol_BlackRM27_player;

danisthebestcopyandpasterlol_BlackRM27_player forceAddUniform "TRYK_U_B_BLKBLK_R_CombatUniform";
for "_i" from 1 to 3 do {danisthebestcopyandpasterlol_BlackRM27_player addItemToUniform "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_BlackRM27_player addVest "V_PlateCarrier1_blk";
for "_i" from 1 to 11 do {danisthebestcopyandpasterlol_BlackRM27_player addItemToVest "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_BlackRM27_player addBackpack "cg_invisbp";
danisthebestcopyandpasterlol_BlackRM27_player addItemToBackpack "ToolKit";
for "_i" from 1 to 7 do {danisthebestcopyandpasterlol_BlackRM27_player addItemToBackpack "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_BlackRM27_player addHeadgear "JM_Doggo";
danisthebestcopyandpasterlol_BlackRM27_player addGoggles "Nemesis_Gasmask";

danisthebestcopyandpasterlol_BlackRM27_player addWeapon "RH_M27IAR";
danisthebestcopyandpasterlol_BlackRM27_player addPrimaryWeaponItem "acc_pointer_IR";
danisthebestcopyandpasterlol_BlackRM27_player addPrimaryWeaponItem "optic_Arco_blk_F";

danisthebestcopyandpasterlol_BlackRM27_player linkItem "ItemMap";
danisthebestcopyandpasterlol_BlackRM27_player linkItem "ItemCompass";
danisthebestcopyandpasterlol_BlackRM27_player linkItem "Itemwatch";
danisthebestcopyandpasterlol_BlackRM27_player linkItem "TFAR_anprc152";
danisthebestcopyandpasterlol_BlackRM27_player linkItem "ItemGPS";
danisthebestcopyandpasterlol_BlackRM27_player linkItem "pmc_earpiece";};

danisthebestcopyandpasterlol_MarshalsM27 = {
 danisthebestcopyandpasterlol_marshalM27_player = player;

removeAllWeapons danisthebestcopyandpasterlol_marshalM27_player;
removeAllItems danisthebestcopyandpasterlol_marshalM27_player;
removeAllAssignedItems danisthebestcopyandpasterlol_marshalM27_player;
removeUniform danisthebestcopyandpasterlol_marshalM27_player;
removeVest danisthebestcopyandpasterlol_marshalM27_player;
removeBackpack danisthebestcopyandpasterlol_marshalM27_player;
removeHeadgear danisthebestcopyandpasterlol_marshalM27_player;
removeGoggles danisthebestcopyandpasterlol_marshalM27_player;

danisthebestcopyandpasterlol_marshalM27_player forceAddUniform "U_B_Wetsuit";
for "_i" from 1 to 3 do {danisthebestcopyandpasterlol_marshalM27_player addItemToUniform "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_marshalM27_player addVest "usms_vests_usms1_Fix";
danisthebestcopyandpasterlol_marshalM27_player addItemToVest "RH_60Rnd_556x45_Mk262";
danisthebestcopyandpasterlol_marshalM27_player addBackpack "cg_invisbp";
danisthebestcopyandpasterlol_marshalM27_player addItemToBackpack "ToolKit";
for "_i" from 1 to 7 do {danisthebestcopyandpasterlol_marshalM27_player addItemToBackpack "RH_60Rnd_556x45_Mk262";};
danisthebestcopyandpasterlol_marshalM27_player addHeadgear "H_HelmetSpecB";
danisthebestcopyandpasterlol_marshalM27_player addGoggles "Nemesis_Gasmask";

danisthebestcopyandpasterlol_marshalM27_player addWeapon "RH_M27IAR";
danisthebestcopyandpasterlol_marshalM27_player addPrimaryWeaponItem "acc_pointer_IR";
danisthebestcopyandpasterlol_marshalM27_player addPrimaryWeaponItem "optic_Arco_blk_F";

danisthebestcopyandpasterlol_marshalM27_player linkItem "ItemMap";
danisthebestcopyandpasterlol_marshalM27_player linkItem "ItemCompass";
danisthebestcopyandpasterlol_marshalM27_player linkItem "Itemwatch";
danisthebestcopyandpasterlol_marshalM27_player linkItem "TFAR_anprc152";
danisthebestcopyandpasterlol_marshalM27_player linkItem "ItemGPS";
danisthebestcopyandpasterlol_marshalM27_player linkItem "pmc_earpiece";};




danisthebestcopyandpasterlol__rapid_fire = {
	hash_enabled = (findDisplay 0 displayCtrl 999 getVariable 'hash_fastaskeem');
	if (hash_enabled == 0) then {
		findDisplay 0 displayCtrl 999 setVariable ['hash_fastaskeem', 1];
	} else {
		findDisplay 0 displayCtrl 999 setVariable ['hash_fastaskeem', 0];
	};
	[] spawn {
		while {(findDisplay 0 displayCtrl 999 getVariable 'hash_fastaskeem') == 1} do {
			_c = ("player setWeapon");
			_c = _c + ("ReloadingTime [(vehicle player), currentWeapon (vehicle player), 0];");
			_b = compile _c;
			call _b;
			sleep 0.01;
		};
	};
};	

danisthebestcopyandpasterlol__unlim_ammo = {
hash_unlim_player = player;
	if (isnil("hash_ammotoggle")) then {
		hash_ammotoggle = 0;
	};
	if (hash_ammotoggle == 0) then {
		hash_ammotoggle = 1;
		cutText ["Unlimited Ammo ON", "PLAIN"];
	} else {
		hash_ammotoggle = 0;
		cutText ["Unlimited Ammo OFF", "PLAIN"];
	};
	while {hash_ammotoggle == 1} do {
		_l25 = primaryWeapon hash_unlim_player;
		_l31 = secondaryWeapon hash_unlim_player;
		hash_unlim_player setAmmo[_l25, 999];
		hash_unlim_player setAmmo[_l31, 999];
		(vehicle hash_unlim_player) setVehicleAmmo 1;
		(vehicle hash_unlim_player) setVehicleAmmo 1;
		sleep 0.01;
	};
};

danisthebestcopyandpasterlol__aimbot = {
hash_aimbot_player = player;
		if (isnil("hash_aimbot_toggle")) then {
			hash_aimbot_toggle = 0;
		};
		if (hash_aimbot_toggle == 0) then {
			hash_aimbot_toggle = 1;
			hintSilent parseText format ["<t size='1.5' color='#e19326'>AIMBOT</t><br/><t allign='center' size='1' color='#32CD32'>ON</t>"];
		} else {
			hash_aimbot_toggle = 0;
			hintSilent parseText format ["<t size='1.5' color='#e19326'>AIMBOT</t><br/><t allign='center' size='1' color='#ff0000'>OFF</t>"];
		};

	   if (hash_aimbot_toggle == 1) then { 
			hash_aimbot_player addEventHandler ["Fired", {if (cursorTarget iskindof "man") then {cursorTarget setHit ["head", 1]}; }];
		};
};

danisthebestcopyandpasterlol__murder = {
hash_muddermode = (findDisplay 0 displayCtrl 999 getVariable 'hash_murdurmode');
		if (hash_muddermode == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['hash_murdurmode', 1];
			findDisplay 0 displayCtrl 999 setVariable ['hash_muderenabled', _merder];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['hash_murdurmode', 0];
			_merder = (findDisplay 0 displayCtrl 999 getVariable 'hash_muderenabled');
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable 'hash_murdurmode') == 1} do {
				_merder = hash_murder_player addEventHandler ['Fired', {
					_me = _this select 0;
					_bullet = _this select 6;
					_alofyplayars = (findDisplay 0 displayCtrl 999 getVariable '_alofyplayers');
					hash_poorbastard = selectRandom _alofyplayars;
					systemChat format ["Selected %1", hash_poorbastard];
					if ((alive hash_poorbastard) && (hash_poorbastard != _me)) then {
						_newPos = (eyepos hash_poorbastard);
						_bullet setposasl _newPos;
					};
					systemChat format ["%1", _bullet];
				}];
				sleep 0.05;
				hash_murder_player removeAllEventHandlers 'Fired';
			};
		};	
};

danisthebestcopyandpasterlol__esp = {
if (isnil("danisthebestcopyandpasterlol")) then {
							danisthebestcopyandpasterlol = 0;
						};
						if (danisthebestcopyandpasterlol == 0) then {
							danisthebestcopyandpasterlol = 1;
							systemChat "Pláyér ÉSP ON";
							addMissionEventHandler['Draw3D',{{if((player distance _x)<700)then{drawIcon3D['',[0,1,0,1],[(ASLtoATL eyePos _x)select 0,(ASLtoATL eyePos _x)select 1,((ASLtoATL eyePos _x)select 2)+0.3],0.1,0.1,45,format['%1(%2m) - %3HP',name _x,round(player distance _x),round((((damage _x)-1)*-100))],1,0.03,'PuristaSemiBold']}}forEach allPlayers}];
						} else {
							danisthebestcopyandpasterlol = 0;
							systemChat "Pláyér ÉSP OFF";
							removeAllMissionEventHandlers'Draw3D';
						};
					};

danisthebestcopyandpasterlol__god_mode = {
hash_player_bruce = player;
        if (isNil "hash_bruce_toggle") then {
                    hash_bruce_toggle = 0;
                };
                if (hash_bruce_toggle == 0) then {
                    hash_bruce_toggle = 1;
                    cutText ["God ON", "PLAIN"];
                    fnc_usec_damageHandler = {};
                    fnc_usec_unconscious = {};
                    hash_player_bruce removeAllEventHandlers "handleDamage";
                    hash_player_bruce addEventHandler["handleDamage", {
                        false
                    }];
                    hash_player_bruce allowDamage false;
                } else {
                    hash_bruce_toggle = 0;
                    cutText ["God OFF", "PLAIN"];
                    hash_player_bruce addEventHandler["handleDamage", {
                        true
                    }];
                    hash_player_bruce removeAllEventHandlers "handleDamage";
                    hash_player_bruce allowDamage true;
                }
};

danisthebestcopyandpasterlol__car_god = {
hash_carbruce_player = player;
            if (isnil "hash_asdadsa") then {
                    hash_asdadsa = 0
                };
                if (hash_asdadsa == 0) then {
                                        cutText ["Vehicle God ON", "PLAIN"];
                    hash_asdadsa = 1;
                    hash_asdadasdasd = true;
                    while {
                        hash_asdadasdasd
                    }
                    do {
                        if ((vehicle hash_carbruce_player isKindOf "LandVehicle") || (vehicle hash_carbruce_player isKindOf "Air") || (vehicle hash_carbruce_player isKindOf "Ship")) then {
                            if ((fuel(vehicle player)) < 0.9) then {
                                vehicle hash_carbruce_player setFuel 1;
                            };
                            if ((damage(vehicle player)) != 0) then {
                                vehicle hash_carbruce_player setdammage 0;
                            };
                        };
                        sleep 0.01;
                    };
                } else {
                                        cutText ["Vehicle God OFF", "PLAIN"];
                    hash_asdadasdasd = false;
                    hash_asdadsa = 0;
                };				
};

danisthebestcopyandpasterlol__rev_target = {
[cursorTarget] remoteExecCall ["life_fnc_revived",cursorTarget];
};

danisthebestcopyandpasterlol__nuker_script = {
params["_parts","_getVariable","_setVariable"];
	_locations = [];
	_threads = [];
	_stop = diag_tickTime + 60;
	hint "Nuking, Wait for Done.";
	while{diag_tickTime < _stop} do {
		_location = locationPosition (nearestLocation [[random(worldSize),random(worldSize),0],""]);
		if !(_location in _locations) then {
			_locations pushBack _location;
			_thread = _location spawn {
				_buildings = nearestObjects [_this, ["Building"], 1000];
				{
					if !(_x getVariable ["runloops",false]) then {
						_bobber = "Bomb_04_F" createVehicleLocal (getpos _x); 
						_bobber setVelocity [0,-1,-10];
					};
					uiSleep (60/(count(_buildings)));
				} forEach _buildings;
			};
			_threads pushback _thread;
		};
	};
	{
		if(!scriptDone _x) then {
			terminate _x;
		};
	} forEach _threads;
	hint "D O N E";
};

danisthebestcopyandpasterlol__banner = {
	mehdonny_newsbanner_player = player;
		mehdonny_newsbanner_player allowDamage false;
		_pos = getPosATL mehdonny_newsbanner_player; _pos set [3, 700]; mehdonny_newsbanner_player setPosATL _pos; mehdonny_newsbanner_player spawn bis_fnc_halo; title = parsetext "<t size='2'>pal palington</t><br />all you mom gayes"; 
						scroll = parsetext "Menu by dan chau | most likely wasent me who nuked it | copy and pasted scripts from the donny hash | Green/Pusha Family are harmless | Your server just got nuked lmao | the person that did this probably doesent like your server | This server will probably die now | danlopez.xyz | danchau.tk | hash.tk | Charlie Shanks is a nobody on HVH | I dont know what else to add to this script lol | Life Servers are DEAD lol | James Cortez Kills Servers | Want to buy the menu msg dan.#5139 Menu by dan chau | https://selly.gg/@hashbread | most likely wasent me who nuked it | copy and pasted scripts from the donny hash | Green/Pusha Family are harmless | Your server just got nuked lmao | the person that did this probably doesent like your server | This server will probably die now | danlopez.xyz | danchau.tk | hash.tk | Charlie Shanks is a nobody on HVH | I dont know what else to add to this script lol | Life Servers are DEAD lol | James Cortez Kills Servers | Want to buy the menu msg dan.#5139 Menu by dan chau | most likely wasent me who nuked it | copy and pasted scripts from the donny hash | Green/Pusha Family are harmless | Your server just got nuked lmao | the person that did this probably doesent like your server | This server will probably die now | danlopez.xyz | danchau.tk | hash.tk | Charlie Shanks is a nobody on HVH | I dont know what else to add to this script lol | Life Servers are DEAD lol | James Cortez Kills Servers | Want to buy the menu msg dan.#5139 Menu by dan chau | most likely wasent me who nuked it | copy and pasted scripts from the donny hash | Green/Pusha Family are harmless | Your server just got nuked lmao | the person that did this probably doesent like your server | This server will probably die now | danlopez.xyz | danchau.tk | hash.tk | Charlie Shanks is a nobody on HVH | I dont know what else to add to this script lol | Life Servers are DEAD lol | James Cortez Kills Servers | Want to buy the menu msg dan.#5139"; 
									nul = [title,scroll] spawn BIS_fnc_AAN;
						{
						if ((!isNull _x) && {getPlayerUID _x != ""} && {name _x != name mehdonny_newsbanner_player}) then {
				"HelicopterExplobig" createVehicleLocal (getPosATL _x);
				uiSleep .4;
			};
		} count ([15239,12503,0] nearEntities ["AllVehicles",24000]);
		"HelicopterExplobig" createVehicleLocal (getPosATL mehdonny_newsbanner_player);		
};

danisthebestcopyandpasterlol__tp_all = {
_hash_teleall_player = player;
	params["_parts","_getVariable","_setVariable"];
	{
		_x setpos getpos _hash_teleall_player;
		uiSleep .1;
	} forEach allPlayers;
};

danisthebestcopyandpasterlol__tp_map = {
hash_maptele_player = player;
    titleText["Select Map Position", "PLAIN"];
    onMapSingleClick "vehicle hash_maptele_player setPos _pos; onMapSingleClick '';true;";
};

danisthebestcopyandpasterlol__un_rest_self = {
private["_unit"];
    _unit = param [0,ObjNull,[ObjNull]];
    if(isNull _unit OR !(_unit getVariable ["restrained",FALSE])) exitWith {};
 
    _unit setVariable ["restrained",FALSE,TRUE];
    _unit setVariable ["Escorting",FALSE,TRUE];
    _unit setVariable ["transporting",FALSE,TRUE];
    detach _unit;
};

danisthebestcopyandpasterlol__un_rest_target = {
 private["_unit"];
    _unit = cursorTarget;
    if(isNull _unit OR !(_unit getVariable ["restrained",FALSE])) exitWith {};
 
    _unit setVariable ["restrained",FALSE,TRUE];
    _unit setVariable ["Escorting",FALSE,TRUE];
    _unit setVariable ["transporting",FALSE,TRUE];
    detach _unit;
};

danisthebestcopyandpasterlol__executor = {
createDialog 'RscDisplayInsertMarker';
	ctrlSetText[1001,'cool exicuter'];
	buttonSetAction[1, 'call compile (ctrlText 101)'];
};

};