addMissionEventHandler ["Draw3D",{

{
	if ((player distance _x > 0.3) && (player distance _x < 1900) && (getplayeruid _x != "")) then {
_pos = getposatl _x;
_eyepos = ASLtoATL eyepos _x;
if((getTerrainHeightASL [_pos select 0,_pos select 1]) < 0) then {
_eyepos = eyepos _x;
_pos = getposasl _x;
} forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
_1 = _x modelToWorld [-0.33,0,1];
_2 = _x modelToWorld [0.44,0,1];
_3 = _x modelToWorld [-0.33,0,1];
_4 = _x modelToWorld [0.44,0,1];
_11 = _x modelToWorld [-0.333,0.003,1.003];
_22 = _x modelToWorld [0.443,0.003,1.003];
_33 = _x modelToWorld [-0.333,0.003,1.003];
_44 = _x modelToWorld [0.443,0.003,1.003];
_11 set [2,_pos select 2];
_22 set [2,_pos select 2];
_33 set [2,(_eyepos select 2)+0.25];
_44 set [2,(_eyepos select 2)+0.25];
_111 = _x modelToWorld [-0.332,0.002,1.002];
_222 = _x modelToWorld [0.442,0.002,1.002];
_333 = _x modelToWorld [-0.332,0.002,1.002];
_444 = _x modelToWorld [0.442,0.002,1.002];
_111 set [2,_pos select 2];
_222 set [2,_pos select 2];
_333 set [2,(_eyepos select 2)+0.25];
_444 set [2,(_eyepos select 2)+0.25];
_1111 = _x modelToWorld [-0.331,0.001,1.001];
_2222 = _x modelToWorld [0.441,0.001,1.001];
_3333 = _x modelToWorld [-0.331,0.001,1.001];
_4444 = _x modelToWorld [0.441,0.001,1.001];
_1111 set [2,_pos select 2];
_2222 set [2,_pos select 2];
_3333 set [2,(_eyepos select 2)+0.25];
_4444 set [2,(_eyepos select 2)+0.25];
_11111 = _x modelToWorld [-0.334,0.004,1.004];
_22222 = _x modelToWorld [0.444,0.004,1.004];
_33333 = _x modelToWorld [-0.334,0.004,1.004];
_44444 = _x modelToWorld [0.444,0.004,1.004];
_11111 set [2,_pos select 2];
_22222 set [2,_pos select 2];
_33333 set [2,(_eyepos select 2)+0.25];
_44444 set [2,(_eyepos select 2)+0.25];
_111111 = _x modelToWorld [-0.329,0.005,1.005];
_222222 = _x modelToWorld [0.439,0.005,1.005];
_333333 = _x modelToWorld [-0.329,0.005,1.005];
_444444 = _x modelToWorld [0.439,0.005,1.005];
_111111 set [2,_pos select 2];
_222222 set [2,_pos select 2];
_333333 set [2,(_eyepos select 2)+0.25];
_444444 set [2,(_eyepos select 2)+0.25];
_1111111 = _x modelToWorld [-0.328,-0.001,0.999];
_2222222 = _x modelToWorld [0.438,-0.001,0.999];
_3333333 = _x modelToWorld [-0.328,-0.001,0.999];
_4444444 = _x modelToWorld [0.438,-0.001,0.999];
_1111111 set [2,_pos select 2];
_2222222 set [2,_pos select 2];
_3333333 set [2,(_eyepos select 2)+0.25];
_4444444 set [2,(_eyepos select 2)+0.25];
_11111111 = _x modelToWorld [-0.327,-0.002,0.998];
_22222222 = _x modelToWorld [0.437,-0.002,0.998];
_33333333 = _x modelToWorld [-0.327,-0.002,0.998];
_44444444 = _x modelToWorld [0.437,-0.002,0.998];
_11111111 set [2,_pos select 2];
_22222222 set [2,_pos select 2];
_33333333 set [2,(_eyepos select 2)+0.25];
_44444444 set [2,(_eyepos select 2)+0.25];
_111111111 = _x modelToWorld [-0.326,-0.003,0.997];
_222222222 = _x modelToWorld [0.436,-0.003,0.997];
_333333333 = _x modelToWorld [-0.326,-0.003,0.997];
_444444444 = _x modelToWorld [0.436,-0.003,0.997];
_111111111 set [2,_pos select 2];
_222222222 set [2,_pos select 2];
_333333333 set [2,(_eyepos select 2)+0.25];
_444444444 set [2,(_eyepos select 2)+0.25];
_1 set [2,_pos select 2];
_2 set [2,_pos select 2];
_3 set [2,(_eyepos select 2)+0.25];
_4 set [2,(_eyepos select 2)+0.25];
_3 set [2,(_noktakafa select 2)+0.25];
_4 set [2,(_noktakafa select 2)+0.25];
_3 set [2,(_eyepos2 select 2)+0.25];
_4 set [2,(_eyepos2 select 2)+0.25];
_eyepos set [2,(_3 select 2) - 1.7];
_color = [0,0.906,1,1];
if ((alive _x) && (_x isKindOf 'man')) then {
drawLine3D[_1,_2,_color];
drawLine3D[_2,_4,_color];
drawLine3D[_4,_3,_color];
drawLine3D[_3,_1,_color];
drawLine3D[_11,_22,_color];
drawLine3D[_22,_44,_color];
drawLine3D[_44,_33,_color];
drawLine3D[_33,_11,_color];
drawLine3D[_111,_222,_color];
drawLine3D[_222,_444,_color];
drawLine3D[_444,_333,_color];
drawLine3D[_333,_111,_color];
drawLine3D[_1111,_2222,_color];
drawLine3D[_2222,_4444,_color];
drawLine3D[_4444,_3333,_color];
drawLine3D[_3333,_1111,_color];
drawLine3D[_11111,_22222,_color];
drawLine3D[_22222,_44444,_color];
drawLine3D[_44444,_33333,_color];
drawLine3D[_33333,_11111,_color];
drawLine3D[_111111,_222222,_color];
drawLine3D[_222222,_444444,_color];
drawLine3D[_444444,_333333,_color];
drawLine3D[_333333,_111111,_color];
drawLine3D[_1111111,_2222222,_color];
drawLine3D[_2222222,_4444444,_color];
drawLine3D[_4444444,_3333333,_color];
drawLine3D[_3333333,_1111111,_color];
drawLine3D[_11111111,_22222222,_color];
drawLine3D[_22222222,_44444444,_color];
drawLine3D[_44444444,_33333333,_color];
drawLine3D[_33333333,_11111111,_color];
drawLine3D[_111111111,_222222222,_color];
drawLine3D[_222222222,_444444444,_color];
drawLine3D[_444444444,_333333333,_color];
drawLine3D[_333333333,_111111111,_color];
};
};
} 	forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
}];
	addMissionEventHandler ["Draw3D",{
{
	if ((player distance CursorTarget > 0.3) && (player distance CursorTarget < 1900) && (getplayeruid CursorTarget != "")) then {
_pos = getposatl CursorTarget;
_eyepos = ASLtoATL eyepos CursorTarget;
if((getTerrainHeightASL [_pos select 0,_pos select 1]) < 0) then {
_eyepos = eyepos CursorTarget;
_pos = getposasl CursorTarget;
} forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
_1 = CursorTarget modelToWorld [-0.33,0,1];
_2 = CursorTarget modelToWorld [0.44,0,1];
_3 = CursorTarget modelToWorld [-0.33,0,1];
_4 = CursorTarget modelToWorld [0.44,0,1];
_11 = CursorTarget modelToWorld [-0.333,0.003,1.003];
_22 = CursorTarget modelToWorld [0.443,0.003,1.003];
_33 = CursorTarget modelToWorld [-0.333,0.003,1.003];
_44 = CursorTarget modelToWorld [0.443,0.003,1.003];
_11 set [2,_pos select 2];
_22 set [2,_pos select 2];
_33 set [2,(_eyepos select 2)+0.25];
_44 set [2,(_eyepos select 2)+0.25];
_111 = CursorTarget modelToWorld [-0.332,0.002,1.002];
_222 = CursorTarget modelToWorld [0.442,0.002,1.002];
_333 = CursorTarget modelToWorld [-0.332,0.002,1.002];
_444 = CursorTarget modelToWorld [0.442,0.002,1.002];
_111 set [2,_pos select 2];
_222 set [2,_pos select 2];
_333 set [2,(_eyepos select 2)+0.25];
_444 set [2,(_eyepos select 2)+0.25];
_1111 = CursorTarget modelToWorld [-0.331,0.001,1.001];
_2222 = CursorTarget modelToWorld [0.441,0.001,1.001];
_3333 = CursorTarget modelToWorld [-0.331,0.001,1.001];
_4444 = CursorTarget modelToWorld [0.441,0.001,1.001];
_1111 set [2,_pos select 2];
_2222 set [2,_pos select 2];
_3333 set [2,(_eyepos select 2)+0.25];
_4444 set [2,(_eyepos select 2)+0.25];
_11111 = CursorTarget modelToWorld [-0.334,0.004,1.004];
_22222 = CursorTarget modelToWorld [0.444,0.004,1.004];
_33333 = CursorTarget modelToWorld [-0.334,0.004,1.004];
_44444 = CursorTarget modelToWorld [0.444,0.004,1.004];
_11111 set [2,_pos select 2];
_22222 set [2,_pos select 2];
_33333 set [2,(_eyepos select 2)+0.25];
_44444 set [2,(_eyepos select 2)+0.25];
_111111 = CursorTarget modelToWorld [-0.329,0.005,1.005];
_222222 = CursorTarget modelToWorld [0.439,0.005,1.005];
_333333 = CursorTarget modelToWorld [-0.329,0.005,1.005];
_444444 = CursorTarget modelToWorld [0.439,0.005,1.005];
_111111 set [2,_pos select 2];
_222222 set [2,_pos select 2];
_333333 set [2,(_eyepos select 2)+0.25];
_444444 set [2,(_eyepos select 2)+0.25];
_1111111 = CursorTarget modelToWorld [-0.328,-0.001,0.999];
_2222222 = CursorTarget modelToWorld [0.438,-0.001,0.999];
_3333333 = CursorTarget modelToWorld [-0.328,-0.001,0.999];
_4444444 = CursorTarget modelToWorld [0.438,-0.001,0.999];
_1111111 set [2,_pos select 2];
_2222222 set [2,_pos select 2];
_3333333 set [2,(_eyepos select 2)+0.25];
_4444444 set [2,(_eyepos select 2)+0.25];
_11111111 = CursorTarget modelToWorld [-0.327,-0.002,0.998];
_22222222 = CursorTarget modelToWorld [0.437,-0.002,0.998];
_33333333 = CursorTarget modelToWorld [-0.327,-0.002,0.998];
_44444444 = CursorTarget modelToWorld [0.437,-0.002,0.998];
_11111111 set [2,_pos select 2];
_22222222 set [2,_pos select 2];
_33333333 set [2,(_eyepos select 2)+0.25];
_44444444 set [2,(_eyepos select 2)+0.25];
_111111111 = CursorTarget modelToWorld [-0.326,-0.003,0.997];
_222222222 = CursorTarget modelToWorld [0.436,-0.003,0.997];
_333333333 = CursorTarget modelToWorld [-0.326,-0.003,0.997];
_444444444 = CursorTarget modelToWorld [0.436,-0.003,0.997];
_111111111 set [2,_pos select 2];
_222222222 set [2,_pos select 2];
_333333333 set [2,(_eyepos select 2)+0.25];
_444444444 set [2,(_eyepos select 2)+0.25];
_1 set [2,_pos select 2];
_2 set [2,_pos select 2];
_3 set [2,(_eyepos select 2)+0.25];
_4 set [2,(_eyepos select 2)+0.25];
_3 set [2,(_noktakafa select 2)+0.25];
_4 set [2,(_noktakafa select 2)+0.25];
_3 set [2,(_eyepos2 select 2)+0.25];
_4 set [2,(_eyepos2 select 2)+0.25];
_eyepos set [2,(_3 select 2) - 1.7];
_color = [1,0,0.416,1];
if ((alive CursorTarget) && (CursorTarget isKindOf 'man')) then {
drawLine3D[_1,_2,_color];
drawLine3D[_2,_4,_color];
drawLine3D[_4,_3,_color];
drawLine3D[_3,_1,_color];
drawLine3D[_11,_22,_color];
drawLine3D[_22,_44,_color];
drawLine3D[_44,_33,_color];
drawLine3D[_33,_11,_color];
drawLine3D[_111,_222,_color];
drawLine3D[_222,_444,_color];
drawLine3D[_444,_333,_color];
drawLine3D[_333,_111,_color];
drawLine3D[_1111,_2222,_color];
drawLine3D[_2222,_4444,_color];
drawLine3D[_4444,_3333,_color];
drawLine3D[_3333,_1111,_color];
drawLine3D[_11111,_22222,_color];
drawLine3D[_22222,_44444,_color];
drawLine3D[_44444,_33333,_color];
drawLine3D[_33333,_11111,_color];
drawLine3D[_111111,_222222,_color];
drawLine3D[_222222,_444444,_color];
drawLine3D[_444444,_333333,_color];
drawLine3D[_333333,_111111,_color];
drawLine3D[_1111111,_2222222,_color];
drawLine3D[_2222222,_4444444,_color];
drawLine3D[_4444444,_3333333,_color];
drawLine3D[_3333333,_1111111,_color];
drawLine3D[_11111111,_22222222,_color];
drawLine3D[_22222222,_44444444,_color];
drawLine3D[_44444444,_33333333,_color];
drawLine3D[_33333333,_11111111,_color];
drawLine3D[_111111111,_222222222,_color];
drawLine3D[_222222222,_444444444,_color];
drawLine3D[_444444444,_333333333,_color];
drawLine3D[_333333333,_111111111,_color];
};
};
} 	forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
}];
	addMissionEventHandler ["Draw3D",{
{
	if ((player distance CursorObject > 0.3) && (player distance CursorObject < 1900) && (getplayeruid CursorObject != "")) then {
_pos = getposatl CursorObject;
_eyepos = ASLtoATL eyepos CursorObject;
if((getTerrainHeightASL [_pos select 0,_pos select 1]) < 0) then {
_eyepos = eyepos CursorObject;
_pos = getposasl CursorObject;
} forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
_1 = CursorObject modelToWorld [-0.33,0,1];
_2 = CursorObject modelToWorld [0.44,0,1];
_3 = CursorObject modelToWorld [-0.33,0,1];
_4 = CursorObject modelToWorld [0.44,0,1];
_11 = CursorObject modelToWorld [-0.333,0.003,1.003];
_22 = CursorObject modelToWorld [0.443,0.003,1.003];
_33 = CursorObject modelToWorld [-0.333,0.003,1.003];
_44 = CursorObject modelToWorld [0.443,0.003,1.003];
_11 set [2,_pos select 2];
_22 set [2,_pos select 2];
_33 set [2,(_eyepos select 2)+0.25];
_44 set [2,(_eyepos select 2)+0.25];
_111 = CursorObject modelToWorld [-0.332,0.002,1.002];
_222 = CursorObject modelToWorld [0.442,0.002,1.002];
_333 = CursorObject modelToWorld [-0.332,0.002,1.002];
_444 = CursorObject modelToWorld [0.442,0.002,1.002];
_111 set [2,_pos select 2];
_222 set [2,_pos select 2];
_333 set [2,(_eyepos select 2)+0.25];
_444 set [2,(_eyepos select 2)+0.25];
_1111 = CursorObject modelToWorld [-0.331,0.001,1.001];
_2222 = CursorObject modelToWorld [0.441,0.001,1.001];
_3333 = CursorObject modelToWorld [-0.331,0.001,1.001];
_4444 = CursorObject modelToWorld [0.441,0.001,1.001];
_1111 set [2,_pos select 2];
_2222 set [2,_pos select 2];
_3333 set [2,(_eyepos select 2)+0.25];
_4444 set [2,(_eyepos select 2)+0.25];
_11111 = CursorObject modelToWorld [-0.334,0.004,1.004];
_22222 = CursorObject modelToWorld [0.444,0.004,1.004];
_33333 = CursorObject modelToWorld [-0.334,0.004,1.004];
_44444 = CursorObject modelToWorld [0.444,0.004,1.004];
_11111 set [2,_pos select 2];
_22222 set [2,_pos select 2];
_33333 set [2,(_eyepos select 2)+0.25];
_44444 set [2,(_eyepos select 2)+0.25];
_111111 = CursorObject modelToWorld [-0.329,0.005,1.005];
_222222 = CursorObject modelToWorld [0.439,0.005,1.005];
_333333 = CursorObject modelToWorld [-0.329,0.005,1.005];
_444444 = CursorObject modelToWorld [0.439,0.005,1.005];
_111111 set [2,_pos select 2];
_222222 set [2,_pos select 2];
_333333 set [2,(_eyepos select 2)+0.25];
_444444 set [2,(_eyepos select 2)+0.25];
_1111111 = CursorObject modelToWorld [-0.328,-0.001,0.999];
_2222222 = CursorObject modelToWorld [0.438,-0.001,0.999];
_3333333 = CursorObject modelToWorld [-0.328,-0.001,0.999];
_4444444 = CursorObject modelToWorld [0.438,-0.001,0.999];
_1111111 set [2,_pos select 2];
_2222222 set [2,_pos select 2];
_3333333 set [2,(_eyepos select 2)+0.25];
_4444444 set [2,(_eyepos select 2)+0.25];
_11111111 = CursorObject modelToWorld [-0.327,-0.002,0.998];
_22222222 = CursorObject modelToWorld [0.437,-0.002,0.998];
_33333333 = CursorObject modelToWorld [-0.327,-0.002,0.998];
_44444444 = CursorObject modelToWorld [0.437,-0.002,0.998];
_11111111 set [2,_pos select 2];
_22222222 set [2,_pos select 2];
_33333333 set [2,(_eyepos select 2)+0.25];
_44444444 set [2,(_eyepos select 2)+0.25];
_111111111 = CursorObject modelToWorld [-0.326,-0.003,0.997];
_222222222 = CursorObject modelToWorld [0.436,-0.003,0.997];
_333333333 = CursorObject modelToWorld [-0.326,-0.003,0.997];
_444444444 = CursorObject modelToWorld [0.436,-0.003,0.997];
_111111111 set [2,_pos select 2];
_222222222 set [2,_pos select 2];
_333333333 set [2,(_eyepos select 2)+0.25];
_444444444 set [2,(_eyepos select 2)+0.25];
_1 set [2,_pos select 2];
_2 set [2,_pos select 2];
_3 set [2,(_eyepos select 2)+0.25];
_4 set [2,(_eyepos select 2)+0.25];
_3 set [2,(_noktakafa select 2)+0.25];
_4 set [2,(_noktakafa select 2)+0.25];
_3 set [2,(_eyepos2 select 2)+0.25];
_4 set [2,(_eyepos2 select 2)+0.25];
_eyepos set [2,(_3 select 2) - 1.7];
_color = [1,0,0.416,1];
if ((alive CursorObject) && (CursorObject isKindOf 'man')) then {
drawLine3D[_1,_2,_color];
drawLine3D[_2,_4,_color];
drawLine3D[_4,_3,_color];
drawLine3D[_3,_1,_color];
drawLine3D[_11,_22,_color];
drawLine3D[_22,_44,_color];
drawLine3D[_44,_33,_color];
drawLine3D[_33,_11,_color];
drawLine3D[_111,_222,_color];
drawLine3D[_222,_444,_color];
drawLine3D[_444,_333,_color];
drawLine3D[_333,_111,_color];
drawLine3D[_1111,_2222,_color];
drawLine3D[_2222,_4444,_color];
drawLine3D[_4444,_3333,_color];
drawLine3D[_3333,_1111,_color];
drawLine3D[_11111,_22222,_color];
drawLine3D[_22222,_44444,_color];
drawLine3D[_44444,_33333,_color];
drawLine3D[_33333,_11111,_color];
drawLine3D[_111111,_222222,_color];
drawLine3D[_222222,_444444,_color];
drawLine3D[_444444,_333333,_color];
drawLine3D[_333333,_111111,_color];
drawLine3D[_1111111,_2222222,_color];
drawLine3D[_2222222,_4444444,_color];
drawLine3D[_4444444,_3333333,_color];
drawLine3D[_3333333,_1111111,_color];
drawLine3D[_11111111,_22222222,_color];
drawLine3D[_22222222,_44444444,_color];
drawLine3D[_44444444,_33333333,_color];
drawLine3D[_33333333,_11111111,_color];
drawLine3D[_111111111,_222222222,_color];
drawLine3D[_222222222,_444444444,_color];
drawLine3D[_444444444,_333333333,_color];
drawLine3D[_333333333,_111111111,_color];
};
};
} 	forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
}];;}];