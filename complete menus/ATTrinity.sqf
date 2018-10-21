[] spawn {
    hintSilent "Done";
    disableserialization;
    comment "***Created By 3D Printer***";
    hintSilent "Done.";
    _getVariable = _this select 0;
    15401 cutrsc ["rscDynamicText","plain"];
    _display                            = uinamespace getvariable "BIS_dynamicText";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = _display displayctrl 9999;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsetposition [-0.71,-0.44,safezonew,safezoneh/20];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsetbackgroundcolor [1,0,0,0];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsettextcolor [1,1,1,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetStructuredText parseText "<t size='0.5'> </t><br/><t size='0.5' align='left'>.</t>"; // shits broken af need to fix
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;



    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,-0.15,0.53,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "EtelkaMonospacePro";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText ": Arma.Team Trinity Menu :";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_CREDITS];
    };
    }];

    comment "Feature buttons 0.9";

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,-0.04,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Godmode";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_GOD]; // God Mode
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.05,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Heal Me";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_HEAL];  // full heal
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.14,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "ESP";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_SHOPS]; // Acctualy ESP
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.23,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "No Recoil";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_VEHICLE]; // no recoil
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.32,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Unlimited Ammo";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_Unlim_ammo]; // unlim ammo
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.41,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Kick All Admins";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_EMPTY];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.50,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Remove Actions";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_REMOVE];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.59,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Revive Me";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_ME];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.68,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Revive Target";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_OTHER];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.77,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Ticket Player";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_TICKET];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.86,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Spawn 50K";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_MONEY];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,0.95,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Destroy Target";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_EMPTY];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.16,1.04,0.23,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "Open ATM";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", {call life_fnc_atmMenu;}];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,-0.04,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Exec Clipboard";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_Clipboard];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.05,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: News Banner";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_News];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.14,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Fog 100%";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_Fog];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.23,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: All VR Entity";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_VR];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.32,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Rainbow Players";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_RNBW_PLYR];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.41,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Rainbow Vehicles";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_EMPTY];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.50,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Infistar Ban All";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_BAN];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.59,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Hint Hacked Server";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_HACKED];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.68,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Infect Scroll Menu";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_SCROLL];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.77,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Nuke All";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_NUKE];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.86,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Chat Spam";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_SPAM];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,0.95,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: Hint Memes";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_MEMES];
    };
    }];

    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo = player;
    _cghujkfosafhasifahdesrrctuynoiuasrdhoyuo addEventHandler ["InventoryOpened", {
    _dpoijuhgcaad = [] spawn {
    disableSerialization;
    waitUntil { !(isNull (findDisplay 602)) };
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = (findDisplay 602) ctrlCreate ["RscButton",1928];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetPosition  [1.42,1.04,0.27,0.08];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetFont "PuristaLight";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetBackgroundColor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetText "RE: End Mission";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlAddEventHandler ["ButtonClick", C_EX0_END];
    };
    }];

