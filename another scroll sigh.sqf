player addaction  ["Deaths Dance Scroll Menu V1", {hint "DeathsDance Scroll Menu V1"}];
player addaction   ["Name ESP", {["Open",true ] spawn
{
_a = "addMission";
				_a = _a + "EventHandler [""Draw3D"",{";
				_a = _a + "
					_ordered = [];
					{
						if(player distance _x <= 1500) then {
							_ordered pushback [str(side _x),str(vehicle _x == _x),name _x,_x];
						};
					} forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
					_ordered sort true;
					";
				_a = _a + "
					{
						_side = _x select 0;
						_inVehicle = _x select 1;
						_name = _x select 2;
						_object = _x select 3;
						";
				_a = _a + "
						_pos = (_object modelToWorld ((_object selectionPosition ""neck"") vectorAdd [0,0,0.25]));
						";
				_a = _a + "
						_color = [1,0,1,1];
						if(side _object == blufor) then {
							_color = [0,0.7,1,1];
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

						_scale = (0.03 - (0.03 *((player distance _object)/2500)));
						if(_scale > 0) then {
							draw";
				_a = _a + "Icon3D ["""", _color, _pos, 0, 0, 0, _name + "" - "" + str(round(player distance _object)) + ""m"", 2, _scale, ""PuristaLight"",""center"",true];
						};
					} forEach _ordered;

				}];";

				_b = compile _a;
				_eh = call _b;
};;}];
player addaction ["BOX ESP", {addMissionEventHandler ["Draw3D",{

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
player addaction ["Head Dot", {     onEachFrame {
	{
	if ((alive _x) && (player distance _x > 0.3) && (player distance _x < 1800)) then {
	_pos1 = (_x modelToWorld ((_x selectionPosition "neck") vectorAdd [0,0,0.06]));
	drawIcon3D ["HeadDot.paa", [0,0.906,1,1],_pos1, 0.31,0.31, 1.15,"", 1, 0.022, "PuristaMedium"];
	};

	if ((cursorTarget isKindOf 'man') && (alive CursorTarget) &&  (player distance cursorTarget < 1800)) then {
	_pos2 = (CursorTarget modelToWorld ((CursorTarget selectionPosition "neck") vectorAdd [0,0,0.06]));
	drawIcon3D ["nokta.paa", [1,0,0.416,1],_pos2, 0.31,0.31, 1.15,"", 1, 0.022, "PuristaMedium"];
	};
	if ((CursorObject isKindOf 'man') && (alive CursorObject) &&  (player distance CursorObject < 1800)) then {
	_pos3 = (CursorObject modelToWorld ((CursorObject selectionPosition "neck") vectorAdd [0,0,0.06]));
	drawIcon3D ["nokta.paa", [1,0,0.416,1],_pos3, 0.31,0.31, 1.15,"", 1, 0.022, "PuristaMedium"];
	};
	}	forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
};;}];
player addaction ["Test Box ESP", {onEachFrame
{
	{
		_distance = round (_x distance player);
		if (_distance < 801 && _x != player) then
		{
			_color = [0,0,0,1];
			_side = side _x;
			switch (_side) do
			{
				case WEST: {_color = [0,0,1,1]};
				case EAST: {_color = [1,0,0,1]};
				case INDEPENDENT: {_color = [0,1,0,1]};
				case CIVILIAN: {_color = [0.4,0,1,1]};
			};
			_distance = round (_x distance player);
			_posID = _x modelToWorldVisual [0,0,0];
			_posBase = eyePos _x;
			_posTL1 = [(_posBase select 0) - 0.35, _posBase select 1, (_posBase select 2) - 4.9];
			_posBL1 = [(_posBase select 0) - 0.35, _posBase select 1, (_posBase select 2) - 6.5];
			_posTR1 = [(_posBase select 0) + 0.35, _posBase select 1, (_posBase select 2) - 4.9];
			_posBR1 = [(_posBase select 0) + 0.35, _posBase select 1, (_posBase select 2) - 6.5];
			_posTL2 = [_posBase select 0, (_posBase select 1) - 0.35, (_posBase select 2) - 4.9];
			_posBL2 = [_posBase select 0, (_posBase select 1) - 0.35, (_posBase select 2) - 6.5];
			_posTR2 = [_posBase select 0, (_posBase select 1) + 0.35, (_posBase select 2) - 4.9];
			_posBR2 = [_posBase select 0, (_posBase select 1) + 0.35, (_posBase select 2) - 6.5];

			if (_distance < 101) then
			{
				drawIcon3D ["", _color, _posID, 0, 00, 45, format ["%1: %2m", name _x, _distance], 0, 0.023];
			} else {drawIcon3D ["", _color, _posID, 0, 00, 45, format ["*%1m",_distance], 0, 0.023]};

			drawLine3D [_posTL1, _posTR1, _color];
			drawLine3D [_posTL1, _posBL1, _color];
			drawLine3D [_posTR1, _posBR1, _color];
			drawLine3D [_posBL1, _posBR1, _color];

			drawLine3D [_posTL2, _posTR2, _color];
			drawLine3D [_posTL2, _posBL2, _color];
			drawLine3D [_posTR2, _posBR2, _color];
			drawLine3D [_posBL2, _posBR2, _color];

		};
	} forEach allUnits;
};;}];
player addaction ["Map Marker", {mapOpen = false;

while {true} do
{
	if (visibleMap) then
	{
		_markers = [];
		{
			_data = [];
			_markName = name _x;
			_mrk = createMarkerLocal [_markName, position _x];
			_markName setMarkerColorLocal ([side _x, true] call BIS_fnc_sideColor);
			_markName setMarkerShapeLocal "ICON";
			_markName setMarkerTypeLocal "mil_dot";
			_markName setMarkerTextLocal name _x;
			_data pushBack _x;
			_data pushBack _markName;
			_markers pushBack _data;
		} forEach allUnits;

		while {mapOpen} do
		{
			if !(visibleMap) then{mapOpen = false;};

			{
				_marker = _x select 1; _unit = _x select 0;
				_marker setMarkerPosLocal position _unit;
				_marker setMarkerTextLocal name _x;
			} forEach _markers;
			sleep 0.01;
		};
	};
	sleep 0.1;
};;}];
player addaction ["Weapons", {disableSerialization;
while{true} do
{
	waitUntil{!isNull (findDisplay 602)};
	_rifles = [];
	selWeapon = "";

	_wepList = (findDisplay 602) ctrlCreate ["RscText", -1];
	_button = (findDisplay 602) ctrlCreate ["RscButton",-1];
	_listBox = (findDisplay 602) ctrlCreate ["RscListBox",1500];

	_w = (safeZoneW/6);
	_h = (safeZoneH/18);
	_x = 0.098 * safezoneW + safezoneX;
	_y1 = 0.3 * safezoneH + safezoneY;

	_wepList ctrlSetText "Weapon List";
	_button ctrlSetText "Get Weapon";
	_wepList ctrlSetPosition [_x,_y1+0.2,_w,_h];
	_listBox ctrlSetPosition [_x,_y1+0.3,_w,_h + 0.2];
	_button ctrlSetPosition [_x,_y1+0.1,_w,_h];
	_button ctrlSetBackgroundColor [0,0,0,0.7];
	_button ctrlSetTextColor [1,1,1,1];
	_button buttonSetAction "if (selWeapon isEqualTo '') then {
	hint 'No Weapon Selected';
	} else
	{
		hint format ['%1', selWeapon];
		[player, selWeapon, 3, 0] call BIS_fnc_addWeapon;
	}";

	_button ctrlCommit 0;
	_wepList ctrlCommit 0;
	_listBox ctrlCommit 0;

	_allRifle = "getText (_x >> 'baseWeapon') != 'hgun_PDW2000_F' && getText (_x >> 'cursor') isEqualTo 'arifle' && getNumber (_x >> 'scope') == 2" configClasses (configFile >> "cfgWeapons");

	{
		_weaponName = configName (_x);
		_wepClass = getText (configFile >> "cfgWeapons" >> _weaponName >> "baseWeapon");
		if (_wepClass != "") then
		{
			_rifles pushBackUnique _wepClass;
		};
	} forEach _allRifle;

	{
		_wepName = getText (configFile >> "cfgWeapons" >> _x >> "displayname");
		lbAdd [1500, _wepName];
		lbSetData [1500, _forEachIndex, _x];
	} forEach _rifles;

	while{!isNull (findDisplay 602)} do
	{
		_slot = lbCurSel 1500;
		selWeapon = lbData [1500, _slot];
		if(isNull (findDisplay 602)) exitWith {};
	};
};}];
player addaction ["No Recoil", {player setUnitRecoilCoefficient 0;}];
player addaction ["Unlimitied Ammo", { player addEventHandler ["Fired", { (_this select 0) setVehicleAmmo 1 }]; }];
player addaction ["Script Executor", {A3_mode = player;
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
_A3tet ctrlSetText "Execute";
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
}];;}];
player addaction ["Slient Aim", {waitUntil {!isNull player};
systemChat "Slient Aim ON";
player addEventHandler ["Fired", {
  {
      player reveal _x;
  } forEach allUnits;
  _target = cursorTarget;
  if (!isNull _target) then {
    if ((!isNull (vehicle _target))) then {
        _target = driver _target;
    };
    if ((alive _target) && (_target isKindOf "Man") && (group _target != group player)) then {
      _bullet = _this select 6;
      _head = _target modelToWorld (_target selectionPosition "neck");
      _bullet setPos _head;
    };
  };
}];
addMissionEventHandler ["Draw3D", {
  _target = cursorTarget;
  if (!isNull _target) then {
    if ((!isNull (vehicle _target))) then {
        _target = driver _target;
    };
    if ((alive _target) && (_target isKindOf "Man") && (group _target != group player)) then {
          drawIcon3D ["", [0,0.3,0.6,1], position cursorTarget, 0, 0, 0, "Locked", 1, 0.04, "PuristaMedium"];
    };
  };
}];;}];
player addaction ["Heal Self", {player setDamage 0;}];
player addaction  ["Speed Hack", {player setAnimSpeedCoef 20;}];
player addaction ["Executor", {wordAroundTheOfficeIs_YouveGotaPhatCock_GetTheSucc = {
    _display = {findDisplay 24};
    createDialog "RscDisplayChat";

    wordAroundTheOfficeIs_YouveGotaPhatCock = {
        _wordAroundTheOfficeIs_YouveGotaPhatC0ck_textField = "";
        _wordAroundTheOfficeIs_YouveGotaPhatC0ck_textField = ctrlText PrintyBoiSaysHelloToEveryoneAtInfiStar_TextBox;
        for "_i" from 1 to 1 do compile _wordAroundTheOfficeIs_YouveGotaPhatC0ck_textField;
    };
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_GuiBack = (call _display) ctrlCreate ["IGUIBack", 2200];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_GuiBack ctrlSetPosition [0.417492 * safezoneW + safezoneX,0.224899 * safezoneH + safezoneY,0.149531 * safezoneW,0.132 * safezoneH];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_GuiBack ctrlSetBackgroundColor [0.271,0.047,0.91,1];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_GuiBack ctrlCommit 0;

    _PrintyBoiSaysHelloToEveryoneAtInfiStar_Button  = (call _display) ctrlCreate ["RscButton", 1600];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_Button  ctrlSetText "убить себя";
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_Button  ctrlSetPosition [0.417492 * safezoneW + safezoneX, 0.224899 * safezoneH + safezoneY, 0.149546 * safezoneW, 0.0330121 * safezoneH];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_Button  ctrlSetTextColor [0.29,0.988,1,1];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_Button  ctrlCommit 0;

    PrintyBoiSaysHelloToEveryoneAtInfiStar_TextBox = (call _display) ctrlCreate ["RscEdit", 1400];
    PrintyBoiSaysHelloToEveryoneAtInfiStar_TextBox ctrlSetPosition [0.422648 * safezoneW + safezoneX, 0.279919 * safezoneH + safezoneY, 0.139233 * safezoneW, 0.0330121 * safezoneH];
    PrintyBoiSaysHelloToEveryoneAtInfiStar_TextBox ctrlSetText "hint ""Execute"";";
    PrintyBoiSaysHelloToEveryoneAtInfiStar_TextBox ctrlCommit 0;

    _PrintyBoiSaysHelloToEveryoneAtInfiStar_ButtonTwo = (call _display) ctrlCreate ["RscButton", 1601];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_ButtonTwo ctrlSetText "Execute Script";
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_ButtonTwo ctrlSetPosition [0.422648 * safezoneW + safezoneX, 0.312931 * safezoneH + safezoneY, 0.139233 * safezoneW, 0.0330121 * safezoneH];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_ButtonTwo ctrlSetTextColor [0.29,0.988,1,1];
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_ButtonTwo buttonSetAction "[]spawn wordAroundTheOfficeIs_YouveGotaPhatCock;";
    _PrintyBoiSaysHelloToEveryoneAtInfiStar_ButtonTwo ctrlCommit 0;
};
[] spawn {
    while {true} do {
    	if (inputAction "User5" > 0) then
    	{
       	 	waitUntil{inputAction "User5" > 0};
        	[] spawn wordAroundTheOfficeIs_YouveGotaPhatCock_GetTheSucc;
        	waitUntil{inputAction "User5" == 0};
    	};
    };
};}];
