A3_mode = player;
A3_mode addEventHandler ["AnimChanged", {
A3_modex = [] spawn {
disableSerialization;
waitUntil { !(isNull (findDisplay 12)) };
A3_mode = (findDisplay 12) ctrlCreate ["RscEdit", -99];
A3_mode ctrlSetText " ";
A3_mode ctrlSetFont "EtelkaMonospaceProBold";
A3_mode ctrlSetBackgroundColor [1,0.816,0,1];
A3_mode ctrlSetTooltip " ";
A3_mode ctrlSetPosition  [0.3125,-0.3,0.3375,0.08];
A3_mode ctrlCommit 0;
};
}];

_A3tet = player;
_A3tet addEventHandler ["AnimChanged", {
_A3tetn = [] spawn {
disableSerialization;
waitUntil { !(isNull (findDisplay 12)) };
_A3tet = (findDisplay 12) ctrlCreate ["RscButton",-98];
_A3tet ctrlSetText "Start Your Coding";
_A3tet ctrlSetFont "EtelkaMonospaceProBold";
_A3tet ctrlSetBackgroundColor [0,0,0,0];
_A3tet ctrlSetTooltip " ";
_A3tet ctrlSetPosition  [0.3125,-0.22,0.3375,0.08];
_A3tet ctrlCommit 0;
_A3tet buttonSetAction "
A3_kds = (ctrlText A3_mode);
[] spawn compile A3_kds;
";
};
}];