C_EX0_CREDITS = {
    systemChat "ya mum";
};

  C_EX0_Unlim_ammo = {
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

C_EX0_Clipboard = {
    [{
        _a = copyFromClipboard;
        _b = compile _a;
        hint ("Executed code:\n " + (_a select [0,count(_a) min 10]));
        call _b;
    }] spawn RE;
};

C_EX0_News = {
    [{
    NewsHeader = {
    disableserialization;
    _getVariable = _this select 0;
    15401 cutrsc ["rscDynamicText","plain"];
    _display                            = uinamespace getvariable "BIS_dynamicText";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = _display displayctrl 9999;
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsetposition [-0.71,-0.44,safezonew,4.2/20];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsetbackgroundcolor [1,1,1,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsettextcolor [1,0,0,1];
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetStructuredText parseText "<t size='1'> </t><br/><t size='1' align='left'>NEWS: THIS SERVER HAS BEEN HACKED</t>";
    _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
    sleep 5;
    [] spawn NewsHeaderTwo;
    NewsHeaderTwo = {
       _getVariable = _this select 0;
       15401 cutrsc ["rscDynamicText","plain"];
       _display                            = uinamespace getvariable "BIS_dynamicText";
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = _display displayctrl 9999;
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsetposition [-0.71,-0.44,safezonew,4.2/20];
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsetbackgroundcolor [1,1,1,1];
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsettextcolor [1,0,0,1];
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetStructuredText parseText "<t size='1'> </t><br/><t size='1' align='left'>NEWS: LEARN HOW TO CODE A GOOD ANTI-CHEAT</t>";
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
       sleep 5;
       [] spawn NewsHeaderThree;
    };
    NewsHeaderThree = {
       sleep 5;
       _getVariable = _this select 0;
       15401 cutrsc ["rscDynamicText","plain"];
       _display                            = uinamespace getvariable "BIS_dynamicText";
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx = _display displayctrl 9999;
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsetposition [-0.71,-0.44,safezonew,4.2/20];
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsetbackgroundcolor [1,1,1,1];
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlsettextcolor [1,0,0,1];
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlSetStructuredText parseText "<t size='1'> </t><br/><t size='1' align='left'>NEWS: INFISTAR.DE CAN'T STOP ME, GET AN UPGRADE!</t>";
       _xxpoaawpjhfutyftfglyhytgwdwdgghhvx ctrlCommit 0;
       sleep 5;
       [] spawn NewsHeader;
    };

    };
    [] spawn NewsHeader;
  }] spawn RE;
};

C_EX0_Fog = {
    [{
        1 setFog 100;
    }] spawn RE;
};

C_EX0_VR = {
    [{
        gggsdsdfsfasfasfasdasfdafafasfa = {
            xgsdfaasdadasda = 'O_Soldier_VR_F'createUnit[[0,0,0],(createGroup east),(_this select 0),0.5,"CORPORAL"];
        };
        _bhjhjgahdfkasdasdas = format ['_life_groupPlayer = group player;_life_selector = _life_groupPlayer createUnit ["O_Soldier_VR_F", getPos player, [], 0, "FORM"]; selectPlayer _life_selector;'];
        [_bhjhjgahdfkasdasdas] call gggsdsdfsfasfasfasdasfdafafasfa;
        call compile ('h'+'i'+'n'+'t'+' '+'"'+'Y'+'o'+'u'+"'"+'r'+'e'+' '+'n'+'o'+'w'+' '+'a'+' '+'r'+'e'+'d'+' '+'h'+'o'+'l'+'o'+'g'+'r'+'a'+'m'+'"'+';');
        [] spawn VxOS2FqiuBOg6td2ExhFqKxGNR1HGYWZNMNjnb2OJqaoJeTfHKolT1eXMDb8e6w5hZqJ;
        call compile ('s'+'y'+'s'+'t'+'e'+'m'+'C'+'h'+'a'+'t'+' '+'"'+'M'+'o'+'d'+'e'+'l'+' '+'c'+'h'+'a'+'n'+'g'+'e'+'d'+','+' '+'G'+'U'+'I'+' '+'r'+'e'+'-'+'c'+'o'+'m'+'p'+'i'+'l'+'e'+'d'+'.'+'"'+';');
        call compile ('s'+'y'+'s'+'t'+'e'+'m'+'C'+'h'+'a'+'t'+' '+'"'+'T'+'h'+'i'+'s'+' '+'m'+'a'+'y'+' '+'c'+'a'+'u'+'s'+'e'+' '+'p'+'r'+'o'+'b'+'l'+'e'+'m'+'s'+' '+'w'+'i'+'t'+'h'+' '+'g'+'e'+'t'+'t'+'i'+'n'+'g'+' '+'i'+'n'+'t'+'o'+' '+'v'+'e'+'h'+'i'+'c'+'l'+'e'+'s'+','+' '+'y'+'o'+'u'+' '+'m'+'u'+'s'+'t'+' '+'k'+'i'+'l'+'l'+' '+'y'+'o'+'u'+'r'+' '+'p'+'l'+'a'+'y'+'e'+'r'+' '+'t'+'o'+' '+'c'+'o'+'n'+'t'+'i'+'n'+'u'+'e'+' '+'a'+'s'+' '+'n'+'o'+'r'+'m'+'a'+'l'+'.'+'"'+';');
    }] spawn RE;
};

C_EX0_RNBW_PLYR = {
    [{
        [] spawn {
        _aaaa = {
        player setObjectTexture [0, "#(rgb,8,8,3)color(0,1,0,1)"];
        sleep 0.2;
        player setObjectTexture [0, "#(rgb,8,8,3)color(0,1,1,1)"];
        sleep 0.2;
        player setObjectTexture [0, "#(rgb,8,8,3)color(1,1,1,1)"];
        sleep 0.2;
        player setObjectTexture [0, "#(rgb,8,8,3)color(1,1,0,1)"];
        sleep 0.2;
        player setObjectTexture [0, "#(rgb,8,8,3)color(1,1,1,1)"];
        sleep 0.2;
        player setObjectTexture [0, "#(rgb,8,8,3)color(0,0,1,1)"];
        sleep 0.2;
        call _aaaa;
    };
    call _aaaa;
};
    }] spawn RE;
};

C_EX0_RNBW_VEHI = {

};

C_EX0_BAN = {
    [{
if (isnil("aim")) then {
        aim = 0;
    };
    if (aim == 0) then {
        aim = 1;
        hint "InfiSTAR.de ban on";
    } else {
        aim = 0;
        hint "InfiSTAR.de ban off";
    };

    if (aim == 1) then {
        onEachFrame {
            _B0BSuck = nearestobjects[player, ["CAManBase"], 1400]; {
                if ((side _x != side player) && (getPlayerUID _x != "") && ((player distance _x) < 1400)) then {
                    drawIcon3D["", [0,0,0,1], [visiblePosition _x select 0, visiblePosition _x select 1, 2], 0, 0, 45, (format["%2 : %1m", round(player distance _x), name _x]), 1, 0.025, "PuristaMedium"]
                } else {
                    if ((getPlayerUID _x != "") && ((player distance _x) < 1000)) then {
                        drawIcon3D["", [0,0,0,1], [visiblePosition _x select 0, visiblePosition _x select 1, 2], 0, 0, 45, (format["%2 : %1m", round(player distance _x), name _x]), 1, 0.025, "PuristaMedium"]
                    };
                };
            } foreach AllUnits;


            _color = [0.035,1,0,1];
            _color6 = [1,0,0,1];

            _x1 = -0.5;
            _y1 = -0.5;
            _z1 = 0;

            _x2 = 0.5;
            _y2 = 0.5;
            _z2 = 1.8;

            _noobs = nearestobjects [player,["CAManBase"],1000];
    {
        if(((alive _x)) && ((player distance _x) < 1000)) then
        {
            if((side _x != side player) && ((player distance _x) < 1000)) then
            {
                if(player distance _x < 1000 && _x iskindof "CAManBase") then
                {


                    drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [0,0,_z2], _color6];
                    drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [0,0,_z2], _color6];
                    drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [0,0,_z2], _color6];
                    drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [0,0,_z2], _color6];

                    drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [0, 0, _z1], _color6];
                    drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [0, 0, _z1], _color6];
                    drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [0, 0, _z1], _color6];
                    drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [0, 0, _z1], _color6];

                    drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [_x2, _y1, 1], _color6];
                    drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [_x2, _y2, 1], _color6];
                    drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [_x1, _y2, 1], _color6];
                    drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [_x1, _y1, 1], _color6];

                    drawLine3d [[getposatl player select 0, getposatl player select 1, getposatl player select 2],ASLToATL eyePos _x,_color6];
                };
            }
            else
            {
                if(player distance _x < 1000 && _x iskindof "CAManBase" && side _x != civilian) then
                {
                    drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [0,0,_z2], _color];
                    drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [0,0,_z2], _color];
                    drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [0,0,_z2], _color];
                    drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [0,0,_z2], _color];

                    drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [0, 0, _z1], _color];
                    drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [0, 0, _z1], _color];
                    drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [0, 0, _z1], _color];
                    drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [0, 0, _z1], _color];

                    drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [_x2, _y1, 1], _color];
                    drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [_x2, _y2, 1], _color];
                    drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [_x1, _y2, 1], _color];
                    drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [_x1, _y1, 1], _color];

                    drawLine3d [[getposatl player select 0, getposatl player select 1, getposatl player select 2],ASLToATL eyePos _x,_color];
                    drawIcon3D["", [1,0,0,0.251], [visiblePosition _x select 0, visiblePosition _x select 1, 2], 0.25, 0.25, 45,"", 1, 0.025, ""]
                };
            };
        };
    } foreach AllUnits;
    };
    } else {
        onEachFrame {
            nil
        };
    };
}] spawn RE;
};

