[] spawn {

    disableserialization;
    _getVariable = _this select 0;
    15401 cutrsc ["rscDynamicText","plain"];
    _display              = uinamespace getvariable "BIS_dynamicText";
    _dfhertjdfajdfjkatjtdykjsryj = _display displayctrl 9999;
    _dfhertjdfajdfjkatjtdykjsryj ctrlsetposition [safezonex,safezoney,safezonew,safezoneh/20];
    _dfhertjdfajdfjkatjtdykjsryj ctrlsetbackgroundcolor [0,0,0,0];
    _dfhertjdfajdfjkatjtdykjsryj ctrlsettextcolor [random(1),random(1),random(1),1];
    _dfhertjdfajdfjkatjtdykjsryj ctrlSetStructuredText parseText "<t size='0.8' align='left'>Arma.Team Hades Menu - Open Inventory to Open</t>";
    _dfhertjdfajdfjkatjtdykjsryj ctrlCommit 0;


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,-0.20,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaBold";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "Arma.Team Hades Menu";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_Var_EMPTY];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,-0.16,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Hacker Weapons";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_ARMATEAM_ONE];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,-0.12,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Launcher Crate";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_ARMATEAM_TWO];
    };
    }];

    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,-0.08,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Explosives Crate";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_ARMATEAM_THREE];
    };
    }];

    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,-0.04,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Misc Crate";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_ARMATEAM_FOUR];
    };
    }];

    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaBold";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "Life Spawn Menu";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_Var_EMPTY];
    };
    }];

    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.04,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> [$$] 25,000";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_ARMATEAM_FIVE];
    };
    }];

    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.08,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Weapon Crate";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_ARMATEAM_SIX];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.12,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaBold";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "General Menu";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_Var_EMPTY];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.16,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Remove Grass";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", {setterrainGrid 50;}];
    };
    }];

    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.20,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> No Fatigue";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_ARMATEAM_SEVEN];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.24,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaBold";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "Loadouts Menu";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_Var_EMPTY];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.28,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> New Player";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_KIT_NEWB];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.32,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Rebel";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_KIT_REBEL];
    };
    }];

    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.36,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Normal Player";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_KIT_CASUAL];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.40,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Experienced Rebel";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_KIT_EXPERIENCED];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.44,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaBold";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "Pro Menu";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_Var_EMPTY];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.48,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Map Teleport";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", "[] spawn B_ATM_TELEPORT"];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.52,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Player ESP";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_SPIT_BARS];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.56,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Unlimited Ammo";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_WHITE];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.60,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> No Recoil";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_BLUE];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.64,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> God mode";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_YELLOW];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.68,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Delete Target";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_DEL];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.72,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaLight";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "> Money Pile Heaven";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_HEAVEN];
    };
    }];


    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addEventHandler ["InventoryOpened", {
    _tjwtjterh24qjnardtj35haetha = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _h42q6jetjeqtj4qjndfj57yyi46734565gj = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetPosition  [1.43,0.76,0.3,0.04];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetFont "PuristaBold";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetBackgroundColor [1,0,0,1];
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlCommit 0;
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlSetText "By Arma.Team";
    _h42q6jetjeqtj4qjndfj57yyi46734565gj ctrlAddEventHandler ["ButtonClick", B_ATM_Var_EMPTY];
    };
    }];







