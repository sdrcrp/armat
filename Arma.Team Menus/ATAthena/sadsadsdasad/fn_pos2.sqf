[]spawn {

    asdasdhdsfglasdjhfuolh31f4674__button_player = player;
    asdasdhdsfglasdjhfuolh31f4674__button_player addEventHandler ["InventoryOpened", {
    mah_donny_spawnhahahhah = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    asdasdhdsfglasdjhfuolh31f4674__ctrl = (findDisplay 602) ctrlCreate ["RscButton",1928];
    asdasdhdsfglasdjhfuolh31f4674__ctrl ctrlSetPosition [-0.07,-0.116,0.36,0.14];
    asdasdhdsfglasdjhfuolh31f4674__ctrl ctrlSetFont "PuristaMedium";
    asdasdhdsfglasdjhfuolh31f4674__ctrl ctrlSetBackgroundColor [-0.851951,-0.498818,0.3,0.04];
    asdasdhdsfglasdjhfuolh31f4674__ctrl ctrlCommit 0;
    asdasdhdsfglasdjhfuolh31f4674__ctrl ctrlSetText "Open Menu On Scroll";
	asdasdhdsfglasdjhfuolh31f4674__ctrl ctrlSetTextColor [1,0,0,1];
    asdasdhdsfglasdjhfuolh31f4674__ctrl ctrlAddEventHandler ["ButtonClick", "[]spawn asdasdhdsfglasdjhfuolh31f4674__main"];
    };
    }];

asdasdhdsfglasdjhfuolh31f4674__closemenu = {
asdasdhdsfglasdjhfuolh31f4674__close_player = player;
removeAllActions asdasdhdsfglasdjhfuolh31f4674__close_player;
["TaskSucceeded", ["", "Press the button in your inventory to open Arma.Team Athena menu"]]call BIS_fnc_showNotification;
};

asdasdhdsfglasdjhfuolh31f4674__main = {
asdasdhdsfglasdjhfuolh31f4674__main_player = player;
removeAllActions asdasdhdsfglasdjhfuolh31f4674__main_player;
asdasdhdsfglasdjhfuolh31f4674__main_player addAction["<t size=""1.1"" font=""RobotoCondensed"" color=""#A6A5A5"">Arma.Team Athena Menu</t>",{[]}];
asdasdhdsfglasdjhfuolh31f4674__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Life Stuff</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__sub1}];
asdasdhdsfglasdjhfuolh31f4674__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Weapon Stuff</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__sub2}];
asdasdhdsfglasdjhfuolh31f4674__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Health tings</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__sub3}];
asdasdhdsfglasdjhfuolh31f4674__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Edgy Memes</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__sub4;}];
asdasdhdsfglasdjhfuolh31f4674__main_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Loadouts</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__sub5;}];
asdasdhdsfglasdjhfuolh31f4674__main_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">Close Menu</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__closemenu;}];
};

asdasdhdsfglasdjhfuolh31f4674__sub1 = {
asdasdhdsfglasdjhfuolh31f4674__sub1_player = player;
removeAllActions asdasdhdsfglasdjhfuolh31f4674__main_player;
asdasdhdsfglasdjhfuolh31f4674__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Lîfe Levels</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__levels;}];
asdasdhdsfglasdjhfuolh31f4674__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Redgull Ànd Bandage</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__rab;}];
asdasdhdsfglasdjhfuolh31f4674__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Àll Lîcence's</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__passport;}];
asdasdhdsfglasdjhfuolh31f4674__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Mónëy BÀgs</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__bag;}];
asdasdhdsfglasdjhfuolh31f4674__sub1_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">ÀTM</t>",{life_fnc_atmMenu;}];
asdasdhdsfglasdjhfuolh31f4674__sub1_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">Back</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__main;}];
};