C_EX0_HACKED = {
    [{
        hint "this server is hacked!!!";
        playSound "Worship";
    }] spawn RE;
};

C_EX0_SCROLL = {
    [{
        removeallactions player;
        player addAction ["<t color=""#ffff99"">SCROLL MENU INFECTION</t>", unrealvar];
        player addAction ["<t color=""#ff0000"">WORK IN PROGRESS</t>", unrealvar];
        player addAction ["<t color=""#ffff99"">NO HACK FOR YOU, BITCH</t>", unrealvar];

        unrealvar = {

        };
    }] spawn RE;
};

C_EX0_NUKE = {
    [{
        player setDamage 1;
    }] spawn RE;
};

C_EX0_SPAM = {
    [{
    [] spawn {
    _aaaa = {
        systemChat "This server is fucking shit";
        sleep 0.2;
        systemChat "Git gud";
        sleep 0.2;
        systemChat "InfiSTAR.de is fucking terrible";
        sleep 0.2;
        systemChat "Get a better anti-cheat";
        sleep 0.2;
        systemChat "I will roast you";
        sleep 0.2;
        systemChat "Succ";
        sleep 0.2;
        call _aaaa;
    };
    call _aaaa;
    };
    }] spawn RE;
};

C_EX0_MEMES = {
    [{
    [] spawn {
        _bbbb = {
        hint "Harambe";
        sleep 0.4;
        hint "Died";
        sleep 0.4;
        hint "For";
        sleep 0.4;
        hint "Our";
        sleep 0.4;
        hint "Sins";
        sleep 0.4;
        hint ".....";
        sleep 0.4;
        call _bbbb;
    };
    call _bbbb;
    };
    }] spawn RE;
};