B_ATM_ARMATEAM_ONE = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_IND_AmmoVeh_F" createVehicle position _gfkjyk357k6246rastjhadj4wed;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["MMG_02_black_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["MMG_02_camo_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["MMG_02_sand_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["130Rnd_338_Mag", 25];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["MMG_01_hex_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["MMG_01_tan_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["150Rnd_93x64_Mag", 25];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["srifle_GM6_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["srifle_GM6_ghex_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["srifle_GM6_camo_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["5Rnd_127x108_APDS_Mag", 30];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["5Rnd_127x108_Mag", 30];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["LMG_03_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["200Rnd_556x45_Box_F", 20];
};

B_ATM_ARMATEAM_TWO = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_IND_AmmoVeh_F" createVehicle position _gfkjyk357k6246rastjhadj4wed;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_NLAW_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_RPG32_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_B_Titan_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_I_Titan_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_O_Titan_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_Titan_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_B_Titan_short_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_I_Titan_short_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_O_Titan_short_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_Titan_short_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_RPG7_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_MRAWS_olive_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_MRAWS_olive_rail_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_MRAWS_green_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_MRAWS_green_rail_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_MRAWS_sand_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_MRAWS_sand_rail_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_O_Vorona_brown_F", 2];
    _fjppojjnbjtfcrerwcgbjoi addWeaponCargoGlobal ["launch_O_Vorona_green_F", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["NLAW_F", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["RPG32_F", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["RPG32_HE_F", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Titan_AA", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Titan_AP", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Titan_AT", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["RPG7_F", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["MRAWS_HEAT_F", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["MRAWS_HE_F", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Vorona_HEAT", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["Vorona_HE", 20];
};

B_ATM_ARMATEAM_THREE = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_IND_AmmoVeh_F" createVehicle position _gfkjyk357k6246rastjhadj4wed;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["MiniGrenade", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["HandGrenade", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["APERSMine_Range_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["APERSMineDispenser_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["APERSTripMine_Wire_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ATMine_Range_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["IEDLandBig_Remote_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["IEDLandSmall_Remote_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ATMine_Range_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["IEDUrbanBig_Remote_Mag", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["IEDUrbanSmall_Remote_Mag", 20];
};

B_ATM_ARMATEAM_FOUR = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_IND_AmmoVeh_F" createVehicle position _gfkjyk357k6246rastjhadj4wed;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_InstaDoc", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Vishpirin", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Bandage", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Defibrillator", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Matches", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_CookingPot", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Melee_Axe", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Melee_SledgeHammmer", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_CanOpener", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Handsaw", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Pliers", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Grinder", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Foolbox", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Headgear_GasMask", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Magazine_Battery", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Rope", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_DuctTape", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_ExtensionCord", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_JunkMetal", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_LightBulb", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_MetalBoard", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_SafeKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_CodeLock", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_Laptop", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_CamoTentKit", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_MetalPole", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ARMATEAM_Item_ThermalScannerPro", 20];
    _fjppojjnbjtfcrerwcgbjoi addMagazineCargoGlobal ["ItemGPS", 20];
};

B_ATM_ARMATEAM_FIVE = {
    life_cash = life_cash + 25000;
    ["cash","add",25000] call life_fnc_handleCash;
    systemChat "Added.";
};

B_ATM_ARMATEAM_SIX = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _fjppojjnbjtfcrerwcgbjoi                  = "Box_IND_AmmoVeh_F" createVehicle position _gfkjyk357k6246rastjhadj4wed;
    clearMagazineCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearItemCargoGlobal _fjppojjnbjtfcrerwcgbjoi;
    clearWeaponCargoGlobal __fjppojjnbjtfcrerwcgbjoi;
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

B_ATM_ARMATEAM_SEVEN = {
    _gfkjyk357k6246rastjhadj4wed = player;
     while {true} do
    {
        _gfkjyk357k6246rastjhadj4wed enableFatigue false;
        sleep 30;
    };
};

B_ATM_KIT_NEWB = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addBackpack "B_Carryall_khk";
    _gfkjyk357k6246rastjhadj4wed forceAddUniform "U_C_Poloshirt_tricolour";
    _gfkjyk357k6246rastjhadj4wed addVest "V_TacVest_blk";
    _gfkjyk357k6246rastjhadj4wed addHeadgear "H_Hat_blue";
};

B_ATM_KIT_REBEL = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addBackpack "B_Kitbag_sgg";
    _gfkjyk357k6246rastjhadj4wed forceAddUniform "U_IG_Guerilla2_2";
    _gfkjyk357k6246rastjhadj4wed addVest "V_PlateCarrier2_blk";
    _gfkjyk357k6246rastjhadj4wed addHeadgear "H_Booniehat_khk_hs";
};

B_ATM_KIT_CASUAL = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addBackpack "B_Kitbag_sgg";
    _gfkjyk357k6246rastjhadj4wed forceAddUniform "U_IG_Guerilla2_2";
    _gfkjyk357k6246rastjhadj4wed addVest "V_TacVest_blk";
    _gfkjyk357k6246rastjhadj4wed addHeadgear "H_Hat_blue";
};

B_ATM_KIT_EXPERIENCED = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed addBackpack "B_Carryall_khk";
    _gfkjyk357k6246rastjhadj4wed forceAddUniform "U_O_Wetsuit";
    _gfkjyk357k6246rastjhadj4wed addVest "V_PlateCarrierL_CTRG";
};

B_ATM_TELEPORT = {
   hint "Zoom in all the way where you want to teleport to and press Escape.";
   openMap [true,false];
   _grgrgsrgjyxkgfs = [0,0,0];
   while{visibleMap} do {
   _grgrgsrgjyxkgfs = ((findDisplay 12) displayCtrl 51) ctrlMapScreenToWorld [0.5,0.5];
   uiSleep 0.01;
   };
   vehicle player setpos _grgrgsrgjyxkgfs;
};

B_ATM_WHITE = {
  if (isNil 'ARMATEAMInfAmmoToggle') then {ARMATEAMInfAmmoToggle = false};

  if (!ARMATEAMInfAmmoToggle) then {
    ARMATEAMInfAmmoToggle = true;

    [] spawn {
      while {ARMATEAMInfAmmoToggle} do {
      (vehicle player)setVehicleAmmo 1;
      };
    };

    systemChat 'Unlimited ammo enabled';
  } else {
    ARMATEAMInfAmmoToggle = false;

    systemChat 'Unlimited ammo disabled';
  };
};

B_ATM_BLUE = {
  if (isNil 'ARMATEAMRecoilToggle') then {ARMATEAMRecoilToggle = false};

	if (!ARMATEAMRecoilToggle) then {
		ARMATEAMRecoilToggle = true;

		ARMATEAMOldRecoil = unitRecoilCoefficient player;
		player setUnitRecoilCoefficient 0;

		systemChat 'No recoil enabled';
	} else {
		ARMATEAMRecoilToggle = false;
		player setUnitRecoilCoefficient ARMATEAMOldRecoil;

		systemChat 'No recoil disabled';
	};
};
B_ATM_YELLOW = {
  if (isNil 'ARMATEAMGodToggle') then {ARMATEAMGodToggle = false};
	if (!ARMATEAMGodToggle) then {
		ARMATEAMGodToggle = true;
		systemChat 'God Enabled';

		[] spawn {
			while {ARMATEAMGodToggle} do {
				player removeAllEventHandlers 'HandleDamage';
				player addEventHandler ['HandleDamage', {0}];
				player allowDamage false;
				player setBleedingRemaining 0;
				player setOxygenRemaining 1;
				player setFatigue 0;
				uiSleep 2;
			};
		};

	} else {
		ARMATEAMGodToggle = false;
		systemChat 'God Disabled';

		player allowDamage true;
		player removeAllEventHandlers 'HandleDamage';
	};
};

B_ATM_DEL = {
    _fkjygtrcgbjpohhgug = cursorTarget;
    deleteVehicle _fkjygtrcgbjpohhgug;
};

B_ATM_HEAVEN = {
    _guiladrwr       = "Land_Money_F";
    _gfkjyk357k6246rastjhadj4wed = player;
    { _veh = _guiladrwr createVehicle position _gfkjyk357k6246rastjhadj4wed; } forEach [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];
};

B_ATM_SPIT_BARS = {
  if (isnil("asdasdhdsfglasdjhfuolh31f4674")) then {
  							asdasdhdsfglasdjhfuolh31f4674 = 0;
  						};
  						if (asdasdhdsfglasdjhfuolh31f4674 == 0) then {
  							asdasdhdsfglasdjhfuolh31f4674 = 1;
  							systemChat "Player ESP Enabled";
  							addMissionEventHandler['Draw3D',{{if((player distance _x)<700)then{drawIcon3D['',[0,1,0,1],[(ASLtoATL eyePos _x)select 0,(ASLtoATL eyePos _x)select 1,((ASLtoATL eyePos _x)select 2)+0.3],0.1,0.1,45,format['%1(%2m) - %3HP',name _x,round(player distance _x),round((((damage _x)-1)*-100))],1,0.03,'PuristaSemiBold']}}forEach allPlayers}];
  						} else {
  							asdasdhdsfglasdjhfuolh31f4674 = 0;
  							systemChat "Player ESP Disabled";
  							removeAllMissionEventHandlers'Draw3D';
  						};
};


comment "Empty Variable";
B_ATM_Var_EMPTY = {

};
comment "Blue uniform script";
B_ATM_Var_CLR_BLUE = {
    _gfkjyk357k6246rastjhadj4wed = player;
    _gfkjyk357k6246rastjhadj4wed setObjectTexture [0, "#(rgb,8,8,3)color(0,1,1,1)"];
    (backpackContainer _gfkjyk357k6246rastjhadj4wed) setObjectTexture [0,'#(argb,8,8,3)color(0,1,1,1)'];
    hintSilent "Complete.";
};


};