asdasdhdsfglasdjhfuolh31f4674__sub2 = {
asdasdhdsfglasdjhfuolh31f4674__sub2_player = player;
removeAllActions asdasdhdsfglasdjhfuolh31f4674__sub2_player;
asdasdhdsfglasdjhfuolh31f4674__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Ünîmîtëd Àmmô</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__unlim_ammo;}];
asdasdhdsfglasdjhfuolh31f4674__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Nó Rëcöíl</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__no_recoil;}];
asdasdhdsfglasdjhfuolh31f4674__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Sîlént Àîm</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__aimbot;}];
asdasdhdsfglasdjhfuolh31f4674__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Mrdér Módé</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__murder;}];
asdasdhdsfglasdjhfuolh31f4674__sub2_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">ÉSP</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__esp;}];
asdasdhdsfglasdjhfuolh31f4674__sub2_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">Back</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__main;}];
};

asdasdhdsfglasdjhfuolh31f4674__sub3 = {
asdasdhdsfglasdjhfuolh31f4674__sub3_player = player;
removeAllActions asdasdhdsfglasdjhfuolh31f4674__sub3_player;
asdasdhdsfglasdjhfuolh31f4674__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Gód Módé</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__god_mode;}];
asdasdhdsfglasdjhfuolh31f4674__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Véhíclé Gód</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__car_god;}];
asdasdhdsfglasdjhfuolh31f4674__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">héÀl tÀrgét</t>",{cursorTarget setDamage 0;}];
asdasdhdsfglasdjhfuolh31f4674__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">héÀl sélf</t>",{player setDamage 0;}];
asdasdhdsfglasdjhfuolh31f4674__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">rév tÀrgét</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__rev_target;}];
asdasdhdsfglasdjhfuolh31f4674__sub3_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">kîll tÀrgét</t>",{cursorTarget setDamage 1;}];
asdasdhdsfglasdjhfuolh31f4674__sub3_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">Back</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__main;}];
};

asdasdhdsfglasdjhfuolh31f4674__sub4 = {
asdasdhdsfglasdjhfuolh31f4674__sub4_player = player;
removeAllActions asdasdhdsfglasdjhfuolh31f4674__sub4_player;
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">nóôkér</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__nuker_script;}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">néwsbÀnnér lol</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__banner;}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">gét kéys</t>",{life_vehicles set [count life_vehicles, cursorTarget];}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Tp Àll</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__tp_all;}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">mÀp tpÀrinó</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__tp_map;}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">un réstrÀin sélf</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__un_rest_self;}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">un réstrÀin tÀrgét</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__un_rest_target;}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">éxécutór</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__executor;}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5x"">vÀriablé scÀnnór</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__variablescanner;}];
asdasdhdsfglasdjhfuolh31f4674__sub4_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">Back</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__main;}];
};

asdasdhdsfglasdjhfuolh31f4674__sub5 = {
asdasdhdsfglasdjhfuolh31f4674__sub5_player = player;
removeAllActions asdasdhdsfglasdjhfuolh31f4674__main_player;
asdasdhdsfglasdjhfuolh31f4674__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">MK1 Loadout</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__MK1;}];
asdasdhdsfglasdjhfuolh31f4674__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">MK18 Loadout</t>",{[]spawn A6A5A5asdasdhdsfglasdjhfuolh31f4674_MK18;}];
asdasdhdsfglasdjhfuolh31f4674__sub5_player addAction["<t size=""1.1"" font=""PuristaLight"" color=""#A6A5A5"">Navid Loadout</t>",{[]spawn A6A5A5asdasdhdsfglasdjhfuolh31f4674_navid;}];
asdasdhdsfglasdjhfuolh31f4674__sub5_player addAction["<t size=""1"" font=""PuristaLight"" color=""#000000"">Back</t>",{[]spawn asdasdhdsfglasdjhfuolh31f4674__main;}];
};

