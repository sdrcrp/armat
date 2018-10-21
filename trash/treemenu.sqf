license_civ_driver = true; 
license_civ_air = true; 
license_civ_gang = true; 
license_civ_boat = true; 
license_civ_dive = true; 
license_civ_gun = true; 
license_civ_rebel = true; 
treeSP = true; 
 
 
_killed = player addEventHandler ["respawn", {call mainActions;}]; 
 
meSP = { 
addMissionEventHandler ["Draw3D", { 
 scopeName "m8"; 
    { 
  if(!(treeSP)) then {breakTo "m8";}; 
                _dist = player distance _x; 
  
                    drawIcon3D ["", [0,1,0,1], [ 
                        visiblePosition _x select 0, 
                        visiblePosition _x select 1, 
                        (((_x modelToWorld ( 
                                _x selectionPosition "head" 
                                )) select 2) + 0.4) 
                        ], 0, 0, 0, (name _x) + ", " + str (((1-(getDammage _x))*100)-((1-(getDammage _x))*100 mod 1)) + "hp, " + str floor(_dist) + "m", 2, .03, "PuristaMedium"];                        
    } forEach allPlayers - [player]; 
}]; 
}; 
 
 
  
mainActions = { 
player addAction ["<t color='#58FA58'>Nitro</t>", {_vel = velocity vehicle player; 
    _dir = direction vehicle player; 
    _speed = 50; comment "Added Speed"; 
  
    vehicle player setVelocity [ 
        (_vel select 0) + (sin _dir * _speed), 
        (_vel select 1) + (cos _dir * _speed), 
        (_vel select 2) 
    ];}, true, 1.5, true, false, """", 'vehicle player != player' ]; 
  
  
  
player addAction["<t color=""#E31923"">" +"Heal", {player setDamage 0; vehicle player setDamage 0;},true,10,true,false]; 
  
player addAction ["Unrestrain", {player setVariable["restrained",FALSE,TRUE]; cursorTarget setVariable["restrained",FALSE,TRUE];}, true, 1.5, true, false, """", 'player getVariable["restrained",false] || cursorTarget getVariable["restrained",false]' ]; 
  
player addAction ["blink", {_pos  = screenToWorld [0.5,0.5]; if (!isnull cursortarget) then { _pos = getpos cursortarget}; player setPos _pos;}]; 
  
player addAction["Restrain",{cursorTarget setVariable["restrained",true,true]; [[cursorTarget], "life_fnc_restrain", cursorTarget, false] spawn life_fnc_MP;},null,-1,false,false,"",'(isPlayer cursorTarget) && (alive cursorTarget)&& !(cursorTarget getVariable ["restrained",false])']; 
  
player addAction ["<t color='#E31923'>kill</t>", {cursorTarget setDamage 1;}, true, 1.5, true, false, """", '(alive cursorTarget) && isPlayer cursorTarget' ]; 
  
player addAction["Send to Jail",{[[cursorTarget,player,false],"life_fnc_wantedBounty",false,false] spawn life_fnc_MP; [[cursorTarget,false],"life_fnc_jail",cursorTarget,false] spawn life_fnc_MP;},"",0,false,false,"",'!isNull cursorTarget && isPlayer cursorTarget && alive cursorTarget']; 
  
player addAction["Unlock Vehicle",{cursorTarget lock false;},null,-1,false,true,"",'!isNull cursorTarget && (locked cursorTarget != 0) && (cursorTarget isKindOf "Car" || cursorTarget isKindOf "Air" || cursorTarget isKindOf "Ship")']; 
 
player addAction ["<t color='#00FF00'>Toggle TreeSP</t>", {if(treeSP) then {treeSP = false;}else{treeSP = true;};}, true, 1, true, false]; 
 
player addAction["Troll Menu",{removeAllActions player; call trollActions;}]; 
 
}; 
    [] spawn { 
            life_carryWeight = 0; 
            sleep 5; 
        }; 
  
  dickNuke = { 
  private[_unit]; 
  _unit = param[0]; 
  _uniforms = ["U_B_Soldier_VR", "U_O_Soldier_VR", "U_I_Soldier_VR", "U_C_Soldier_VR"]; 
  _colors = ["Blue", "Red", "Green", "Purple"]; 
  _randomU = _uniforms select (floor(random 3)); 
  _randomC = _colors select (floor(random 3)); 
  _smokeShell = "SmokeShell" + _randomC; 
  _unit addHeadgear "H_PilotHelmetFighter_O"; 
  _unit forceAddUniform _randomU; 
  _smoke = _smokeShell createVehicle getPos _unit; 
  _smoke attachTo [_unit, [0, 0, 0], "head"]; 
  penis = "Bo_GBU12_LGB" createVehicle getPos _unit; 
  penis enableSimulation false;   
  penis attachTo [_unit, [0, 1, 0], "pelvis"]; 
 }; 
  
 paint = { 
  private [_unit]; 
  _unit = param[0]; 
  [_unit] spawn { 
  private[_unit]; 
  _unit = param[0]; 
  while {alive _unit} do  
  { 
    _color1 = random 1; 
    _color2 = random 1;   
    _color3 = random 1;   
    _string = format["#(argb,8,8,3)color(%1,%2,%3,1)", _color1,_color2,_color3];   
    vehicle _unit setObjectTextureGlobal[0,_string]; 
    vehicle _unit setObjectTextureGlobal[1,_string]; 
    vehicle _unit setObjectTextureGlobal[2,_string]; 
    sleep .5; 
   }; 
  }; 
 }; 
  
 nukeTown = { 
  private["_state"]; 
  _state = param[0]; 
   {  
    _x setDamage _state; 
   } forEach nearestObjects [player, ["house", "building"], 100]; 
 }; 
  
  
 trollActions = { 
  player addAction ["Dick Nuke(target)", {[cursorTarget] call dickNuke;},true, 1.5, true, false]; 
  player addAction ["Dick Nuke(self)", {[player] call dickNuke;}]; 
  player addAction ["paint self", {[player] call paint;}]; 
  player addAction ["paint target", {[cursorTarget] call paint;}]; 
  player addAction["False Fed",{[[[1,2],"STR_ISTR_Bolt_AlertFed",true,[]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;}]; 
  player addAction["Destroy Buildings",{[1] call nukeTown; _bState = 0;},true, 1.5, true, false]; 
  player addAction["Repair Buildings",{[0] call nukeTown; _bState = 1;},true, 1.5, true, false]; 
  player addAction["Close Troll Menu",{removeAllActions player; call mainActions;}]; 
 }; 
  
    call mainActions; 
 call meSP; 
  
 [parseText format [ "<t align='right' size='1'><t font='PuristaBold' size='1.5'>""%1""</t>  %2</t>", toUpper "ARMA.TEAM Private ScrollMenu", "Created and Edited by punish & sdr"], true, nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;