_ad = {
    _f_1 = _this;
    _f_2 = false;
    _f_3 = 0;
    _f_4 = [
        [65, [194, 195, 196, 197, 256, 258, 260]],
        [67, [199, 262, 264, 266, 268]],
        [68, [208, 270, 272]],
        [69, [200, 201, 202, 203, 274, 276, 278, 280, 282]],
        [71, [284, 286, 288, 290]],
        [72, [292, 294]],
        [73, [204, 205, 206, 207, 296, 298, 300, 302, 304]],
        [74, [308, 309]],
        [75, [310, 312]],
        [76, [315, 317, 319]],
        [78, [209, 323, 325, 327, 330]],
        [79, [210, 211, 212, 213, 332, 334, 336]],
        [80, [222]],
        [82, [340, 342, 344]],
        [83, [346, 350, 352]],
        [84, [354, 356]],
        [85, [217, 218, 219, 360, 362, 364, 366, 370]],
        [87, [372]],
        [89, [221, 374]],
        [90, [377, 379]]
    ];
    _f_5 = [
        [97, [226, 227, 228, 229, 257, 259, 261]],
        [99, [231, 263, 265, 267, 269]],
        [100, [240, 271, 273]],
        [101, [232, 233, 234, 235, 275, 277, 279, 281, 283]],
        [103, [285, 287, 289, 291]],
        [104, [293, 295]],
        [105, [236, 237, 238, 239, 297, 299, 301, 303, 304]],
        [106, [309, 309]],
        [107, [311, 312]],
        [108, [316, 318, 320]],
        [110, [241, 324, 326, 328, 331]],
        [111, [242, 243, 244, 245, 333, 335, 337]],
        [112, [254]],
        [114, [341, 343, 345]],
        [115, [347, 351, 353]],
        [116, [355, 357]],
        [117, [249, 250, 251, 361, 363, 365, 367, 371]],
        [119, [373]],
        [121, [253, 375]],
        [122, [378, 380]]
    ];
    _f_6 = toArray _f_1; {
        if (_forEachIndex % 3 == 0) then {
            _f_7 = _x;
            _f_8 = _forEachIndex; {
                if (_x select 0 == _f_7) then {
                    if (_f_2) then {
                        _f_6 set[_f_8, selectRandom(_x select 1)];
                    } else {
                        _ready = _x select 1;
                        if ((count _ready - 1) >= _f_3) then {
                            _f_6 set[_f_8, _ready select _f_3];
                        } else {
                            _f_6 set[_f_8, _ready select(count _ready - 1)];
                        };
                    };
                };
            }
            forEach(_f_5 + _f_4);
        };
    }
    forEach _f_6;
    toString _f_6;
};

