[] spawn {

    disableserialization;
    _getVariable = _this select 0;
    15401 cutrsc ["rscDynamicText","plain"];
    _display              = uinamespace getvariable "BIS_dynamicText";
    _fghiopahrheyavhfasfa = _display displayctrl 9999;
    _fghiopahrheyavhfasfa ctrlsetposition [safezonex,safezoney,safezonew,safezoneh/20];
    _fghiopahrheyavhfasfa ctrlsetbackgroundcolor [0,0,0,0];
    _fghiopahrheyavhfasfa ctrlsettextcolor [random(1),random(1),random(1),1];
    _fghiopahrheyavhfasfa ctrlSetStructuredText parseText "<t size='0.8' align='left'>Exo_Build_v2.0 - Inventory to Open</t>";
    _fghiopahrheyavhfasfa ctrlCommit 0;


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,-0.20,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaBold";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "Exile Spawn Menu";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_Var_EMPTY];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,-0.16,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Building Supplies";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_EXILE_ONE];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,-0.12,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Weapon Crate";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_EXILE_TWO];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,-0.08,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Consumables Crate";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_EXILE_THREE];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,-0.04,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Misc Crate";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_EXILE_FOUR];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaBold";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "Life Spawn Menu";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_Var_EMPTY];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.04,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> [$$] 25,000";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_EXILE_FIVE];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.08,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Weapon Crate";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_EXILE_SIX];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.12,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaBold";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "General Menu";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_Var_EMPTY];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.16,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Remove Grass";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", {setterrainGrid 50;}];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.20,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> No Fatigue";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_EXILE_SEVEN];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.24,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaBold";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "Loadouts Menu";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_Var_EMPTY];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.28,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Poor Newbie";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_KIT_NEWB];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.32,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Average Rebel";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_KIT_REBEL];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.36,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Casual Player";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_KIT_CASUAL];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.40,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Experienced Player";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_KIT_EXPERIENCED];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.44,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaBold";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "Pro Menu";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_Var_EMPTY];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.48,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Map Teleport";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", "[] spawn B_EX0_TELEPORT"];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.52,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Player ESP";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_SPIT_BARS];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.56,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Paint White";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_WHITE];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.60,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Paint Blue";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_BLUE];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.64,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Paint Yellow";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_YELLOW];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.68,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Delete Target";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_DEL];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.72,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaLight";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "> Money Pile Heaven";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_HEAVEN];
    };
    }];


    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _fghiopahrheyavh = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _fghiopahrheyavh ctrlSetPosition  [1.43,0.76,0.3,0.04];
    _fghiopahrheyavh ctrlSetFont "PuristaBold";
    _fghiopahrheyavh ctrlSetBackgroundColor [1,0,0,1];
    _fghiopahrheyavh ctrlCommit 0;
    _fghiopahrheyavh ctrlSetText "By 3D Printer";
    _fghiopahrheyavh ctrlAddEventHandler ["ButtonClick", B_EX0_Var_EMPTY];
    };
    }];







B_EX0_EXILE_ONE = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_NATO_Uniforms_F" createVehicle position _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Land_HBarrierWall6_F_Kit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Land_HBarrierTower_F_Kit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Land_BagBunker_Tower_F_Kit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_ConcreteGateKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_WoodDoorKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_WoodFloorKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_WoodWallKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_ConcreteFloorKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_ConcreteWallKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_ConcreteDoorKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Land_PortableLight_double_F_Kit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_FloodLightKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Land_Mil_WallBig_4m_F_Kit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Land_i_Garage_V2_F_Kit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Land_Hangar_F_Kit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Land_Castle_01_tower_F_Kit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_SafeKit", 20];
};

