['Definitions'] call {
	    _POOP_whitelist = "Darky";
		_POOP_enemy = "Lystic";
		POOP_White_Text = [1, 1, 1, 1];
	    POOP_Green_Text = [0.65, 1, 0.1, 1];
	    POOP_Red_Text = [1, 0.1, 0.2, 1];
		POOP_Pink_Text = [1,0.1,0.66,1];
	    POOP_Bruce_Toggle = false;
	    POOP_Alien_Toggle = false;
	    POOP_Vehicle_Toggle = false;
	    POOP_Player_Toggle = false;
	    POOP_Terrain_Toggle = false;
	    POOP_Unlim_Toggle = false;
	    POOP_vehbruce_Toggle = false;
	    POOP_Distance_Toggle = false;
	};
	['List'] call {
	    POOP_Main = {
	        POOP_Item = POOP_Item + [["Heal", "POOP_Heal", "", false, false, false, ""]];
	        POOP_Item = POOP_Item + [["E5P", "POOP_Alien", "", false, false, true, "POOP_Alien_Toggle"]];
	        POOP_Item = POOP_Item + [["Player Mrkrs", "POOP_Players", "", false, false, true, "POOP_Player_Toggle"]];
	        POOP_Item = POOP_Item + [["Vehicle Mrkrs", "POOP_Vehicles", "", false, false, true, "POOP_Vehicle_Toggle"]];
	        POOP_Item = POOP_Item + [["Inf Ammo", "POOP_Unlim", "", false, false, true, "POOP_Unlim_Toggle"]];
	        POOP_Item = POOP_Item + [["Chitty Bang Bang", "POOP_Vehbruce", "", false, false, true, "POOP_vehbruce_Toggle"]];
	        POOP_Item = POOP_Item + [["Remove Terrain", "POOP_Terrain", "", false, false, true, "POOP_Terrain_Toggle"]];
	        POOP_Item = POOP_Item + [["View Distance", "POOP_Viewdis", "", false, false, true, "POOP_Distance_Toggle"]];
			POOP_Item = POOP_Item + [["NEXT", "POOP_Load", "POOP_h4x", false, true, false, ""]];
	    };
		POOP_h4x = {
			POOP_Item = POOP_Item + [["Cash", "POOP_moolah", "", false, false, false, ""]];
			POOP_Item = POOP_Item + [["Nuke", "POOP_atom", "", false, false, false, ""]];
	        POOP_Item = POOP_Item + [["Mass Murder", "POOP_massmurder", "", false, false, false, ""]];
	        POOP_Item = POOP_Item + [["Control", "POOP_control", "", false, false, false, ""]];
			POOP_Item = POOP_Item + [["Bruce", "POOP_bruce_almighty", "", false, false, false, ""]];
			POOP_Item = POOP_Item + [["2", "POOP_atom", "", false, false, false, ""]];
	        POOP_Item = POOP_Item + [["3", "POOP_massmurder", "", false, false, false, ""]];
	        POOP_Item = POOP_Item + [["4", "POOP_control", "", false, false, false, ""]];
			POOP_Item = POOP_Item + [["5", "POOP_Terrain", "", false, false, false, ""]];
			POOP_Item = POOP_Item + [["BACK", "POOP_Load", "POOP_Main", false, true, false, ""]];
	    };
	};
	['Hax'] call {
		POOP_bruce_almighty = {
			execvm "bruce\almighty.sqf";
		};
		POOP_control = {
			{
				if(name _x == _POOP_enemy);
				targetunit =_x;
			} foreach playableUnits;

			player remoteControl targetunit;
			targetunit switchCamera "EXTERNAL";
			_POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Controlled</t><br/>"; hint parseText(_POOP__title);
		};
		POOP_massmurder = {
			{
				if(_x != player && name _x != _POOP_whitelist) then {
					forceRespawn _x;
				};
			} forEach playableUnits;
			_POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Mass Death</t><br/>"; hint parseText(_POOP__title);
		};
		POOP_atom = {
			execvm "nuke2.sqf";
		};
		POOP_moolah = {
			if (!isNil "life_inv_items") then {
				if (!isNil "life_no_injection") then {
					life_no_injection = true;
				};
				life_cash = life_cash + 1000000;
				if (!isNil "life_no_injection") then {
					life_no_injection = false;
				};
				h_POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Young Money</t><br/>"; hint parseText(_POOP__title);
			}
			else
			{
				player setVariable ["cmoney", (player getVariable ["cmoney", 0]) + 5000, true];
				_POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Done</t><br/>"; hint parseText(_POOP__title);
			};
		};
	    POOP_Vehbruce = {
	        if (POOP_vehbruce_Toggle) then {
	            hintSilent "Armour Enabled";
	        } else {
	            hintSilent "Armour Disabled";
	        };
	        while {POOP_vehbruce_Toggle} do {
	            waitUntil {vehicle player != player};
	            _POOP__veh = vehicle player;
	            _POOP__veh removeAllEventHandlers "handleDamage";
	            _POOP__veh addEventHandler["handleDamage", {false}];
	            _POOP__veh allowDamage false;
	            _POOP__veh setDamage 0;
	            _POOP__veh setFuel 1;
	            waitUntil {vehicle player == player};
	            _POOP__veh removeAllEventHandlers "handleDamage";
	            _POOP__veh addEventHandler["handleDamage", {true}];
	            _POOP__veh allowDamage true;
	        };
	    };
	    POOP_Viewdis = {
	        if (isNil "POOP_Jay_Leno") then {
	            POOP_Jay_Leno = 0;
	        };

	        if (POOP_Jay_Leno == 0) then {
	            POOP_Jay_Leno = 1;
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>View Distance ON</t><br/>"; hint parseText(_POOP__title);
	            [] spawn {
	                while {true}do {
	                    if ((vehicle player) isKindOf "Man") then {
	                        setViewDistance 3500
	                    };
	                    waitUntil {
	                        vehicle player != player
	                    };
	                    if ((vehicle player) isKindOf "LandVehicle") then {
	                        setViewDistance 5000
	                    };
	                    if ((vehicle player) isKindOf "Air") then {
	                        setViewDistance 10000
	                    };
	                    if ((vehicle player) isKindOf "Water") then {
	                        setViewDistance 8000
	                    };
	                    waitUntil {
	                        vehicle player == player
	                    };
	                };
	            };
	        } else {
	            POOP_Jay_Leno = 0;
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>View Distance OFF</t><br/>"; hint parseText(_POOP__title);
	            setViewDistance 1500
	        };
	    };
	    POOP_Unlim = {
	        if (POOP_Unlim_Toggle) then {
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Inf Ammo ON</t><br/>"; hint parseText(_POOP__title);
	        } else {
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Inf Ammo OFF</t><br/>"; hint parseText(_POOP__title);
	        };
	        while {POOP_Unlim_Toggle} do {
	            (vehicle player) setVehicleAmmo 1;
	        };
	    };
	    POOP_Terrain = {
	        if (POOP_Terrain_Toggle) then {
	            setTerrainGrid 50;
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Grass OFF</t><br/>"; hint parseText(_POOP__title);
	        } else {
	            setTerrainGrid 12.5;
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Grass ON</t><br/>"; hint parseText(_POOP__title);
	        };
	    };
	    POOP_Heal = {
	        if (!isNil "life_inv_items") then {
	            life_thirst = 100;
	            life_hunger = 100;
	            antidote1 = 2581;
	            [true] call life_fnc_sessionUpdate;
	            [] call life_fnc_hudUpdate;
	        };
	        player setFatigue 0;
	        sleep 0.1;
	        player setDamage 0;
	        sleep 0.1;
	        _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Healed</t><br/>"; hint parseText(_POOP__title);
	    };
	    POOP_TP = {
	        closeDialog 0;
	        if !("ItemMap" in items player) then {
	            _POOP_mano_le_tough = player;
	            (unitBackpack _POOP_mano_le_tough) additemCargo["ItemMap", 1];
	        };
	        openMap[true, false];
			_POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Click Map</t><br/>"; hint parseText(_POOP__title);
	        onMapSingleClick 'player setpos _pos;openMap[false,false];onMapSingleClick "";false';
	    };
	    POOP_Alien = {
	        if(POOP_Alien_Toggle) then {
				addMissionEventHandler ["Draw3D", {
					_r = 255;
					_g = 0;
					_b = 0;
					RGB = [0,0,0,1];
					{
						if(alive _x) then {
							if(((side _x) == (side player)) && ((player distance _x) < 700)) then {
								_pos = getposatl _x;
								_eyepos = ASLtoATL eyepos _x;
								if((getTerrainHeightASL [_pos select 0,_pos select 1]) < 0) then {
									_eyepos = eyepos _x;
									_pos = getposasl _x;
								};
								_1 = _x modelToWorld [-0.5,0,0];
								_2 = _x modelToWorld [0.5,0,0];
								_3 = _x modelToWorld [-0.5,0,0];
								_4 = _x modelToWorld [0.5,0,0];
								_1 set [2,_pos select 2];
								_2 set [2,_pos select 2];
								_3 set [2,(_eyepos select 2)+0.25];
								_4 set [2,(_eyepos select 2)+0.25];
								_HP = (damage _x - 1) * -100;
								_fontsize = 0.02;
								_eyepos set [2,(_3 select 2) - 0.1];
								drawIcon3D["",[0,1,0,1],_eyepos,0.1,0.1,45,format["%1(%2m) - %3HP",name _x,round(player distance _x),round(_HP)],1,_fontsize,'EtelkaNarrowMediumPro'];
							};
							if(((side _x) != (side player)) && ((player distance _x) < 1400)) then {
								_pos = getposatl _x;
								_eyepos = ASLtoATL eyepos _x;
								_1 = _x modelToWorld [-0.5,0,0];
								_2 = _x modelToWorld [0.5,0,0];
								_3 = _x modelToWorld [-0.5,0,0];
								_4 = _x modelToWorld [0.5,0,0];
								_1 set [2,_pos select 2];
								_2 set [2,_pos select 2];
								_3 set [2,(_eyepos select 2)+0.25];
								_4 set [2,(_eyepos select 2)+0.25];
								_HP = (damage _x - 1) * -100;
								_fontsize = 0.02;
								_eyepos set [2,(_3 select 2) - 0.1];
								drawIcon3D["",[1,0,0,1],_eyepos,0.1,0.1,45,format["%1(%2m) - %3HP",name _x,round(player distance _x),round(_HP)],1,_fontsize,'EtelkaNarrowMediumPro'];
							};
						};
					} forEach allUnits;
				}];
				_POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>ESP ON</t><br/>"; hint parseText(_POOP__title);
			} else {
				removeAllMissionEventHandlers "Draw3D";
				_POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>ESP OFF</t><br/>"; hint parseText(_POOP__title);
			};
	    };
	    POOP_Bruce = {
	        if (POOP_Bruce_Toggle) then {
	            player allowDamage false;
	            player removeAllEventHandlers "handleDamage";
	            player addEventHandler["HandleDamage", {false}];
	            player setDamage 0;
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>G0D ON</t><br/>"; hint parseText(_POOP__title);
	        } else {
	            player allowDamage true;
	            player removeAllEventHandlers "handleDamage";
	            player addEventHandler["HandleDamage", {true}];
	            player setDamage 0;
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>G0D OFF</t><br/>"; hint parseText(_POOP__title);
	        };
	    };
	    POOP_Vehicles = {
	        if (POOP_Vehicle_Toggle) then {
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Vehicle Markers ON</t><br/>"; hint parseText(_POOP__title);
	        } else {
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Vehicle Markers OFF</t><br/>"; hint parseText(_POOP__title);
	        };
	        while {POOP_Vehicle_Toggle} do {
	            {
	                if ((_x iskindof "Air") || (_x iskindof "Tank") || (_x isKindOf "Land") || (_x isKindOf "Ship")) then {
	                    POOP_vehicles_m = str _x;
	                    deleteMarkerLocal POOP_vehicles_m;
	                    POOP_vehicles_m = createMarkerLocal[POOP_vehicles_m, getPos _x];
	                    POOP_vehicles_m setMarkerTypeLocal "waypoint";
	                    POOP_vehicles_m setMarkerPosLocal getPos _x;
	                    POOP_vehicles_m setMarkerSizeLocal[0.5, 0.5];
	                    POOP_vehicles_m setMarkerTextLocal format['%1', typeOf _x];
	                    if ((_x isKindOf "Air") || (_x isKindOf "Tank")) then {
	                        POOP_vehicles_m setMarkerColorLocal("ColorRed");
	                    } else {
	                        if ((_x isKindOf "Land") || (_x isKindOf "Ship")) then {
	                            POOP_vehicles_m setMarkerColorLocal("ColorBlue");
	                        };
	                    };
	                };
	            }
	            forEach vehicles;
	            sleep 1;
	        }; {
	            if ((_x iskindof "Air") || (_x iskindof "Tank") || (_x isKindOf "Land") || (_x isKindOf "Ship")) then {
	                POOP_vehicles_m = str _x;
	                deleteMarkerLocal POOP_vehicles_m;
	            };
	        }
	        forEach vehicles;
	    };
	    POOP_Players = {
			if (POOP_Player_Toggle) then {
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Player Markers ON</t><br/>"; hint parseText(_POOP__title);
	        } else {
	            _POOP__title = "<t color='#FFFFFF' font='TahomaB' size='1' align='center'>Player Markers OFF</t><br/>"; hint parseText(_POOP__title);
	        };
	        POOP_smoke_weed_everyday = [];
	        POOP_high_till_I_die = [];
	        while {POOP_Player_Toggle} do {
	            {
	                if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then {
	                    if (count(crew vehicle _x) > 0) then {
	                        {
	                            if (!(_x in POOP_smoke_weed_everyday) and(alive _x) and(getPlayerUID _x != "")) then {
	                                private["_pos", "_POOP__locl_schmegger", "_POOP_vhs_smegger"];
	                                _POOP_vhs_smegger = vehicle _x;
	                                _pos = getPos _x;
	                                _POOP__locl_schmegger = createMarkerLocal[format["CRW%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]];
	                                _POOP__flintstone = (gettext(configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'));
	                                _POOP__locl_schmegger setMarkerTextLocal format[' %1 --- %2 --- %3m', name _x, _POOP__flintstone, round(_x distance player)];
	                                _POOP__locl_schmegger setMarkerTypeLocal "waypoint";
	                                if ((side _x == side player) and(side _x != resistance)) then {
	                                    _POOP__locl_schmegger setMarkerColorLocal "ColorBlue";
	                                } else {
	                                    _POOP__locl_schmegger setMarkerColorLocal "ColorRed";
	                                };
	                                _POOP__locl_schmegger setMarkerSizeLocal[0, 0];

	                                POOP_smoke_weed_everyday set [count POOP_smoke_weed_everyday, _x];
	                                [_x, _POOP__locl_schmegger, _POOP_vhs_smegger] spawn {
	                                    private["_POOP__u_bruv", "_POOP_you_smell_me_bruv", "_POOP__suck_my_pecker"];
	                                    _POOP__u_bruv = _this select 0;
	                                    _POOP_you_smell_me_bruv = _this select 1;
	                                    while {
	                                        (POOP_Player_Toggle) and(alive _POOP__u_bruv) and(vehicle _POOP__u_bruv != _POOP__u_bruv) and(getPlayerUID _POOP__u_bruv != "")
	                                    }
	                                    do {
	                                        _POOP__suck_my_pecker = ((crew vehicle _POOP__u_bruv) find _POOP__u_bruv);
	                                        _POOP_you_smell_me_bruv setMarkerPosLocal([(getPos _POOP__u_bruv select 0) + 20, (getPos _POOP__u_bruv select 1) - (25 + _POOP__suck_my_pecker * 20), 0]);
	                                        sleep 0.01;
	                                    };
	                                    deleteMarkerLocal _POOP_you_smell_me_bruv;
	                                    if (_POOP__u_bruv in POOP_smoke_weed_everyday) then {
	                                        POOP_smoke_weed_everyday set [(POOP_smoke_weed_everyday find _POOP__u_bruv), -1];
	                                        POOP_smoke_weed_everyday = POOP_smoke_weed_everyday - [-1];
	                                    };
	                                    true;
	                                };
	                            };
	                        }
	                        forEach crew vehicle _x;
	                    };
	                } else {
	                    if (!(_x in POOP_high_till_I_die) and(vehicle _x == _x) and(getPlayerUID _x != "")) then {
	                        private["_pos", "_POOP__locl_schmegger"];
	                        _pos = getPos _x;

	                        _POOP__locl_schmegger = createMarkerLocal[format["PLR%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]];
	                        _POOP__locl_schmegger setMarkerTypeLocal "waypoint";
	                        _POOP__locl_schmegger setMarkerSizeLocal[0, 0];
	                        if (side _x == side player) then {
	                            _POOP__locl_schmegger setMarkerColorLocal "ColorBlue";
	                        } else {
	                            _POOP__locl_schmegger setMarkerColorLocal "ColorRed";
	                        };
	                        _POOP__locl_schmegger setMarkerTextLocal format["%1 --- %2", name _x, round(_x distance player)];
	                        if (_x == player) then {
	                            _POOP__locl_schmegger setMarkerColorLocal "ColorGreen";
	                        };
	                        POOP_high_till_I_die set [count POOP_high_till_I_die, _x];
	                        [_x, _POOP__locl_schmegger] spawn {
	                            private["_POOP__u_bruv", "_POOP_you_smell_me_bruv"];
	                            _POOP__u_bruv = _this select 0;
	                            _POOP_you_smell_me_bruv = _this select 1;
	                            while {
	                                (POOP_Player_Toggle) and(alive _POOP__u_bruv) and(vehicle _POOP__u_bruv == _POOP__u_bruv) and(getPlayerUID _POOP__u_bruv != "")
	                            }
	                            do {
	                                _POOP_you_smell_me_bruv setMarkerPosLocal([(getPos _POOP__u_bruv select 0) + 20, getPos _POOP__u_bruv select 1, 0]);
	                                sleep 0.01;
	                            };
	                            deleteMarkerLocal _POOP_you_smell_me_bruv;
	                            if (_POOP__u_bruv in POOP_high_till_I_die) then {
	                                POOP_high_till_I_die set [(POOP_high_till_I_die find _POOP__u_bruv), -1];
	                                POOP_high_till_I_die = POOP_high_till_I_die - [-1];

	                            };
	                            true;
	                        };
	                    };

	                };
	            }
	            forEach playableUnits;
	            sleep 0.3;
	        }; {
	            deleteMarkerLocal _x
	        }
	        forEach POOP_smoke_weed_everyday; {
	            deleteMarkerLocal _x
	        }
	        forEach POOP_high_till_I_die;
	    };
	};
	['Functions'] call {
	    POOP_Run = {
	        disableserialization;
	        _POOP__ctrl = (finddisplay 163) displayctrl 101;
	        _x = POOP_Item select(lbCurSel _POOP__ctrl);
	        _POOP__text = _x select 0;
	        _POOP__func = _x select 1;
	        _POOP__param = _x select 2;
			_POOP__sub = _x select 4;
	        _POOP__Toggle = _x select 5;
	        _POOP__ToggleVar = _x select 6;
	        if (_POOP__Toggle) then {
	            _POOP__t = false;
	            call compile format["%1 = !%1;", _POOP__ToggleVar];
	            call compile format["_POOP__t = %1;", _POOP__ToggleVar];
	            if (_POOP__t) then {
	                _POOP__ctrl lbSetColor[lbCurSel _POOP__ctrl, POOP_Green_Text];
	            } else {
	                _POOP__ctrl lbSetColor[lbCurSel _POOP__ctrl, POOP_Red_Text];
	            };
	        };
	        call compile format["'%1' spawn %2;", _POOP__param, _POOP__func];
	    };
	    POOP_Load = {
	        disableserialization;
	        _POOP__ctrl = (finddisplay 163) displayctrl 101;
	        lbClear _POOP__ctrl;
	        POOP_Item = [];
	        call compile format['call %1;', _this]; {
	            _POOP__text = _x select 0;
	            _POOP__func = _x select 1;
	            _POOP__param = _x select 2;
				_POOP__sub = _x select 4;
	            _POOP__Toggle = _x select 5;
	            _POOP__ToggleVar = _x select 6;
	            _POOP__ctrl lbAdd _POOP__text;
	            _POOP__ctrl lbSetColor[(lbSize _POOP__ctrl) - 1, POOP_White_Text];
	            _POOP__ctrl ctrlSetFont "TahomaB";
				if (_POOP__sub) then {
                    _POOP__ctrl lbSetColor[(lbSize _POOP__ctrl) - 1, POOP_Pink_Text];
                };
	            if (_POOP__Toggle) then {
	                _POOP__t = false;
	                call compile format["_POOP__t = %1;", _POOP__ToggleVar];
	                if (_POOP__t) then {
	                    _POOP__ctrl lbSetColor[(lbSize _POOP__ctrl) - 1, POOP_Green_Text];
	                } else {
	                    _POOP__ctrl lbSetColor[(lbSize _POOP__ctrl) - 1, POOP_Red_Text];
	                };
	            };
	        }
	        forEach POOP_Item;
	    };
	    POOP_Init = {
	        if (isNull(findDIsplay(163))) then {
	            createdialog "RscDisplayControlSchemes";
	            disableserialization;

	            _POOP__ctrl = (findDisplay 163) displayCtrl 1000;     //MENU TITLE
	            _POOP__ctrl ctrlSetText "ĴмĘ Lite";
	            _POOP__ctrl ctrlSetFontHeight 0.05;
	            _POOP__ctrl ctrlSetBackgroundColor[0, 0, 0, 1];
	            _POOP__ctrl ctrlSetFont "EtelkaNarrowMediumPro";
	            _POOP__ctrl ctrlSetTextColor[0.34, 0.75, 0.95, 1];
	            _POOP__ctrl ctrlSetPosition[1.33, 0.04, 0.35, 0.05];
	            _POOP__ctrl ctrlCommit 0;

	            _POOP__ctrl = (findDisplay 163) displayCtrl 101;      //SCRIPT LIST
	            _POOP__ctrl ctrlSetPosition[1.33, 0.1, 0.35, 0.4]; //left-right, up-down, width, height  //centred 0.3, 0.1, 0.4, 0.6
	            _POOP__ctrl ctrlCommit 0;

	            _POOP__ctrl = (findDisplay 163) displayCtrl 1;        //DEBUG CONSOLE BUTTON
	            _POOP__ctrl buttonSetAction "createDialog 'RscDisplayDebugPublic'";
	            _POOP__ctrl ctrlSetFont "EtelkaNarrowMediumPro";
	            _POOP__ctrl ctrlSetTextColor[1, 1, 1, 1];
	            _POOP__ctrl ctrlSetText "    Debug";
	            _POOP__ctrl ctrlSetPosition[1.499, 0.51, 0.181, 0.045];
	            _POOP__ctrl ctrlCommit 0;

	            _POOP__ctrl = (findDisplay 163) displayCtrl 2;         //TELEPORT BUTTON
	            _POOP__ctrl buttonSetAction "[] spawn POOP_TP;";
	            _POOP__ctrl ctrlSetFont "EtelkaNarrowMediumPro";
	            _POOP__ctrl ctrlSetText "  Teleport";
	            _POOP__ctrl ctrlSetTextColor[1, 1, 1, 1];
	            _POOP__ctrl ctrlSetPosition[1.33, 0.51, 0.171, 0.045];
	            _POOP__ctrl ctrlCommit 0;

	            ((findDisplay 163) displayctrl 101) ctrlSetEventHandler["LBDblClick", "call POOP_Run"];
	            [] spawn {'POOP_Main' call POOP_Load;
	            };
	        };
	    };
	};
	[] spawn {
	    while {true} do {
	        if (inputAction "Watch" > 0) then {
	            [] spawn POOP_Init;
	            if (isNil "POOP_First_Hint") then {
	                POOP_First_Hint = true;
					_POOP__tittle1 = "<t color='#56BFF2' size='1.4' align='center'>ĴмĘ LITE</t><br/>";
					_POOP__props = "<t color='#FF1933' size='1.2' align='center'>Credits to LY5T1C</t><br/>";
					_POOP__keybizzle = "<t color='#FFFFFF' size='1' align='center'>Press F5 for Cursor Teleport</t><br/>";
					hint parseText(_POOP__tittle1 + _POOP__props + _POOP__keybizzle);
					player enableFatigue false;
	            };
	            waitUntil { inputAction "Watch" == 0
	            };
	        };
	        if (inputAction "BuldMagnetizePoints" > 0) then {
	            [] spawn {
	                _POOP__worldpos = screentoworld[.5, .5];
	                vehicle player setpos _POOP__worldpos;
					sleep 0.01;
					showcommandingmenu "";
	            };
	            waitUntil {
	                inputAction "BuldMagnetizePoints" == 0
	            };
	        };
	        sleep 0.001;
	    };
	};
	["TaskSucceeded", ["", "Welcome - Press O"]] call BIS_fnc_showNotification;