(findDisplay 0) setVariable["ac", [
    [(['G', 'EN', 'ER', 'A', 'L'] joinString '') call _ad],

    [(['> H', 'ea1l', ' y1o', 'ur1s', 'el1f'] joinString '') call _ad, {
        player setDamage 0;
        "You healed yourself"
    }],

    [(['> K1', 'ill', ' yo', 'u1rs', 'e1lf'] joinString '') call _ad, {
        player setDamage 1;
        "You killed yourself"
    }],

    [(['> D', 'i1sc', 'on1n', 'ect'] joinString '') call _ad, {
        failMission 'enddefault';
        "You've disconnected"
    }],

    [(['> M', 'a1p ', 'Te1l', 'epo', 'rt'] joinString '') call _ad, {
        [] spawn {
            (findDisplay 49) closeDisplay 0;
            for '_i'
            from 6 to 0 step - 1 do {
                    hint("Teleporting in " + str _i + " seconds, please hover over the wanted location on your map");
                    sleep 1;
                };
                player setPos((finddisplay 12 displayCtrl 51) ctrlMapScreenToWorld getMousePosition)
        };
        "Map teleport activated"
    }],

    [(['> G', 'o1dM', 'od1e'] joinString '') call _ad, {
        player addEventHandler["HandleDamage", {
            false
        }];
        "GodMode enabled"
    }, {
        player removeAllEventHandlers "HandleDamage";
        "GodMode disabled"
    }],

    [(['> S', 'p1ee', 'dh1a', 'ck'] joinString '') call _ad, {
        player setAnimSpeedCoef 11.2;
        "Speedhack enabled"
    }, {
        player setAnimSpeedCoef(3 / 3);
        "Speedhack disabled"
    }],

    [(['> A', 'm1mo', ' Re', 'f1il', 'l'] joinString '') call _ad, {
        player setVehicleAmmo 1;
        "Ammo refilled"
    }],

    [(['> U', 'nlimi', 'ted', ' Am', 'mo'] joinString '') call _ad, {
        alofa_ammo_player = player;
        alofa_ammo_player addeventhandler["fired", {
            (_this select 0) setvehicleammo 1
        }];
        "Unlimited Ammo enabled"
    }, {
        alofa_ammo_remove_player = player;
        alofa_ammo_remove_player removealleventhandlers "fired";
        "Unlimited Ammo disabled"
    }],

    [(['> R', 'api', 'do F', 'ir', 'e'] joinString '') call _ad, {
        alofa_enabled = (findDisplay 0 displayCtrl 999 getVariable 'alofa_fastaskeem');
        if (alofa_enabled == 0) then {
            findDisplay 0 displayCtrl 999 setVariable['alofa_fastaskeem', 1];
        } else {
            findDisplay 0 displayCtrl 999 setVariable['alofa_fastaskeem', 1];
        };
        [] spawn {
            while {
                (findDisplay 0 displayCtrl 999 getVariable 'alofa_fastaskeem') == 1
            }
            do {
                _c = ("player setWeapon");
                _c = _c + ("ReloadingTime [(vehicle player), currentWeapon (vehicle player), 0];");
                _b = compile _c;
                call _b;
                sleep 0.01;
            };
        };;
        "Rapid Fire enabled"
    }, {
        findDisplay 0 displayCtrl 999 setVariable['alofa_fastaskeem', 0];
        "Rapid Fire disabled"
    }],

    [(['> N', 'o R', 'eco', 'il'] joinString '') call _ad, {
        _c = ("player setUnit");
        _c = _c + ("RecoilCoefficient 0;");
        _b = compile _c;
        call _b;
        alofa_yes_player = player;
        alofa_yes_player setCustomAimCoef 0;
        "No Recoil enabled"
    }, {
        _c = ("player setUnit");
        _c = _c + ("RecoilCoefficient 1;");
        _b = compile _c;
        call _b;
        alofa_no_player = player;
        alofa_no_player setCustomAimCoef 1;
        "No Recoil disabled"
    }],

    [(['> N', 'o1 G', 'r1as', 's'] joinString '') call _ad, {
        setTerrainGrid 50;
        "No Grass enabled"
    }, {
        setTerrainGrid 25;
        "No Grass disabled"
    }],

    [(['> N', 'o F', 'at1i', 'gue'] joinString '') call _ad, {
        player enableStamina false;
        "No Fatigue enabled"
    }, {
        player enableStamina true;
        "No Fatigue disabled"
    }],

    [(['> P', 'lay', 'e1r ', 'ES1P'] joinString '') call _ad, {
        addMissionEventHandler['Draw3D', {
            {
                if ((player distance _x) < 700) then {
                    drawIcon3D['', [0, 1, 0, 1], [(ASLtoATL eyePos _x) select 0, (ASLtoATL eyePos _x) select 1, ((ASLtoATL eyePos _x) select 2) + 0.3], 0.1, 0.1, 45, format['%1(%2m) - %3HP', name _x, round(player distance _x), round((((damage _x) - 1) * -100))], 1, 0.03, 'PuristaSemiBold']
                }
            }
            forEach allPlayers
        }];
        "Player ESP enabled"
    }, {
        removeAllMissionEventHandlers 'Draw3D';
        "Player ESP disabled"
    }],

    [(['> M', 'a1p ', 'Ma1r', 'k1er'] joinString '') call _ad, {
        ((finddisplay 12) displayCtrl 51) ctrlAddEventHandler['Draw', {
            _2 = _this select 0; {
                if (true) then {
                    _3 =
                        if (vehicle _x == _x) then {
                            name _x
                        } else {
                            _1 = '('; {
                                _1 = _1 + (
                                    if (_forEachIndex == 0) then {
                                        ''
                                    } else {
                                        ', '
                                    }) + name _x
                            }
                            forEach(crew(vehicle _x));
                            _1 = _1 + ')';
                            format['%1%2', getText(configFile >> 'CfgVehicles' >> typeOf(vehicle _x) >> 'displayName'), _1]
                        };
                    _4 =
                        if (vehicle _x == _x) then {
                            'iconMan'
                        } else {
                            switch (true) do {
                                case ((vehicle _x) isKindOf 'Man'):{
                                        'iconman'
                                    };
                                case ((vehicle _x) isKindOf 'Car'):{
                                        'iconcar'
                                    };
                                case ((vehicle _x) isKindOf 'Tank'):{
                                        'iconcar'
                                    };
                                case ((vehicle _x) isKindOf 'Air'):{
                                        'iconhelicopter'
                                    };
                                case ((vehicle _x) isKindOf 'Ship'):{
                                        'iconship'
                                    }
                            }
                        };
                    _5 =
                        switch (side _x) do {
                            case BLUFOR:{
                                    [0, 0.298, 0.596, 1]
                                };
                            case OPFOR:{
                                    [0.502, 0, 0, 1]
                                };
                            case INDEPENDENT:{
                                    [0, 0.502, 0, 1]
                                };
                            case CIVILIAN:{
                                    [0.4, 0, 0.502, 1]
                                };
                            case
                            default {
                                [0.996, 0.655, 0.114, 1]
                            }
                        };
                        _2 drawIcon[_4, _5, getPos _x, 24, 24, getDir _x, _3, 1, 0.025, 'PuristaMedium', 'right']
                }
            }
            forEach allPlayers
        }];
        "Map Marker enabled"
    }, {
        ((finddisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers 'Draw';
        "Map Marker disabled"
    }],

    [(['KI1T', 'S'] joinString '') call _ad],

    [(['> C1', 'iv1i', 'l1ia', 'n'] joinString '') call _ad, {
        player setUnitLoadout[["hgun_PDW2000_F", "", "", "optic_Aco", ["30Rnd_9x21_Red_Mag", 30],
            [], ""
        ], [], ["hgun_Rook40_F", "", "", "", ["16Rnd_9x21_Mag", 16],
            [], ""
        ], ["U_BG_Guerilla2_3", [
            ["16Rnd_9x21_Mag", 2, 16]
        ]], [], ["B_Carryall_khk", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["30Rnd_9x21_Red_Mag", 16, 30],
            ["Chemlight_blue", 7, 1]
        ]], "H_Hat_checker", "G_Squares", [], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
        "Spawned Civilian-Kit"
    }],

    [(['> S', 'n1ip', 'er'] joinString '') call _ad, {
        player setUnitLoadout[["srifle_GM6_F", "", "", "optic_Hamr", ["5Rnd_127x108_Mag", 5],
            [], ""
        ], [], ["hgun_P07_F", "muzzle_snds_L", "", "", ["16Rnd_9x21_Mag", 16],
            [], ""
        ], ["U_O_GhillieSuit", [
            ["16Rnd_9x21_Mag", 1, 16]
        ]], ["V_TacVest_camo", [
            ["5Rnd_127x108_Mag", 2, 5]
        ]], ["B_Carryall_khk", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["Chemlight_blue", 7, 1],
            ["SmokeShellBlue", 5, 1],
            ["16Rnd_9x21_Mag", 5, 16],
            ["5Rnd_127x108_APDS_Mag", 8, 5]
        ]], "", "G_Aviator", ["Rangefinder", "", "", "", [],
            [], ""
        ], ["ItemMap", "", "", "ItemCompass", "ItemWatch", "NVGoggles"]];
        "Spawned Sniper-Kit"
    }],

    [(['> R', 'e1be', 'l'] joinString '') call _ad, {
        player setUnitLoadout[["arifle_Katiba_F", "", "", "optic_Hamr", ["30Rnd_65x39_caseless_green", 30],
            [], ""
        ], [], ["hgun_Pistol_heavy_02_F", "", "", "optic_Yorris", ["6Rnd_45ACP_Cylinder", 6],
            [], ""
        ], ["U_I_G_resistanceLeader_F", [
            ["30Rnd_65x39_caseless_green", 2, 30]
        ]], ["V_TacVest_khk", []], ["B_Carryall_khk", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["Chemlight_blue", 7, 1],
            ["SmokeShellBlue", 5, 1],
            ["6Rnd_45ACP_Cylinder", 9, 6],
            ["30Rnd_65x39_caseless_green", 10, 30]
        ]], "H_ShemagOpen_khk", "G_Aviator", ["Rangefinder", "", "", "", [],
            [], ""
        ], ["ItemMap", "", "", "ItemCompass", "ItemWatch", "NVGoggles"]];
        "Spawned Rebel-Kit"
    }],

    [(['> H', 'a1ck', 'er'] joinString '') call _ad, {
        player setUnitLoadout[["srifle_DMR_02_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_tws_mg", ["10Rnd_338_Mag", 10],
            [], "bipod_01_F_blk"
        ], ["launch_I_Titan_F", "", "", "", ["Titan_AA", 1],
            [], ""
        ], ["hgun_Pistol_Signal_F", "", "", "", ["6Rnd_GreenSignal_F", 6],
            [], ""
        ], ["U_C_Scientist", []], ["V_TacVest_camo", [
            ["10Rnd_338_Mag", 7, 10]
        ]], ["B_Carryall_oucamo", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["Chemlight_blue", 7, 1],
            ["SmokeShellBlue", 5, 1],
            ["6Rnd_GreenSignal_F", 4, 6]
        ]], "H_RacingHelmet_1_blue_F", "G_Aviator", ["Rangefinder", "", "", "", [],
            [], ""
        ], ["ItemMap", "", "", "ItemCompass", "ItemWatch", "NVGoggles_OPFOR"]];
        "Spawned Hacker-Kit"
    }],

    [(['TRO', 'LL1I', 'NG'] joinString '') call _ad],

    [(['> K', 'il1l', ' ev', 'ery', 'one'] joinString '') call _ad, {
        {
            'HelicopterExploSmall'
            createVehicleLocal(getPos _x)
        }
        forEach allPlayers;
        "All players killed"
    }],

    [(['> (', 'Cr1a', 'sh ', 'Ser', 'ver', ') W', 'IP'] joinString '') call _ad, {
        if (vehicle player == player) exitWith {
            "You have to be in a vehicle"
        }; {
            ropeCreate[vehicle player, [0, 0, -2], vehicle _x, [0, 0, 0], 10]
        }
        forEach allPlayers
    }],

    [(['> C', 'ra1s', 'h E', 'ver', 'yon', 'e'] joinString '') call _ad, {
        [] spawn {
            {
                if (_x != player) then {
                    (vehicle _x) setPos[1e13, 1e13, 1e13];
                    sleep .3
                }
            }
            forEach allPlayers
        };
        "All players crashed"
    }],

    [(['> E', 'jec', 't e', 've1r', 'yo1n', 'e'] joinString '') call _ad, {
        {
            _x action["GetOut", vehicle _x]
        }
        forEach allPlayers;
        "All players ejected"
    }],

    [(['> P', 'ar1a', 'ch1u', 't1e ', 'Eve', 'ryo', 'ne'] joinString '') call _ad, {
        {
            _x addBackpackGlobal "B_Parachute_F";
            _x setPos[10000, 10000, 1000]
        }
        forEach allPlayers
    }],

    [(['> S', 'tr1i', 'p D', 'own', ' e1v', 'ery', 'one'] joinString '') call _ad, {
        {
            _x setUnitLoadout[[], [], [], [], [], [], "", "", [], ["", "", "", "", "", ""]]
        }
        forEach allPlayers
    }],

    [(['TAR', 'GE3T'] joinString '') call _ad],
    [(['> K1', 'i1ll', ' Ta', 'rge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        "HelicopterExploSmall"
        createVehicleLocal(getPos _t);
        "Killed target"
    }],

    [(['> C', 'ras1', 'h T', 'arg1', 'et'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        (vehicle _t) setPos[1e13, 1e13, 1e13];
        "Crashed target"
    }],

    [(['> T', 'ele', 'por', 't1 t', 'o1 T', 'arg', 'et'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        (vehicle player) setPosASL getPosASL _t;
        "Teleported to target"
    }],

    [(['> T', 'ele', 'por1', 't T', '1arg', 'et ', 'to ', 'me'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        (vehicle _t) setPosASL getPosASL player;
        "Teleported target to own position"
    }],

    [(['> T', 'ele', 'po1r', 't T', 'arg', 'et ', 'to ', 'ran', 'dom', ' Player'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        (vehicle _t) setPosASL getPosASL(selectRandom(allplayers - [player]));
        "Teleported target to random Player"
    }],

    [(['> T', 'el1e', 'p1or', 't R', 'and', 'om ', 'Pla1', 'yer', ' to', ' Tar', 'get'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        (vehicle(selectRandom(allplayers - [player]))) setPosASL getPosASL _t;
        "Teleported random Player to target"
    }],

    [(['> T', 'ele', 'por', 't T', 'ar1g', 'et ', 'aw', 'ay'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        (vehicle _t) setPosASL[0, 0, 0];
        "Teleported target into the Sea"
    }],
    [(['> C', 'ol', 'or', ' Ta', 'r1ge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        (vehicle _t) setObjectTextureGlobal[0, format["#(rgb,8,8,3)color(%1,%2,%3,%4)", round random 1, round random 1, round random 1, 1]];
        "Colored target"
    }],

    [(['> S', 'tr1i', 'p d', 'own', ' Ta', 'rge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setUnitLoadout[[], [], [], [], [], [], "", "", [], ["", "", "", "", "", ""]];
        "Colored target"
    }],

    [(['> E', 'je1c', 't T', 'arg', 'et'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t action["GetOut", vehicle _t];
        "Ejected target"
    }],

    [(['> P', 'ar1a', 'chu', 'te', ' Ta', 'rge1', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t addBackpackGlobal "B_Parachute_F";
        _t setPos[10000, 10000, 1000];
        "Parachuted target"
    }],

    [(['> G', 'ive', ' T', 'arg', 'e2t2 ', 'Civ', 'il', 'ian', ' Kit'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setUnitLoadout[["hgun_PDW2000_F", "", "", "optic_Aco", ["30Rnd_9x21_Red_Mag", 30],
            [], ""
        ], [], ["hgun_Rook40_F", "", "", "", ["16Rnd_9x21_Mag", 16],
            [], ""
        ], ["U_BG_Guerilla2_3", [
            ["16Rnd_9x21_Mag", 2, 16]
        ]], [], ["B_Carryall_khk", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["30Rnd_9x21_Red_Mag", 16, 30],
            ["Chemlight_blue", 7, 1]
        ]], "H_Hat_checker", "G_Squares", [], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
        "Spawned Civilian-Kit"
    }],

    [(['> G', 'iv3e', ' T', 'arg', 'et ', 'Cop', ' Kit'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setUnitLoadout[["srifle_EBR_F", "", "acc_pointer_IR", "optic_Hamr", ["20Rnd_762x51_Mag", 20],
            [], ""
        ], [], ["hgun_P07_F", "muzzle_snds_L", "", "", ["16Rnd_9x21_Mag", 16],
            [], ""
        ], ["U_Marshal", [
            ["16Rnd_9x21_Mag", 1, 16]
        ]], ["V_TacVest_blk_POLICE", [
            ["20Rnd_762x51_Mag", 2, 20]
        ]], ["B_Carryall_khk", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["Chemlight_blue", 7, 1],
            ["SmokeShellBlue", 10, 1],
            ["16Rnd_9x21_Mag", 1, 16]
        ]], "H_Beret_02", "G_Aviator", ["Rangefinder", "", "", "", [],
            [], ""
        ], ["ItemMap", "", "", "ItemCompass", "ItemWatch", "NVGoggles_OPFOR"]];
        "Spawned Cop-Kit"
    }],

    [(['> G', 'i1ve', ' T', 'ar1g', 'et ', 'Hac', 'ker', ' Kit'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setUnitLoadout[["srifle_DMR_02_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_tws_mg", ["10Rnd_338_Mag", 10],
            [], "bipod_01_F_blk"
        ], ["launch_I_Titan_F", "", "", "", ["Titan_AA", 1],
            [], ""
        ], ["hgun_Pistol_Signal_F", "", "", "", ["6Rnd_GreenSignal_F", 6],
            [], ""
        ], ["U_C_Scientist", []], ["V_TacVest_camo", [
            ["10Rnd_338_Mag", 7, 10]
        ]], ["B_Carryall_oucamo", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["Chemlight_blue", 7, 1],
            ["SmokeShellBlue", 5, 1],
            ["6Rnd_GreenSignal_F", 4, 6]
        ]], "H_RacingHelmet_1_blue_F", "G_Aviator", ["Rangefinder", "", "", "", [],
            [], ""
        ], ["ItemMap", "", "", "ItemCompass", "ItemWatch", "NVGoggles_OPFOR"]];
        "Spawned Hacker-Kit"
    }],

    [
        ['> T', 'arg', 'et:', ' '] joinString ''
    ],

    [
        ['> P', 'age', ': '] joinString ''
    ]
]];

(findDisplay 0) setVariable["bc", [
    [(['LIF', 'E G1', 'EN1E', 'RAL'] joinString '') call _ad],

    [(['> U', 'nlo', 'ck ', 'veh', 'icl', 'es ', '[15', '0m]'] joinString '') call _ad, {
        {
            _x lock 0
        }
        forEach(nearestObjects[player, ["car", "air", "ship", "tank"], 150]);
        "Unlocked all vehicles in 150m range"
    }],

    [(['> G', 'e1t ', 've1h', 'icl', 'e k', 'e1ys', ' [1', '50m', ']'] joinString '') call _ad, {
        {
            life_vehicles pushBackUnique _x
        }
        forEach(nearestObjects[player, ["car", "air", "ship", "tank"], 150]);
        "Got all vehicle keys in 150m range"
    }],

    [(['> G', 'et1 ', 'a1ll', ' ve', 'hi1c', 'le ', 'ke1y', 's'] joinString '') call _ad, {
        {
            life_vehicles pushBackUnique _x
        }
        forEach((allMissionObjects "car") + (allMissionObjects "air") + (allMissionObjects "ship") + (allMissionObjects "tank"));
        "Got all vehicle keys"
    }],

    [(['> A', 'nt1i', ' Re', 's1tr', 'ain'] joinString '') call _ad, {
        findDisplay 0 setVariable["w_1", true];
        [] spawn {
            while {
                findDisplay 0 getVariable["w_1", false]
            }
            do {
                if (player getVariable["restrained", false]) then {
                    player setVariable["restrained", false, true]
                }
            }
        };
        "You cannot be restrained anymore"
    }, {
        findDisplay 0 setVariable["w_1", false];
        "You can be restrained again"
    }],

    [(['> A', '1nti', ' Ta', 's1er'] joinString '') call _ad, {
        findDisplay 0 setVariable["w_2", true];
        [] spawn {
            while {
                findDisplay 0 getVariable["w_2", false]
            }
            do {
                if (!life_tazed) then {
                    life_tazed = true
                }
            }
        };
        "You cannot be tased anymore"
    }, {
        findDisplay 0 setVariable["w_2", false];
        "You can be tased again"
    }],

    [(['> U', 'n1re', 's1tr', 'a1in', ' yo', 'urs', 'elf'] joinString '') call _ad, {
        player setVariable["restrained", false, true];
        "You unrestrained yourself"
    }],

    [(['> I', 'nst', 'an1t', ' Re', 's1pa', 'wn'] joinString '') call _ad, {
        findDisplay 0 setVariable["w_3", true];
        [] spawn {
            while {
                findDisplay 0 getVariable["w_3", false]
            }
            do {
                ((finddisplay 7300) displayCtrl 7302) ctrlEnable true
            }
        };
        "Instant Respawn enabled"
    }, {
        findDisplay 0 setVariable["w_3", false];
        "Instant Respawn disabled"
    }],

    [(['> S', 'pa1w', 'n m', '1one', 'y [', '5k-', '10k', ']'] joinString '') call _ad, {
        _obj = "Land_Money_F"
        createVehicle(getPos player);
        _obj setVariable["item", ["money", 5121 + (random 4800)], true];
        _obj setPos getPos player;
        "Cash spawned"
    }],

    [(['> S', 'pa1w', 'n m', 'o1ne', 'y [', '50k', '-15', '0k]'] joinString '') call _ad, {
        _obj = "Land_Money_F"
        createVehicle(getPos player);
        _obj setVariable["item", ["money", 50121 + (random 90000)], true];
        _obj setPos getPos player;
        "Cash spawned"
    }],

    [(['> S', 'pa1w', 'n m', 'o1ne', 'y [', '500', 'k-1', '000', 'k]'] joinString '') call _ad, {
        _obj = "Land_Money_F"
        createVehicle(getPos player);
        _obj setVariable["item", ["money", 500121 + (random 480000)], true];
        _obj setPos getPos player;
        "Cash spawned"
    }],

    [(['O1TH', 'ER S', 'CR1P', 'T', 'S'] joinString '') call _ad],

    [(['> Vari', 'ab', 'ble Sc', 'ann', 'er'] joinString '') call _ad, {
        _alofa_player_varsc = player;
        _alofa_player_varsc addAction["<t size="
            "1.1"
            " font="
            "TahomaB"
            " color="
            "#62F056"
            ">Open Variable Scanner</t>", {
                _Dialog = [
                    [1100, "", [1, "Variable Scanner by Alofa", [0.371093 * safezoneW + safezoneX, 0.225 * safezoneH + safezoneY, 0.257813 * safezoneW, 0.022 * safezoneH],
                            [1, 1, 1, 1],
                            [0.9, 0.4, 0.6, 1],
                            [-1, -1, -1, -1], ",-1"
                        ],
                        []
                    ],
                    [2200, "", [1, "", [0.371095 * safezoneW + safezoneX, 0.247 * safezoneH + safezoneY, 0.257813 * safezoneW, 0.396 * safezoneH],
                            [-1, -1, -1, -1],
                            [0, 0, 0, 0.5],
                            [-1, -1, -1, -1], ",-1"
                        ],
                        []
                    ],
                    [1402, "", [1, "", [0.37625 * safezoneW + safezoneX, 0.39 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.154 * safezoneH],
                            [0.9, 0.4, 0.6, 1],
                            [-1, -1, -1, -1],
                            [-1, -1, -1, -1], ",-1"
                        ],
                        []
                    ],
                    [1500, "", [1, "", [0.37625 * safezoneW + safezoneX, 0.39 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.154 * safezoneH],
                            [0.9, 0.4, 0.6, 1],
                            [-1, -1, -1, -1],
                            [0, 0, 0, 0], ",-1"
                        ],
                        []
                    ],
                    [1400, "", [1, "                                    >>Current Variable Value<<", [0.37625 * safezoneW + safezoneX, 0.258 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH],
                            [0.9, 0.4, 0.6, 1],
                            [-1, -1, -1, -1],
                            [-1, -1, -1, -1], ",-1"
                        ],
                        []
                    ],
                    [2100, "", [1, "", [0.37625 * safezoneW + safezoneX, 0.302 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH],
                            [1, 1, 1, 1],
                            [0, 0, 0, 0],
                            [0, 0, 0, 0], ",-1"
                        ],
                        []
                    ],
                    [1600, "", [1, "Search for this value", [0.37625 * safezoneW + safezoneX, 0.346 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH],
                            [0.9, 0.4, 0.6, 1],
                            [-1, -1, -1, -1],
                            [-1, -1, -1, -1], ",-1"
                        ],
                        []
                    ],
                    [1601, "", [1, "Edit Value", [0.37625 * safezoneW + safezoneX, 0.599 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH],
                            [0.9, 0.4, 0.6, 1],
                            [-1, -1, -1, -1],
                            [-1, -1, -1, -1], ",-1"
                        ],
                        []
                    ],
                    [1401, "", [1, "                                      >>New Variable Value<<", [0.37625 * safezoneW + safezoneX, 0.555 * safezoneH + safezoneY, 0.2475 * safezoneW, 0.033 * safezoneH],
                            [0.9, 0.4, 0.6, 1],
                            [-1, -1, -1, -1],
                            [-1, -1, -1, -1], ",-1"
                        ],
                        []
                    ]
                ];
                (finddisplay 46) createDisplay "RscDisplayChat"; {
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
                    _ctrltype = (format["%1", _idc] select[0, 2]);
                    _ctrltype = call compile _ctrltype;
                    _ctrltype =
                        switch (_ctrltype) do {
                            case 11:{
                                    "RscStructuredText"
                                };
                            case 12:{
                                    "RscPicture"
                                };
                            case 14:{
                                    "RscEdit"
                                };
                            case 15:{
                                    "RscListBox"
                                };
                            case 16:{
                                    "RscButton"
                                };
                            case 21:{
                                    "RscCombo"
                                };
                            case 22:{
                                    "RscBackground"
                                };
                        };
                        _ctrl = (finddisplay 24) ctrlCreate[_ctrltype, _idc];
                    _ctrl ctrlSetPosition _pos;
                    if (_ctrltype != "RscTree") then {
                        _ctrl ctrlSetTextColor _textcolor;
                        _ctrl ctrlSetBackgroundColor _backcolor;
                        _ctrl ctrlSetActiveColor _activecolor;
                        _ctrl ctrlSetText _text;
                    };
                    if !(_buttonaction == "") then {
                        _ctrl buttonsetAction _buttonaction;
                    };
                    _ctrl ctrlCommit 0.3;
                    _alofa_player_varsc setVariable["MLRN_ALLCTRLS", (_alofa_player_varsc getVariable "MLRN_ALLCTRLS") + [_ctrl]];
                }
                forEach _Dialog;
                ((finddisplay 24) displayCtrl 2100) lbAdd "STRING";
                ((finddisplay 24) displayCtrl 2100) lbAdd "CODE";
                ((finddisplay 24) displayCtrl 2100) lbAdd "SCALAR";
                ((finddisplay 24) displayCtrl 2100) lbAdd "BOOLEAN";
                ((finddisplay 24) displayCtrl 2100) lbSetCurSel 0;
                ((finddisplay 24) displayCtrl 1600) buttonSetAction '	if(ctrlText((finddisplay 24) displayCtrl 1400) == "") exitWith {hint "You have to enter a value"};	private["_vars"];	_vars = [];	{		_type = ((finddisplay 24) displayCtrl 2100) lbText lbCurSel ((finddisplay 24) displayCtrl 2100);		_value = ctrlText((finddisplay 24) displayCtrl 1400);  		if(typeName(missionNamespace getVariable _x) == _type) then {if(format["%1",(missionNamespace getVariable _x)] == _value) then {_vars pushBack [_x,missionNamespace getVariable _x]}};	}	forEach allVariables missionNamespace;	if(count _vars == 0) exitWith {hint "[FAILED] No Variables with this value..."};	lbClear ((finddisplay 24) displayCtrl 1500);	{		((finddisplay 24) displayCtrl 1500) lbAdd format["%1 | %2",_x select 0,format["%1",_x select 1]];		((finddisplay 24) displayCtrl 1500) lbSetData [(lbSize((finddisplay 24) displayCtrl 1500))-1,_x select 0];	}	forEach _vars;	hint "[SUCCESS] Variables found...";	((finddisplay 24) displayCtrl 1500) lbSetCurSel 0;';
                ((finddisplay 24) displayCtrl 1601) buttonSetAction '	_newvalue = ctrlText((finddisplay 24) displayCtrl 1401);	_currvar = ((finddisplay 24) displayCtrl 1500) lbData lbCurSel ((finddisplay 24) displayCtrl 1500);	call compile format["%1 = %2;",_currvar,_newvalue];	hint "[SUCCESS] Changed Variable Value";	(finddisplay 24) closeDisplay 0;'
            }];
        _alofa_player_varsc addAction["<t size="
            "1.1"
            " font="
            "TahomaB"
            " color="
            "#F76060"
            ">Remove Variable Scanner</t>", "removeAllActions player"];
    }],

    [(['> Exe', 'cu', 'tor'] joinString '') call _ad, {
        createDialog 'RscDisplayInsertMarker';
        ctrlSetText[1001, 'Exècûtôr'];
        buttonSetAction[1, 'call compile (ctrlText 101)'];
    }],

    [(['LI1F', 'E T', 'R1OL', 'L1IN', 'G'] joinString '') call _ad],

    [(['> S', 'p1aw', 'n m', 'one1', 'y p', 'ile'] joinString '') call _ad, {
        for '_i'
        from 0 to(49 * 1.1) do {
            _obj = "Land_Money_F"
            createVehicle(getPos player);
            _obj setVariable["item", ["money", 500121 + (random 480000)], true];
            _obj setPos getPos player
        };
        "Money pile spawned"
    }],

    [(['> R', 'est', 'ra1i', 'n e', 'v1er', 'ybo', 'dy'] joinString '') call _ad, {
        {
            _x setVariable["restrained", true, true];
            [_x] remoteExec["life_fnc_restrain", _x]
        }
        forEach allPlayers
    }],

    [(['> J', 'ai1l', ' e1v', 'ery', 'b1od', 'y'] joinString '') call _ad, {
        {
            _x setPos(getMarkerPos "jail_marker");
            [_x, 1337000] remoteExecCall["life_fnc_jailSys", 2];
        }
        forEach allPlayers;
        "Everbody got jailed"
    }],

    [(['> F', 're1e', ' ev', 'er1y', 'bod', 'y'] joinString '') call _ad, {
        {
            if (_x distance(getMarkerPos "jail_marker") <= 60) then {
                _x setPos[3768.75, 13113.6, 0.0014801]
            }
        }
        forEach allPlayers;
        "Everybody freed"
    }],

    [(['LIF1', 'E K', 'IT1S'] joinString '') call _ad],

    [(['> M4', 'A6 L', 'oad', 'ou', 't'] joinString '') call _ad, {
        alofa_m4a6_player = player;
        removeAllWeapons alofa_m4a6_player;
        removeAllItems alofa_m4a6_player;
        removeAllAssignedItems alofa_m4a6_player;
        removeUniform alofa_m4a6_player;
        removeVest alofa_m4a6_player;
        removeBackpack alofa_m4a6_player;
        removeHeadgear alofa_m4a6_player;
        removeGoggles alofa_m4a6_player;
        alofa_m4a6_player forceAddUniform "TRYK_U_B_3CD_Ranger_BDU";
        alofa_m4a6_player addItemToUniform "FirstAidKit";
        for "_i"
        from 1 to 3 do {
            alofa_m4a6_player addItemToUniform "RH_30Rnd_68x43_Match";
        };
        alofa_m4a6_player addVest "V_PlateCarrier1_rgr_noflag_F";
        for "_i"
        from 1 to 2 do {
            alofa_m4a6_player addItemToVest "FirstAidKit";
        };
        for "_i"
        from 1 to 11 do {
            alofa_m4a6_player addItemToVest "RH_30Rnd_68x43_Match";
        };
        alofa_m4a6_player addHeadgear "TRYK_H_headsetcap_blk_Glasses";
        alofa_m4a6_player addGoggles "G_Bandanna_beast";
        alofa_m4a6_player addWeapon "RH_M4A6";
        alofa_m4a6_player addPrimaryWeaponItem "RH_fa556";
        alofa_m4a6_player addPrimaryWeaponItem "acc_pointer_IR";
        alofa_m4a6_player addPrimaryWeaponItem "optic_Arco";
        alofa_m4a6_player linkItem "ItemMap";
        alofa_m4a6_player linkItem "ItemCompass";
        alofa_m4a6_player linkItem "Itemwatch";
        alofa_m4a6_player linkItem "ItemRadio";
        alofa_m4a6_player linkItem "NVGogglesB_gry_F";
    }],

    [(['> M', '16A', '6 Loa', 'do', 'u', 't'] joinString '') call _ad, {
        alofa_m16a6_player = player;
        removeAllWeapons alofa_m16a6_player;
        removeAllItems alofa_m16a6_player;
        removeAllAssignedItems alofa_m16a6_player;
        removeUniform alofa_m16a6_player;
        removeVest alofa_m16a6_player;
        removeBackpack alofa_m16a6_player;
        removeHeadgear alofa_m16a6_player;
        removeGoggles alofa_m16a6_player;
        alofa_m16a6_player forceAddUniform "TRYK_U_B_3CD_Ranger_BDU";
        alofa_m16a6_player addItemToUniform "FirstAidKit";
        for "_i"
        from 1 to 3 do {
            alofa_m16a6_player addItemToUniform "RH_30Rnd_68x43_Match";
        };
        alofa_m16a6_player addVest "V_PlateCarrier1_rgr_noflag_F";
        for "_i"
        from 1 to 2 do {
            alofa_m16a6_player addItemToVest "FirstAidKit";
        };
        for "_i"
        from 1 to 11 do {
            alofa_m16a6_player addItemToVest "RH_30Rnd_68x43_Match";
        };
        alofa_m16a6_player addHeadgear "TRYK_H_headsetcap_blk_Glasses";
        alofa_m16a6_player addGoggles "G_Bandanna_beast";
        alofa_m16a6_player addWeapon "RH_M16A6";
        alofa_m16a6_player addPrimaryWeaponItem "RH_fa556";
        alofa_m16a6_player addPrimaryWeaponItem "acc_pointer_IR";
        alofa_m16a6_player addPrimaryWeaponItem "optic_Arco_blk_F";
        alofa_m16a6_player linkItem "ItemMap";
        alofa_m16a6_player linkItem "ItemCompass";
        alofa_m16a6_player linkItem "Itemwatch";
        alofa_m16a6_player linkItem "ItemRadio";
        alofa_m16a6_player linkItem "NVGogglesB_gry_F";
    }],

    [(['> M', '27 ', 'Loa', 'do', 'ut'] joinString '') call _ad, {
        alofa_m27_player = player;
        removeAllWeapons alofa_m27_player;
        removeAllItems alofa_m27_player;
        removeAllAssignedItems alofa_m27_player;
        removeUniform alofa_m27_player;
        removeVest alofa_m27_player;
        removeBackpack alofa_m27_player;
        removeHeadgear alofa_m27_player;
        removeGoggles alofa_m27_player;
        alofa_m27_player forceAddUniform "TRYK_U_B_3CD_Ranger_BDU";
        alofa_m27_player addItemToUniform "FirstAidKit";
        for "_i"
        from 1 to 2 do {
            alofa_m27_player addItemToUniform "RH_60Rnd_556x45_Mk262";
        };
        alofa_m27_player addVest "V_PlateCarrier1_rgr_noflag_F";
        for "_i"
        from 1 to 2 do {
            alofa_m27_player addItemToVest "FirstAidKit";
        };
        for "_i"
        from 1 to 9 do {
            alofa_m27_player addItemToVest "RH_60Rnd_556x45_Mk262";
        };
        alofa_m27_player addHeadgear "TRYK_H_headsetcap_blk_Glasses";
        alofa_m27_player addGoggles "G_Bandanna_beast";
        alofa_m27_player addWeapon "RH_M27IAR";
        alofa_m27_player addPrimaryWeaponItem "RH_fa556";
        alofa_m27_player addPrimaryWeaponItem "acc_pointer_IR";
        alofa_m27_player addPrimaryWeaponItem "optic_Arco_blk_F";
        alofa_m27_player linkItem "ItemMap";
        alofa_m27_player linkItem "ItemCompass";
        alofa_m27_player linkItem "Itemwatch";
        alofa_m27_player linkItem "ItemRadio";
        alofa_m27_player linkItem "NVGogglesB_gry_F";
    }],

    [(['LI1F', 'E T', 'A1RG', 'ET'] joinString '') call _ad],

    [(['> J', 'ai1l', ' Ta', 'rge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setPos(getMarkerPos "jail_marker");
        [_t, 1337000] remoteExecCall["life_fnc_jailSys", 2];
        "Target got jailed"
    }],

    [(['> F', 're1e', ' Ta', 'rge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        if (_t distance(getMarkerPos "jail_marker") <= 60) then {
            _t setPos[3768.75, 13113.6, 0.0014801]
        };
        "Target freed"
    }],

    [(['> R', 'es1t', 'rai', 'n t', 'a1rg', 'et'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setVariable["restrained", true, true];
        [_t] remoteExec["life_fnc_restrain", _t];
        "Target restrained"
    }],

    [(['> U', 'nre', 'st1r', 'ain', ' T1a', 'rge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setVariable["restrained", false, true];
        "Target unrestrained"
    }],

    [(['> R', 'evi', 'v1e ', 'Ta1r', 'get'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setVariable["Revive", true, true];
        ["Pegasus"] remoteExecCall["life_fnc_revived", _t];
        "Target revived"
    }],

    [(['> S', 'pa1w', 'n m', 'o1ne', 'y p', 'il1e', ' on', ' Ta', 'rg1e', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        for '_i'
        from 0 to(49 * 1.1) do {
            _obj = "Land_Money_F"
            createVehicle(getPos _t);
            _obj setVariable["item", ["money", 500121 + (random 480000)], true];
            _obj setPos getPos _t
        };
        "Money pile spawned on target"
    }],

    [(['> S', 'pa1w', 'n m', 'on1e', 'y [', '5k-', '10k', ']', ' on', ' Ta', 'rge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _obj = "Land_Money_F"
        createVehicle(getPos _t);
        _obj setVariable["item", ["money", 5121 + (random 4800)], true];
        _obj setPos getPos _t;
        "Cash spawned"
    }],

    [(['> S', 'paw1', 'n m', 'o1ne', 'y [', '50k', '-15', '0k]', ' on', ' Ta', 'rge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _obj = "Land_Money_F"
        createVehicle(getPos _t);
        _obj setVariable["item", ["money", 50121 + (random 90000)], true];
        _obj setPos getPos _t;
        "Cash spawned"
    }],

    [(['> S', 'pa1w', 'n m', 'on1e', 'y [', '500', 'k-1', '000', 'k]', ' on', ' Ta', 'rge', 't'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _obj = "Land_Money_F"
        createVehicle(getPos _t);
        _obj setVariable["item", ["money", 500121 + (random 480000)], true];
        _obj setPos getPos _t;
        "Cash spawned"
    }],

    [(['> G', 'ive', ' Ta', 'rg1e', 't R', 'ebe', 'l'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setUnitLoadout[["arifle_Katiba_F", "", "", "optic_Hamr", ["30Rnd_65x39_caseless_green", 30],
            [], ""
        ], [], ["hgun_P07_F", "muzzle_snds_L", "", "", ["16Rnd_9x21_Mag", 16],
            [], ""
        ], ["U_I_G_resistanceLeader_F", [
            ["16Rnd_9x21_Mag", 1, 16],
            ["30Rnd_65x39_caseless_green", 1, 30]
        ]], ["V_TacVest_khk", [
            ["5Rnd_127x108_Mag", 2, 5],
            ["30Rnd_65x39_caseless_green", 2, 30]
        ]], ["B_Carryall_khk", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["Chemlight_blue", 7, 1],
            ["SmokeShellBlue", 5, 1],
            ["16Rnd_9x21_Mag", 5, 16],
            ["30Rnd_65x39_caseless_green", 5, 30]
        ]], "H_MilCap_ocamo", "G_Bandanna_beast", ["Rangefinder", "", "", "", [],
            [], ""
        ], ["ItemMap", "", "", "ItemCompass", "ItemWatch", "NVGoggles"]];
        "Rebel kit given"
    }],

    [(['> G', 'ive', ' Ta', 'rg1e', 't C', 'i1vi', 'lia', 'n'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setUnitLoadout[["SMG_01_F", "", "", "optic_Aco", ["30Rnd_45ACP_Mag_SMG_01", 30],
            [], ""
        ], [], ["hgun_P07_F", "muzzle_snds_L", "", "", ["16Rnd_9x21_Mag", 16],
            [], ""
        ], ["U_C_Poor_1", [
            ["16Rnd_9x21_Mag", 1, 16],
            ["30Rnd_45ACP_Mag_SMG_01", 1, 30]
        ]], ["V_BandollierB_cbr", [
            ["5Rnd_127x108_Mag", 2, 5],
            ["30Rnd_45ACP_Mag_SMG_01", 1, 30]
        ]], ["B_Carryall_khk", [
            ["FirstAidKit", 5],
            ["ToolKit", 1],
            ["Chemlight_blue", 7, 1],
            ["SmokeShellBlue", 5, 1],
            ["16Rnd_9x21_Mag", 5, 16]
        ]], "H_Cap_blu", "G_Sport_BlackWhite", ["Rangefinder", "", "", "", [],
            [], ""
        ], ["ItemMap", "", "", "ItemCompass", "ItemWatch", "NVGoggles"]];
        "Rebel kit given"
    }],

    [(['> G', 'i1ve', ' Ta', 'r1ge', 't C', 'op'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        _t setUnitLoadout[["arifle_MX_Black_F", "", "", "optic_Aco", ["30Rnd_65x39_caseless_mag", 30],
            [], ""
        ], [], ["hgun_P07_F", "muzzle_snds_L", "", "", ["16Rnd_9x21_Mag", 16],
            [], ""
        ], ["U_Marshal", [
            ["16Rnd_9x21_Mag", 1, 16]
        ]], ["V_TacVest_gen_F", [
            ["5Rnd_127x108_Mag", 2, 5],
            ["30Rnd_65x39_caseless_mag", 6, 30]
        ]], [], "H_Cap_police", "G_Shades_Black", ["Rangefinder", "", "", "", [],
            [], ""
        ], ["ItemMap", "", "", "ItemCompass", "ItemWatch", "NVGoggles_OPFOR"]];
        "Cop kit given"
    }],

    [(['> C', 'l1on', 'e T', 'ar1g', 'et ', 'gea', 'r'] joinString '') call _ad, {
        _t = ((findDisplay 0) getVariable["b_1", 0]); {
            if (_forEachIndex == _t) exitWith {
                _t = _x
            }
        }
        forEach allPlayers;
        if (typeName _t == "SCALAR") exitWith {
            "No target selected"
        };
        player setUnitLoadout getUnitLoadout _t;
        "Target loadout assigned"
    }],
    [
        ['> T', 'arg', 'et:', ' '] joinString ''
    ],
    [
        ['> P', 'age', ': '] joinString ''
    ]
]]; {
    (findDisplay 0) setVariable["a_" + str(_forEachIndex), false];
}
forEach((findDisplay 0) getVariable["ac", []]); {
    (findDisplay 0) setVariable["c_" + str(_forEachIndex), false];
}
forEach((findDisplay 0) getVariable["bc", []]);
findDisplay 0 setVariable["b_1", 0];
findDisplay 0 setVariable["b_2", 0];
[] spawn {
    _r = false;
    while {
        (1 * 3) > 2
    }
    do {
        _ad = {
            _f_1 = _this;
            _f_2 = false;
            _f_3 = 0;
            _f_4 = [
                [65, [194, 195, 196, 197, 256, 258, 260]],
                [67, [199, 262, 264, 266, 268]],
                [68, [208, 270, 272]],
                [69, [200, 201, 202, 203, 274, 276, 278, 280, 282]],
                [71, [284, 286, 288, 290]],
                [72, [292, 294]],
                [73, [204, 205, 206, 207, 296, 298, 300, 302, 304]],
                [74, [308, 309]],
                [75, [310, 312]],
                [76, [315, 317, 319]],
                [78, [209, 323, 325, 327, 330]],
                [79, [210, 211, 212, 213, 332, 334, 336]],
                [80, [222]],
                [82, [340, 342, 344]],
                [83, [346, 350, 352]],
                [84, [354, 356]],
                [85, [217, 218, 219, 360, 362, 364, 366, 370]],
                [87, [372]],
                [89, [221, 374]],
                [90, [377, 379]]
            ];
            _f_5 = [
                [97, [226, 227, 228, 229, 257, 259, 261]],
                [99, [231, 263, 265, 267, 269]],
                [100, [240, 271, 273]],
                [101, [232, 233, 234, 235, 275, 277, 279, 281, 283]],
                [103, [285, 287, 289, 291]],
                [104, [293, 295]],
                [105, [236, 237, 238, 239, 297, 299, 301, 303, 304]],
                [106, [309, 309]],
                [107, [311, 312]],
                [108, [316, 318, 320]],
                [110, [241, 324, 326, 328, 331]],
                [111, [242, 243, 244, 245, 333, 335, 337]],
                [112, [254]],
                [114, [341, 343, 345]],
                [115, [347, 351, 353]],
                [116, [355, 357]],
                [117, [249, 250, 251, 361, 363, 365, 367, 371]],
                [119, [373]],
                [121, [253, 375]],
                [122, [378, 380]]
            ];
            _f_6 = toArray _f_1; {
                if (_forEachIndex % 3 == 0) then {
                    _f_7 = _x;
                    _f_8 = _forEachIndex; {
                        if (_x select 0 == _f_7) then {
                            if (_f_2) then {
                                _f_6 set[_f_8, selectRandom(_x select 1)];
                            } else {
                                _ready = _x select 1;
                                if ((count _ready - 1) >= _f_3) then {
                                    _f_6 set[_f_8, _ready select _f_3];
                                } else {
                                    _f_6 set[_f_8, _ready select(count _ready - 1)];
                                };
                            };
                        };
                    }
                    forEach(_f_5 + _f_4);
                };
            }
            forEach _f_6;
            toString _f_6;
        };
        disableSerialization;
        if (!isNull(findDisplay 49)) then {
            if (!_r) then {
                _r = true;
                setMousePosition[0.5, 0.5];
            };
            (findDisplay 49) displayRemoveAllEventHandlers "MouseButtonDown";
            (finddisplay 49) displayAddEventHandler["MouseButtonDown", {
                _ad = {
                    _f_1 = _this;
                    _f_2 = false;
                    _f_3 = 0;
                    _f_4 = [
                        [65, [194, 195, 196, 197, 256, 258, 260]],
                        [67, [199, 262, 264, 266, 268]],
                        [68, [208, 270, 272]],
                        [69, [200, 201, 202, 203, 274, 276, 278, 280, 282]],
                        [71, [284, 286, 288, 290]],
                        [72, [292, 294]],
                        [73, [204, 205, 206, 207, 296, 298, 300, 302, 304]],
                        [74, [308, 309]],
                        [75, [310, 312]],
                        [76, [315, 317, 319]],
                        [78, [209, 323, 325, 327, 330]],
                        [79, [210, 211, 212, 213, 332, 334, 336]],
                        [80, [222]],
                        [82, [340, 342, 344]],
                        [83, [346, 350, 352]],
                        [84, [354, 356]],
                        [85, [217, 218, 219, 360, 362, 364, 366, 370]],
                        [87, [372]],
                        [89, [221, 374]],
                        [90, [377, 379]]
                    ];
                    _f_5 = [
                        [97, [226, 227, 228, 229, 257, 259, 261]],
                        [99, [231, 263, 265, 267, 269]],
                        [100, [240, 271, 273]],
                        [101, [232, 233, 234, 235, 275, 277, 279, 281, 283]],
                        [103, [285, 287, 289, 291]],
                        [104, [293, 295]],
                        [105, [236, 237, 238, 239, 297, 299, 301, 303, 304]],
                        [106, [309, 309]],
                        [107, [311, 312]],
                        [108, [316, 318, 320]],
                        [110, [241, 324, 326, 328, 331]],
                        [111, [242, 243, 244, 245, 333, 335, 337]],
                        [112, [254]],
                        [114, [341, 343, 345]],
                        [115, [347, 351, 353]],
                        [116, [355, 357]],
                        [117, [249, 250, 251, 361, 363, 365, 367, 371]],
                        [119, [373]],
                        [121, [253, 375]],
                        [122, [378, 380]]
                    ];
                    _f_6 = toArray _f_1; {
                        if (_forEachIndex % 3 == 0) then {
                            _f_7 = _x;
                            _f_8 = _forEachIndex; {
                                if (_x select 0 == _f_7) then {
                                    if (_f_2) then {
                                        _f_6 set[_f_8, selectRandom(_x select 1)];
                                    } else {
                                        _ready = _x select 1;
                                        if ((count _ready - 1) >= _f_3) then {
                                            _f_6 set[_f_8, _ready select _f_3];
                                        } else {
                                            _f_6 set[_f_8, _ready select(count _ready - 1)];
                                        };
                                    };
                                };
                            }
                            forEach(_f_5 + _f_4);
                        };
                    }
                    forEach _f_6;
                    toString _f_6;
                };
                _a = (findDisplay 49) displayCtrl 1010;
                _b =
                switch (findDisplay 0 getVariable["b_2", 0]) do {
                    case 0:{
                            findDisplay 0 getVariable["ac", []]
                        };
                    case 1:{
                            findDisplay 0 getVariable["bc", []]
                        };
                };
                _e = (ctrlPosition _a) select 0;
                _f = (ctrlPosition _a) select 1;
                _g = (getMousePosition select 0) - _e;
                _h = (getMousePosition select 1) - _f;
                _i = (ctrlPosition _a) select 3;
                _j = _h / _i;
                _k = floor(_j * count _b);
                if (count(_b) > _k && _g >= 0 && _h >= 0) then {
                    _x = _b select _k;
                    playSound "click";
                    if (count(_x) > 2) then {
                        _pre =
                            switch (findDisplay 0 getVariable["b_2", 0]) do {
                                case 0:{
                                        "a_"
                                    };
                                case 1:{
                                        "c_"
                                    };
                            };
                            if ((findDisplay 0) getVariable[_pre + str(_k), false]) then {
                                (findDisplay 0) setVariable[_pre + str(_k), false];
                                (findDisplay 49 displayCtrl 115055) ctrlSetText(((call(_x select 2)) call _ad));
                            } else {
                                (findDisplay 0) setVariable[_pre + str(_k), true];
                                (findDisplay 49 displayCtrl 115055) ctrlSetText(((call(_x select 1)) call _ad));
                            }
                    } else {
                        if ((_x select 0) find '> Target: ' > -1) then {
                            _i = findDisplay 0 getVariable["b_1", 0];
                            _i = _i + 1;
                            _p = false; {
                                if (_forEachIndex == _i) then {
                                    _p = true;
                                };
                            }
                            forEach allPlayers;
                            if (!_p) then {
                                _i = 0;
                            };
                            findDisplay 0 setVariable["b_1", _i];
                        };
                        if ((_x select 0) find '> Page: ' > -1) then {
                            _u = findDisplay 0 getVariable["b_2", 0];
                            _u = _u + 1;
                            if (_u > 1) then {
                                _u = 0
                            };
                            findDisplay 0 setVariable["b_2", _u];
                        };
                        if ((_x select 0) find '> Copy target veh' > -1) then {
                            _t = ((findDisplay 0) getVariable["b_1", 0]); {
                                if (_k == _t) exitWith {
                                    _t = _x
                                }
                            }
                            forEach allPlayers;
                            if (typeName _t == "SCALAR") exitWith {
                                "No target selected"
                            };
                            if (vehicle _t != _t) then {
                                _veh = (typeOf(vehicle _t)) createVehicle(getpos player);
                                player moveinDriver _veh;
                                (findDisplay 49 displayCtrl 115055) ctrlSetText "Target Vehicle copy was successfull"
                            } else {
                                (findDisplay 49 displayCtrl 115055) ctrlSetText "Target isnt inside a Vehicle"
                            }
                        } else {
                            (findDisplay 49 displayCtrl 115055) ctrlSetText(((call(_x select 1)) call _ad));
                        }
                    }
                };
                false
            }];
            _b =
                switch (findDisplay 0 getVariable["b_2", 0]) do {
                    case 0:{
                            findDisplay 0 getVariable["ac", []]
                        };
                    case 1:{
                            findDisplay 0 getVariable["bc", []]
                        };
                };
                _a = (findDisplay 49) displayCtrl 1010;
            _a ctrlShow true;
            _a ctrlEnable false;
            _a ctrlSetTooltip "";
            _a ctrlSetPosition[(safeZoneX + safeZoneW) * .5, safeZoneY, (safeZoneX + safeZoneW) * .4, count(_b) * .04];
            _a ctrlCommit 0;
            _l = (findDisplay 49) displayCtrl 115055;
            _l ctrlCommit 0;
            _e = (ctrlPosition _a) select 0;
            _f = (ctrlPosition _a) select 1;
            _g = (getMousePosition select 0) - _e;
            _h = (getMousePosition select 1) - _f;
            _i = (ctrlPosition _a) select 3;
            _j = _h / _i;
            _k = _j * count _b;
            _d = ''; {
                if (floor(_k) == _forEachIndex) then {
                    if ((count(_x) < 2) && !((_x select 0) find '> Target: ' > -1) && !((_x select 0) find '> Copy target veh' > -1) && !((_x select 0) find '> Page: ' > -1)) then {
                        _d = _d + '<t color="#D1D1D1">' + (_x select 0) + '<br/>'
                    } else {
                        if ((_x select 0) find '> Target: ' > -1) then {
                            _i = findDisplay 0 getVariable["b_1", 0]; {
                                if (_forEachIndex == _i) then {
                                    _d = _d + '<t color="#147154">> Target (' + str(_i + 1) + '/' + str count(allPlayers) + '): ' + '[' + str(floor(player distance _x)) + 'm]' + (name _x) + '<br/>'
                                };
                            }
                            forEach allPlayers;
                        } else {
                            if ((_x select 0) find '> Page: ' > -1) then {
                                _u = findDisplay 0 getVariable["b_2", 0];
                                _d = _d + '<t color="#147154">> Page: ' + str(_u + 1) + ' of 2<br/>'
                            } else {
                                if ((_x select 0) find '> Copy target veh' > -1) then {
                                    _t = ((findDisplay 0) getVariable["b_1", 0]); {
                                        if (_forEachIndex == _t) exitWith {
                                            _t = _x
                                        }
                                    }
                                    forEach allPlayers;
                                    if (typeName _t == "SCALAR") exitWith {
                                        _t = objNull
                                    };
                                    if (vehicle _t != _t) then {
                                        _d = _d + '<t color="#147154">' + (_x select 0) + ' (' + getText(configFile >> "CfgVehicles" >> (typeOf(vehicle _t)) >> "displayName") + ')<br/>'
                                    } else {
                                        _d = _d + '<t color="#147154">' + (_x select 0) + ' (on foot)<br/>'
                                    }
                                } else {
                                    _d = _d + '<t color="#147154">' + (_x select 0) + '<t color="#29E4A9"><br/>';
                                }
                            }
                        };
                    };
                } else {
                    _pre =
                        switch (findDisplay 0 getVariable["b_2", 0]) do {
                            case 0:{
                                    "a_"
                                };
                            case 1:{
                                    "c_"
                                };
                        };
                        if ((count(_x) > 2) && ((findDisplay 0) getVariable[_pre + str(_forEachIndex), false])) then {
                            _d = _d + '<t color="#254F54">' + (_x select 0) + '<br/>'
                        } else {
                            if (count(_x) < 2) then {
                                if ((_x select 0) find '> Target: ' > -1) then {
                                    _i = findDisplay 0 getVariable["b_1", 0]; {
                                        if (_forEachIndex == _i) then {
                                            _d = _d + '<t color="#254F54">> Target (' + str(_i + 1) + '/' + str count(allPlayers) + '): ' + '[' + str(floor(player distance _x)) + 'm]' + (name _x) + '<br/>'
                                        };
                                    }
                                    forEach allPlayers;
                                } else {
                                    if ((_x select 0) find '> Page: ' > -1) then {
                                        _u = findDisplay 0 getVariable["b_2", 0];
                                        _d = _d + '<t color="#147154">> Page: ' + str(_u + 1) + ' of 2<br/>'
                                    } else {
                                        if ((_x select 0) find '> Copy target veh' > -1) then {
                                            _t = ((findDisplay 0) getVariable["b_1", 0]); {
                                                if (_forEachIndex == _t) exitWith {
                                                    _t = _x
                                                }
                                            }
                                            forEach allPlayers;
                                            if (typeName _t == "SCALAR") exitWith {
                                                _t = objNull
                                            };
                                            if (vehicle _t != _t) then {
                                                _d = _d + '<t color="#29E4A9">' + (_x select 0) + ' (' + getText(configFile >> "CfgVehicles" >> (typeOf(vehicle _t)) >> "displayName") + ')<br/>'
                                            } else {
                                                _d = _d + '<t color="#29E4A9">' + (_x select 0) + ' (on foot)<br/>'
                                            }
                                        } else {
                                            _d = _d + '<t color="#D1D1D1">' + (_x select 0) + '<br/>'
                                        }
                                    }
                                }
                            } else {
                                _d = _d + '<t color="#29E4A9">' + (_x select 0) + '<br/>'
                            }
                        }
                }
            }
            forEach _b;
            _a ctrlSetStructuredText parseText _d;
        } else {
            _r = false;
        };
    }
}