B_EX0_EXILE_TWO = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_NATO_Uniforms_F" createVehicle position _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_AK107", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_AK107_GL", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_AK74", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_AK74_GL", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_AK47", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_AKM", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_AKS", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_AKS_Gold", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_DMR", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_LeeEnfield", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_CZ550", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_SVD", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_SVDCamo", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_VSSVintorez", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_RPK", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_PK", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_Colt1911", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_Makarov", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_Taurus", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_TaurusGold", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["Exile_Weapon_M1014", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_30Rnd_762x39_AK", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_30Rnd_545x39_AK", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_30Rnd_545x39_AK_Green", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_30Rnd_545x39_AK_Red", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_30Rnd_545x39_AK_White", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_30Rnd_545x39_AK_Yellow", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_45Rnd_545x39_RPK_Green", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_75Rnd_545x39_RPK_Green", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_20Rnd_762x51_DMR", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_20Rnd_762x51_DMR_Yellow", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_20Rnd_762x51_DMR_Red", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_20Rnd_762x51_DMR_Green", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_10Rnd_303", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_100Rnd_762x54_PK_Green", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_7Rnd_45ACP", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_8Rnd_9x18", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_6Rnd_45ACP", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_5Rnd_22LR", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_10Rnd_762x54", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_10Rnd_9x39", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_20Rnd_9x39", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_8Rnd_74Slug", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_8Rnd_74Pellets", 20];
};

B_EX0_EXILE_THREE = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_NATO_Uniforms_F" createVehicle position _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_EMRE", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_GloriousKnakworst", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Surstromming", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_SausageGravy", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Catfood", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_ChristmasTinner", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_BBQSandwich", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_MacasCheese", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Dogfood", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_BeefParts", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Cheathas", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Noodles", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_SeedAstics", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Raisins", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Moobar", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_InstantCoffee", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_PlasticBottleCoffee", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_PowerDrink", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_PlasticBottleFreshWater", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Beer", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_EnergyDrink", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_ChocolateMilk", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_MountainDupe", 20];
};

B_EX0_EXILE_FOUR = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_NATO_Uniforms_F" createVehicle position _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_InstaDoc", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Vishpirin", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Bandage", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Defibrillator", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Matches", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_CookingPot", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Melee_Axe", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Melee_SledgeHammmer", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_CanOpener", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Handsaw", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Pliers", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Grinder", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Foolbox", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Headgear_GasMask", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Magazine_Battery", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Rope", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_DuctTape", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_ExtensionCord", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_JunkMetal", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_LightBulb", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_MetalBoard", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_SafeKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_CodeLock", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_Laptop", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_CamoTentKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_MetalPole", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Exile_Item_ThermalScannerPro", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ItemGPS", 20];
};

B_EX0_EXILE_FIVE = {
    life_cash = life_cash + 25000;
    ["cash","add",25000] call life_fnc_handleCash;
    systemChat "Added.";
};