C_EX0_END = {
    [{
        call BIS_fnc_endMission;
    }] spawn RE;
};

comment "left side";

C_EX0_GOD = {
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

C_EX0_HEAL = {
    player setDamage 0;
};

C_EX0_SHOPS = {
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

C_EX0_VEHICLE = {
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

C_EX0_COPS = {

};

C_EX0_ADMINS = {

};

C_EX0_REMOVE = {
    removeAllActions player;
};

C_EX0_ME = {
    [["Error: No Unit"],"life_fnc_revived",player,FALSE] spawn life_fnc_MP;
    cutText["Dont die next time", "PLAIN", 1];
};

C_EX0_OTHER = {
    [["Error: No Unit"],"life_fnc_revived",cursorTarget,FALSE] spawn life_fnc_MP;
    cutText["Dont die next time", "PLAIN", 1];
};

C_EX0_TICKET = {
    removeAllActions player;
    player addAction ["<t color=""#ffff99"">Ticket Cursor</t>", {[cursorTarget] call life_fnc_ticketAction; }];
};

C_EX0_MONEY = {
    life_atm     = life_atm + 50000;
    money        = money + 50000;
    life_cash    = life_cash + 50000;
    life_atmcash = life_atmcash + 50000;
    hint "Added, not for all servers";
};
};