asdasdhdsfglasdjhfuolh31f4674__variablescanner = {
asdasdhdsfglasdjhfuolh31f4674__varsc_player = player;
	asdasdhdsfglasdjhfuolh31f4674__varsc_player = player; asdasdhdsfglasdjhfuolh31f4674__varsc_player addAction ["<t size=""1.1"" font=""PuristaLight"" color=""#FFFFFF"">Open Variable Scanner</t>",{_Dialog = [	[1100,"",[1,"Variable Scanner by Alofa",[0.371093 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.257813 * safezoneW,0.022 * safezoneH],[1,1,1,1],[0.9,0.4,0.6,1],[-1,-1,-1,-1],",-1"],[]],	[2200,"",[1,"",[0.371095 * safezoneW + safezoneX,0.247 * safezoneH + safezoneY,0.257813 * safezoneW,0.396 * safezoneH],[-1,-1,-1,-1],[0,0,0,0.5],[-1,-1,-1,-1],",-1"],[]],	[1402,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1500,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[0,0,0,0],",-1"],[]],	[1400,"",[1,"                                    >>Current Variable Value<<",[0.37625 * safezoneW + safezoneX,0.258 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[2100,"",[1,"",[0.37625 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[1,1,1,1],[0,0,0,0],[0,0,0,0],",-1"],[]],	[1600,"",[1,"Search for this value",[0.37625 * safezoneW + safezoneX,0.346 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1601,"",[1,"Edit Value",[0.37625 * safezoneW + safezoneX,0.599 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],	[1401,"",[1,"                                      >>New Variable Value<<",[0.37625 * safezoneW + safezoneX,0.555 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.9,0.4,0.6,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]]];(finddisplay 46) createDisplay "RscDisplayChat";{	private["_ctrl","_buttonaction","_text","_secondarray","_activecolor","_textcolor","_backcolor","_pos","_idc","_classname","_ctrltype"];	_idc = _x select 0;	_classname = _x select 1;	_secondarray = (_x select 2);	_text = _secondarray select 1;	_pos = _secondarray select 2;	_textcolor = _secondarray select 3;	_backcolor = _secondarray select 4;	_activecolor = _secondarray select 5;	_buttonaction = _secondarray select 6;	_ctrltype = (format["%1",_idc] select [0,2]);	_ctrltype = call compile _ctrltype;	_ctrltype = switch(_ctrltype) do {		case 11: {"RscStructuredText"};		case 12: {"RscPicture"};		case 14: {"RscEdit"};		case 15: {"RscListBox"};		case 16: {"RscButton"};		case 21: {"RscCombo"};		case 22: {"RscBackground"};	};	_ctrl = (finddisplay 24) ctrlCreate [_ctrltype, _idc];	_ctrl ctrlSetPosition _pos;	if(_ctrltype != "RscTree") then {		_ctrl ctrlSetTextColor _textcolor;		_ctrl ctrlSetBackgroundColor _backcolor;		_ctrl ctrlSetActiveColor _activecolor;		_ctrl ctrlSetText _text;	};	if!(_buttonaction == "") then {		_ctrl buttonsetAction _buttonaction;	};	_ctrl ctrlCommit 0.3;	asdasdhdsfglasdjhfuolh31f4674__varsc_player setVariable ["MLRN_ALLCTRLS",(asdasdhdsfglasdjhfuolh31f4674__varsc_player getVariable "MLRN_ALLCTRLS") + [_ctrl]];}forEach _Dialog;((finddisplay 24) displayCtrl 2100) lbAdd "STRING"; ((finddisplay 24) displayCtrl 2100) lbAdd "CODE"; ((finddisplay 24) displayCtrl 2100) lbAdd "SCALAR"; ((finddisplay 24) displayCtrl 2100) lbAdd "BOOLEAN"; ((finddisplay 24) displayCtrl 2100) lbSetCurSel 0;((finddisplay 24) displayCtrl 1600) buttonSetAction '	if(ctrlText((finddisplay 24) displayCtrl 1400) == "") exitWith {hint "You have to enter a value"};	private["_vars"];	_vars = [];	{		_type = ((finddisplay 24) displayCtrl 2100) lbText lbCurSel ((finddisplay 24) displayCtrl 2100);		_value = ctrlText((finddisplay 24) displayCtrl 1400);  		if(typeName(missionNamespace getVariable _x) == _type) then {if(format["%1",(missionNamespace getVariable _x)] == _value) then {_vars pushBack [_x,missionNamespace getVariable _x]}};	}	forEach allVariables missionNamespace;	if(count _vars == 0) exitWith {hint "[FAILED] No Variables with this value..."};	lbClear ((finddisplay 24) displayCtrl 1500);	{		((finddisplay 24) displayCtrl 1500) lbAdd format["%1 | %2",_x select 0,format["%1",_x select 1]];		((finddisplay 24) displayCtrl 1500) lbSetData [(lbSize((finddisplay 24) displayCtrl 1500))-1,_x select 0];	}	forEach _vars;	hint "[SUCCESS] Variables found...";	((finddisplay 24) displayCtrl 1500) lbSetCurSel 0;';((finddisplay 24) displayCtrl 1601) buttonSetAction '	_newvalue = ctrlText((finddisplay 24) displayCtrl 1401);	_currvar = ((finddisplay 24) displayCtrl 1500) lbData lbCurSel ((finddisplay 24) displayCtrl 1500);	call compile format["%1 = %2;",_currvar,_newvalue];	hint "[SUCCESS] Changed Variable Value";	(finddisplay 24) closeDisplay 0;'}]; asdasdhdsfglasdjhfuolh31f4674__varsc_player addAction ["<t size=""1.1"" font=""PuristaLight"" color=""#F76060"">Remove Variable Scanner</t>","removeAllActions player"];
					};

asdasdhdsfglasdjhfuolh31f4674__no_recoil = {
	asdasdhdsfglasdjhfuolh31f4674__recoil_player = player;
	asdasdhdsfglasdjhfuolh31f4674__recoil_player setUnitRecoilCoefficient 0; asdasdhdsfglasdjhfuolh31f4674__recoil_player setCustomAimCoef 0.01;
};

asdasdhdsfglasdjhfuolh31f4674__levels = {
life_currentExpLevel = 40; life_currentExp = 183672; life_currentPerkPoints = 1000; [0] call mav_ttm_fnc_clientSendUpdateToServer; [1] call mav_ttm_fnc_clientSendUpdateToServer; [2] call mav_ttm_fnc_clientSendUpdateToServer; [3] call mav_ttm_fnc_clientSendUpdateToServer;
};

asdasdhdsfglasdjhfuolh31f4674__rab = {
life_inv_akeycard = 1; life_inv_bandage = 25; life_inv_medkit = 1; life_inv_redgull = 25;
};

asdasdhdsfglasdjhfuolh31f4674__passport = {
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

asdasdhdsfglasdjhfuolh31f4674__bag = {
 hash_bag_lmao = "Land_Sleeping_bag_blue_folded_F";
    hash_baag_player = player;
    { _veh = hash_bag_lmao createVehicle position hash_baag_player; } forEach [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];
	_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos hash_baag_player);{_veh disableCollisionWith _x} foreach playableUnits;_veh setVariable ["pickup",false,true];_veh attachto [player, [0.1,-0.18,0], "rfemur"];_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];life_nospampls = 0;DisableUserInput false;[_veh] spawn {_veh = _this select 0;if (cobra_attached == 0) exitWith {}; while {cobra_attached == 1} do {if(vehicle player != player) then {_coolbisanigga = count attachedObjects player;if (_coolbisanigga == 1) then {detach _veh;deleteVehicle _veh;};} else {_check = count attachedObjects player;if (_check == 0) then {_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player);{_veh disableCollisionWith _x} foreach playableUnits;_veh setVariable ["pickup",false,true];_veh attachto [player, [0.1,-0.18,0], "rfemur"];_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];_veh setdir (getdir player + 180);_veh setpos (getpos _veh);["<t size='3.2' color='#04EE4A'>Heres your bag back!</t>"] call life_fnc_alerttwo;};};uiSleep 0.25;		};};
};

asdasdhdsfglasdjhfuolh31f4674__MK1 = {
  dan_mk1_unmodded_player = player;

  removeAllWeapons dan_mk1_unmodded_player;
  removeAllItems dan_mk1_unmodded_player;
  removeAllAssignedItems dan_mk1_unmodded_player;
  removeUniform dan_mk1_unmodded_player;
  removeVest dan_mk1_unmodded_player;
  removeBackpack dan_mk1_unmodded_player;
  removeHeadgear dan_mk1_unmodded_player;
  removeGoggles dan_mk1_unmodded_player;

  dan_mk1_unmodded_player forceAddUniform "U_B_survival_uniform";
  for "_i" from 1 to 2 do {dan_mk1_unmodded_player addItemToUniform "FirstAidKit";};
  for "_i" from 1 to 2 do {dan_mk1_unmodded_player addItemToUniform "20Rnd_762x51_Mag";};
  dan_mk1_unmodded_player addVest "V_PlateCarrier2_rgr";
  for "_i" from 1 to 3 do {dan_mk1_unmodded_player addItemToVest "FirstAidKit";};
  for "_i" from 1 to 8 do {dan_mk1_unmodded_player addItemToVest "20Rnd_762x51_Mag";};
  dan_mk1_unmodded_player addBackpack "B_TacticalPack_oli";
  for "_i" from 1 to 3 do {dan_mk1_unmodded_player addItemToBackpack "FirstAidKit";};
  for "_i" from 1 to 17 do {dan_mk1_unmodded_player addItemToBackpack "20Rnd_762x51_Mag";};
  dan_mk1_unmodded_player addHeadgear "H_Bandanna_khk";
  dan_mk1_unmodded_player addGoggles "G_Bandanna_beast";

  dan_mk1_unmodded_player addWeapon "srifle_DMR_03_F";
  dan_mk1_unmodded_player addPrimaryWeaponItem "optic_Arco";

  dan_mk1_unmodded_player linkItem "ItemMap";
  dan_mk1_unmodded_player linkItem "ItemCompass";
  dan_mk1_unmodded_player linkItem "Itemwatch";
  dan_mk1_unmodded_player linkItem "ItemRadio";
  dan_mk1_unmodded_player linkItem "NVGogglesB_gry_F";};


asdasdhdsfglasdjhfuolh31f4674_LanM27Swat = {
 asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player = player;

removeAllWeapons asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player;
removeAllItems asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player;
removeAllAssignedItems asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player;
removeUniform asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player;
removeVest asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player;
removeBackpack asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player;
removeHeadgear asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player;
removeGoggles asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player;

asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player forceAddUniform "ALRP_SWATCpl";
for "_i" from 1 to 3 do {asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addItemToUniform "KA_15Rnd_45ACP_Mag";};
for "_i" from 1 to 6 do {asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addItemToUniform "RH_60Rnd_556x45_Mk262";};
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addVest "SWAT_VEST_CPL";
for "_i" from 1 to 10 do {asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addItemToVest "RH_60Rnd_556x45_Mk262";};
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addBackpack "cg_invisbp";
for "_i" from 1 to 14 do {asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addItemToBackpack "RH_60Rnd_556x45_Mk262";};
for "_i" from 1 to 14 do {asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addItemToBackpack "KA_15Rnd_45ACP_Mag";};
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addHeadgear "ALRP_BUSYHAT_2";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addGoggles "Nemesis_Gasmask";

asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addWeapon "RH_M27IAR";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addPrimaryWeaponItem "acc_pointer_IR";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addPrimaryWeaponItem "optic_Arco_blk_F";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addWeapon "KA_FNP45";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addHandgunItem "muzzle_snds_acp";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addHandgunItem "KA_red";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player addHandgunItem "KA_FNP45_shield2";

asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player linkItem "ItemMap";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player linkItem "ItemCompass";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player linkItem "Itemwatch";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player linkItem "TFAR_anprc152";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player linkItem "ItemGPS";
asdasdhdsfglasdjhfuolh31f4674_LanM27Swat_player linkItem "pmc_earpiece";};

A6A5A5asdasdhdsfglasdjhfuolh31f4674_MK18 = {
  dan_mk18_unmodded_player = player;

  removeAllWeapons dan_mk18_unmodded_player;
  removeAllItems dan_mk18_unmodded_player;
  removeAllAssignedItems dan_mk18_unmodded_player;
  removeUniform dan_mk18_unmodded_player;
  removeVest dan_mk18_unmodded_player;
  removeBackpack dan_mk18_unmodded_player;
  removeHeadgear dan_mk18_unmodded_player;
  removeGoggles dan_mk18_unmodded_player;

  dan_mk18_unmodded_player forceAddUniform "U_B_survival_uniform";
  for "_i" from 1 to 2 do {dan_mk18_unmodded_player addItemToUniform "FirstAidKit";};
  for "_i" from 1 to 2 do {dan_mk18_unmodded_player addItemToUniform "20Rnd_762x51_Mag";};
  dan_mk18_unmodded_player addVest "V_PlateCarrier2_rgr";
  for "_i" from 1 to 3 do {dan_mk18_unmodded_player addItemToVest "FirstAidKit";};
  for "_i" from 1 to 8 do {dan_mk18_unmodded_player addItemToVest "20Rnd_762x51_Mag";};
  dan_mk18_unmodded_player addBackpack "B_TacticalPack_oli";
  for "_i" from 1 to 3 do {dan_mk18_unmodded_player addItemToBackpack "FirstAidKit";};
  for "_i" from 1 to 17 do {dan_mk18_unmodded_player addItemToBackpack "20Rnd_762x51_Mag";};
  dan_mk18_unmodded_player addHeadgear "H_Bandanna_khk";
  dan_mk18_unmodded_player addGoggles "G_Bandanna_beast";

  dan_mk18_unmodded_player addWeapon "srifle_EBR_F";
  dan_mk18_unmodded_player addPrimaryWeaponItem "optic_Arco";

  dan_mk18_unmodded_player linkItem "ItemMap";
  dan_mk18_unmodded_player linkItem "ItemCompass";
  dan_mk18_unmodded_player linkItem "Itemwatch";
  dan_mk18_unmodded_player linkItem "ItemRadio";
  dan_mk18_unmodded_player linkItem "NVGogglesB_gry_F";};

A6A5A5asdasdhdsfglasdjhfuolh31f4674_navid = {
 dan_navid_unmodded_player = player;

removeAllWeapons dan_navid_unmodded_player;
removeAllItems dan_navid_unmodded_player;
removeAllAssignedItems dan_navid_unmodded_player;
removeUniform dan_navid_unmodded_player;
removeVest dan_navid_unmodded_player;
removeBackpack dan_navid_unmodded_player;
removeHeadgear dan_navid_unmodded_player;
removeGoggles dan_navid_unmodded_player;

dan_navid_unmodded_player forceAddUniform "U_O_V_Soldier_Viper_F";
for "_i" from 1 to 2 do {dan_navid_unmodded_player addItemToUniform "FirstAidKit";};
dan_navid_unmodded_player addVest "V_PlateCarrier2_rgr";
for "_i" from 1 to 2 do {dan_navid_unmodded_player addItemToVest "150Rnd_93x64_Mag";};
dan_navid_unmodded_player addBackpack "B_TacticalPack_oli";
for "_i" from 1 to 3 do {dan_navid_unmodded_player addItemToBackpack "150Rnd_93x64_Mag";};
dan_navid_unmodded_player addHeadgear "H_HelmetO_ViperSP_ghex_F";
dan_navid_unmodded_player addGoggles "G_Bandanna_beast";

dan_navid_unmodded_player addWeapon "MMG_01_hex_F";
dan_navid_unmodded_player addPrimaryWeaponItem "muzzle_snds_93mmg_tan";
dan_navid_unmodded_player addPrimaryWeaponItem "acc_flashlight";
dan_navid_unmodded_player addPrimaryWeaponItem "optic_Arco";
dan_navid_unmodded_player addPrimaryWeaponItem "bipod_02_F_hex";

dan_navid_unmodded_player linkItem "ItemMap";
dan_navid_unmodded_player linkItem "ItemCompass";
dan_navid_unmodded_player linkItem "Itemwatch";
dan_navid_unmodded_player linkItem "ItemRadio";};





asdasdhdsfglasdjhfuolh31f4674__rapid_fire = {
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

asdasdhdsfglasdjhfuolh31f4674__unlim_ammo = {
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

asdasdhdsfglasdjhfuolh31f4674__aimbot = {
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

asdasdhdsfglasdjhfuolh31f4674__murder = {
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

asdasdhdsfglasdjhfuolh31f4674__esp = {
if (isnil("asdasdhdsfglasdjhfuolh31f4674")) then {
							asdasdhdsfglasdjhfuolh31f4674 = 0;
						};
						if (asdasdhdsfglasdjhfuolh31f4674 == 0) then {
							asdasdhdsfglasdjhfuolh31f4674 = 1;
							systemChat "Pláyér ÉSP ON";
							addMissionEventHandler['Draw3D',{{if((player distance _x)<700)then{drawIcon3D['',[0,1,0,1],[(ASLtoATL eyePos _x)select 0,(ASLtoATL eyePos _x)select 1,((ASLtoATL eyePos _x)select 2)+0.3],0.1,0.1,45,format['%1(%2m) - %3HP',name _x,round(player distance _x),round((((damage _x)-1)*-100))],1,0.03,'PuristaSemiBold']}}forEach allPlayers}];
						} else {
							asdasdhdsfglasdjhfuolh31f4674 = 0;
							systemChat "Pláyér ÉSP OFF";
							removeAllMissionEventHandlers'Draw3D';
						};
					};

asdasdhdsfglasdjhfuolh31f4674__god_mode = {
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

asdasdhdsfglasdjhfuolh31f4674__car_god = {
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

asdasdhdsfglasdjhfuolh31f4674__rev_target = {
[cursorTarget] remoteExecCall ["life_fnc_revived",cursorTarget];
};

asdasdhdsfglasdjhfuolh31f4674__nuker_script = {
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

asdasdhdsfglasdjhfuolh31f4674__banner = {
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

asdasdhdsfglasdjhfuolh31f4674__tp_all = {
_hash_teleall_player = player;
	params["_parts","_getVariable","_setVariable"];
	{
		_x setpos getpos _hash_teleall_player;
		uiSleep .1;
	} forEach allPlayers;
};

asdasdhdsfglasdjhfuolh31f4674__tp_map = {
hash_maptele_player = player;
    titleText["Select Map Position", "PLAIN"];
    onMapSingleClick "vehicle hash_maptele_player setPos _pos; onMapSingleClick '';true;";
};

asdasdhdsfglasdjhfuolh31f4674__un_rest_self = {
private["_unit"];
    _unit = param [0,ObjNull,[ObjNull]];
    if(isNull _unit OR !(_unit getVariable ["restrained",FALSE])) exitWith {};

    _unit setVariable ["restrained",FALSE,TRUE];
    _unit setVariable ["Escorting",FALSE,TRUE];
    _unit setVariable ["transporting",FALSE,TRUE];
    detach _unit;
};

asdasdhdsfglasdjhfuolh31f4674__un_rest_target = {
 private["_unit"];
    _unit = cursorTarget;
    if(isNull _unit OR !(_unit getVariable ["restrained",FALSE])) exitWith {};

    _unit setVariable ["restrained",FALSE,TRUE];
    _unit setVariable ["Escorting",FALSE,TRUE];
    _unit setVariable ["transporting",FALSE,TRUE];
    detach _unit;
};

asdasdhdsfglasdjhfuolh31f4674__executor = {
createDialog 'RscDisplayInsertMarker';
	ctrlSetText[1001,'cool exicuter'];
	buttonSetAction[1, 'call compile (ctrlText 101)'];
};

};