B_EX0_EXILE_SIX = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_NATO_Uniforms_F" createVehicle position _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["arifle_Katiba_C_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["30Rnd_65x39_caseless_green", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["arifle_Mk20_GL_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["arifle_MX_SW_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["arifle_SDAR_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["20Rnd_556x45_UW_mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["SMG_01_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["LMG_Zafir_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["150Rnd_762x54_Box", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["srifle_EBR_DMS_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["20Rnd_762x51_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["hgun_Rook40_snds_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["30Rnd_9x21_Mag", 20];
};

B_EX0_EXILE_SEVEN = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
     while {true} do
    {
        _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo enableFatigue false;
        sleep 30;
    };
};

B_EX0_KIT_NEWB = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addBackpack "B_Carryall_khk";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo forceAddUniform "U_C_Poloshirt_tricolour";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addVest "V_TacVest_blk";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addHeadgear "H_Hat_blue";
};

B_EX0_KIT_REBEL = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addBackpack "B_Kitbag_sgg";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo forceAddUniform "U_IG_Guerilla2_2";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addVest "V_PlateCarrier2_blk";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addHeadgear "H_Booniehat_khk_hs";
};

B_EX0_KIT_CASUAL = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addBackpack "B_Kitbag_sgg";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo forceAddUniform "U_IG_Guerilla2_2";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addVest "V_TacVest_blk";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addHeadgear "H_Hat_blue";
};

B_EX0_KIT_EXPERIENCED = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addBackpack "B_Carryall_khk";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo forceAddUniform "U_O_Wetsuit";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addVest "V_PlateCarrierL_CTRG";
};

B_EX0_TELEPORT = {
   hint "Zoom in all the way where you want to teleport to and press Escape.";
   openMap [true,false];
   _grgrgsrgjyxkgfs = [0,0,0];
   while{visibleMap} do {
   _grgrgsrgjyxkgfs = ((findDisplay 12) displayCtrl 51) ctrlMapScreenToWorld [0.5,0.5];
   uiSleep 0.01;
   };
   vehicle player setpos _grgrgsrgjyxkgfs;
};

B_EX0_WHITE = {
    _fkjygtrcgbjpohhgug = cursorTarget;
    _pkjghtyt           = setObjectTexture;
    cursorTarget setObjectTexture [0, "#(rgb,8,8,3)color(1,1,1,1)"];
};

B_EX0_BLUE = {
    _fkjygtrcgbjpohhgug = cursorTarget;
    _pkjghtyt           = setObjectTexture;
    cursorTarget setObjectTexture [0, "#(rgb,8,8,3)color(0,1,1,1)"];
};
B_EX0_YELLOW = {
    _fkjygtrcgbjpohhgug = cursorTarget;
    _pkjghtyt           = setObjectTexture;
    cursorTarget setObjectTexture [0, "#(rgb,8,8,3)color(1,1,0,1)"];
};

B_EX0_DEL = {
    _fkjygtrcgbjpohhgug = cursorTarget;
    deleteVehicle _fkjygtrcgbjpohhgug;
};

B_EX0_HEAVEN = {
    _guiladrwr       = "Land_Money_F";
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    { _veh = _guiladrwr createVehicle position _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo; } forEach [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];
};

B_EX0_SPIT_BARS = {
    _jzzgrgrzhrhdrhdhg = "addMission";
                _jzzgrgrzhrhdrhdhg = _jzzgrgrzhrhdrhdhg + "EventHandler [""Draw3D"",{";
                _jzzgrgrzhrhdrhdhg = _jzzgrgrzhrhdrhdhg + "
                    _ordered = [];
                    {
                        if(player distance _x <= 2000) then {
                            _ordered pushback [str(side _x),str(vehicle _x == _x),name _x,_x];
                        };
                        } forEach (if(isMultiplayer) then {allPlayers} else {allUnits, vehicles});
                    _ordered sort true;
                    ";
                _jzzgrgrzhrhdrhdhg = _jzzgrgrzhrhdrhdhg + "
                    {
                        _side = _x select 0;
                        _inVehicle = _x select 1;
                        _name = _x select 2;
                        _object = _x select 3;
                        ";
                _jzzgrgrzhrhdrhdhg = _jzzgrgrzhrhdrhdhg + "
                        _pos = (_object modelToWorld ((_object selectionPosition ""neck"") vectorAdd [0,0,-0.3]));
                        ";
                _jzzgrgrzhrhdrhdhg = _jzzgrgrzhrhdrhdhg + "
                        _color = [1,0,1,1];
                        if(side _object == blufor) then {
                            _color = [0,0,1,1];
                        };
                        if(side _object == opfor) then {
                            _color = [1,0,0,1];
                        };
                        if(side _object == independent) then {
                            _color = [0,1,0,1];
                        };
                        if(getplayeruid _object in [""76561198152111329"",""76561198276380268""]) then {
                            _color  =  [1,1,0];
                            _name = ""INFISTAR"";
                        };

                        _scale = (0.05 - (0.05 *((player distance _object)/3000)));
                        if(_scale > 0) then {
                            draw";
                            _jzzgrgrzhrhdrhdhg = _jzzgrgrzhrhdrhdhg + "Icon3D ["""", _color, _pos, 0, 0, 0, ""ô"", 2, _scale, ""EtelkaMonospaceProBold"",""center"",true];
                        };
                    } forEach _ordered;

                }];";

    _sfdfasafadad               = compile _jzzgrgrzhrhdrhdhg;
    _fffasafadasdafsgdehjtuzdss = call _sfdfasafadad;
};


comment "Empty Variable";
B_EX0_Var_EMPTY = {

};
comment "Blue uniform script";
B_EX0_Var_CLR_BLUE = {
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo setObjectTexture [0, "#(rgb,8,8,3)color(0,1,1,1)"];
    (backpackContainer _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo) setObjectTexture [0,'#(argb,8,8,3)color(0,1,1,1)'];
    hintSilent "Complete.";
};


};
