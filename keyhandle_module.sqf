hitlerdidnothingwrong = {
  hint "NAZI POWER";
	(finddisplay 46)displayAddEventHandler['KeyDown',{
		switch(_this select 1)do{
			case 0xCF:{
				hint parseText "<t color=""#3CA6A6"" size=""1"">END  = Show Hotkeys</t><br/> <t color=""#3CA6A6"" size=""1"">Num0  = Revive Self</t><br/> <t color=""#3CA6A6"" size=""1"">Num1  = Delete CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num2  = Heal CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num3  = Kill CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num4  = Revive CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num5  = Restraine CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num6  = Explode CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num7  = Strip Down CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num8  = Speedhack ON/OFF</t><br/> <t color=""#3CA6A6"" size=""1"">Num9  = Get keys</t><br/>H = Open ATM";
			};
			case 0x4F:{
        if(isNull cursorTarget)exitWith{hint'No target found!'};
        hint('Target deleted: '+getText(configFile>>'CfgVehicles'>>typeOf cursorTarget>>'displayName'));
        deleteVehicle cursorTarget;
			};
			case 0x50:{
				if(isNull cursorTarget)exitWith{hint'No target found!'};
				hint('Target healed: '+getText(configFile>>'CfgVehicles'>>typeOf cursorTarget>>'displayName'));
				cursorTarget setDamage 0;
			};
			case 0x51:{
			    if(isNull cursorTarget)exitWith{hint'No target found!'};
				hint('Target destroyed: '+getText(configFile>>'CfgVehicles'>>typeOf cursorTarget>>'displayName'));
				cursorTarget setDamage 1;
			};
			case 0x4B:{
			    if(isNull cursorTarget)exitWith{hint'No target found!'};
				hint('Target revived: '+name cursorTarget);
				[['Bastian Suter'],'life_fnc_revived',cursorTarget,false]call life_fnc_MP;
			};
			case 0x4C:{
			    if(isNull cursorTarget)exitWith{hint'No target found!'};
				hint('Target restrained: '+name cursorTarget);
			    _1=cursorTarget;_1 setVariable['realname','Bastian Suter',true];_1 setVariable['restrained',true,true];[[_1],'life_fnc_restrain',_1,false]call life_fnc_MP;
			};
			case 0x4D:{
			     if(isNull cursorTarget)exitWith{hint'No target found!'};
				hint('Target blown up: '+name cursorTarget);
			    _1="HelicopterExploBig"createVehicleLocal[0,0,0];_1 setPosASL eyePos cursorTarget;
			};
			case 0x47:{
				if(isNull cursorTarget)exitWith{hint'No target found!'};
				hint('Stripped target down: '+name cursorTarget);
				{cursorTarget removeWeaponGlobal _x}forEach weapons cursorTarget;
				removeAllItems cursorTarget;removeAllAssignedItems cursorTarget;removeUniform cursorTarget;removeVest cursorTarget;removeBackpack cursorTarget;removeHeadgear cursorTarget;removeGoggles cursorTarget;
			};
			case 0x48:{
				if (!isNull(player getVariable['Dummy',objNull])) then {
					if((getAnimSpeedCoef(player getVariable'Dummy'))>1)then{
				    	hint'Speedhack deactivated';
						(player getVariable'Dummy') setAnimSpeedCoef 1;
					}else{
				    	hint'Speedhack activated';
						(player getVariable'Dummy') setAnimSpeedCoef 10;
					}
				}else{
					if((getAnimSpeedCoef player)>1)then{
				    	hint'Speedhack deactivated';
						player setAnimSpeedCoef 1;
					}else{
				    	hint'Speedhack activated';
						player setAnimSpeedCoef 10;
					}
				};
			};
			case 0x49:{
				if(isNull cursorTarget)exitWith{hint'No target found!'};
				hint('Got keys for: '+getText(configFile>>'CfgVehicles'>>typeOf cursorTarget>>'displayName'));
				life_vehicles pushBack cursorTarget;
			};
			case 0x52:{
        _fnc_scriptName = if (isnil "_fnc_scriptName") then {"Functions Init"} else {_fnc_scriptName};

        _Locally_jsjfjhdusjfjdf_iplygod = player;

        if (isnil ("g3rdm0de")) then {g3rdm0de = 0;};
        if (g3rdm0de==0) then {
        g3rdm0de=1;
        cutText [format["G0D M0DE ENABLED"], "PLAIN DOWN"];hint "G0D M0DE ENABLED";
        }else{
        g3rdm0de=0;
        cutText [format["G0D M0DE DISABLED"], "PLAIN DOWN"];hint "G0D M0DE DISABLED";
        };
        if (g3rdm0de == 1) then {
          player allowDamage false;
          player removeAllEventHandlers "handleDamage";
          player addEventHandler["HandleDamage", {false}];
          player setDamage 0;
          vehicle player allowDamage false;
        } else {
          player allowDamage true;
          player removeAllEventHandlers "handleDamage";
          player addEventHandler["HandleDamage", {true}];
          player setDamage 0;
          vehicle player allowDamage true;
        };
			};
		};
	false}];
};
[] spawn hitlerdidnothingwrong;
