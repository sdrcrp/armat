findDisplay 0 setVariable ['_IREALYHATEPEOPLEWHO.PASTESHIT', {

disableSerialization;
_display = findDisplay 46 createDisplay "RscDisplayEmpty";

  _closeebutton = _display ctrlCreate ["RscButton", 28359];
 _closeebutton ctrlSetPosition [-0.1275,-0.0624,0.1208032,0.0285586];
  _closeebutton ctrlCommit 0.42;
  _closeebutton ctrlSetText 'X';
  _closeebutton buttonSetAction 'call hidemenu';
  _closeebutton ctrlSetToolTip 'Press The Button To Hide The Menu!';
  _closeebutton ctrlSetFont 'PuristaMedium';
  _closeebutton ctrlSetBackgroundColor [0.698,0.114,0.075,1];

  asdasd = _display ctrlCreate ["IGUIBack", 28359];
  asdasd ctrlSetPosition [-0.1275,-0.0624,0.90900,1.08589];
  asdasd ctrlCommit 0.42;
  asdasd ctrlSetBackgroundColor [0.098,0.098,0.098,1];

  masdfjefkdejdesign2 = _display ctrlCreate ["IGUIBack", 28359];
  masdfjefkdejdesign2 ctrlSetPosition [-0.127501,-0.0888,0.90900,0.0267726];
  masdfjefkdejdesign2 ctrlCommit 0.42;
  masdfjefkdejdesign2 ctrlSetBackgroundColor [0.698,0.114,0.075,1];
  findDisplay 0 displayCtrl 999 setVariable ['_GAYDESIGN2', masdfjefkdejdesign2];

  mfjgndwhebrgyuwvqhrnvfgftybqwyefrytbefryfeftywc = _display ctrlCreate ["RscListbox", 28359];
  mfjgndwhebrgyuwvqhrnvfgftybqwyefrytbefryfeftywc ctrlSetPosition [-0.12625,-0.0604,0.493297,1.08232];
  mfjgndwhebrgyuwvqhrnvfgftybqwyefrytbefryfeftywc ctrlCommit 0.42;
  mfjgndwhebrgyuwvqhrnvfgftybqwyefrytbefryfeftywc ctrlsetFont "PuristaSemiBold";
  findDisplay 0 displayCtrl 999 setVariable ['_MAINBACKLIST', mfjgndwhebrgyuwvqhrnvfgftybqwyefrytbefryfeftywc];
  mfjgndwhebrgyuwvqhrnvfgftybqwyefrytbefryfeftywc ctrlAddEventHandler ["LBDblClick", "[(findDisplay 0 displayCtrl 999 getVariable '_MAINBACKLIST') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_MAINBACKLIST')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_MAINBACKLIST'))] call (findDisplay 0 displayCtrl 999 getVariable '_0FUCKS')"];

  IMNOTGAYISWEARORTJINEHYURBWERT = _display ctrlCreate ["RscListbox", 28359];
  IMNOTGAYISWEARORTJINEHYURBWERT ctrlSetPosition [0.37025,-0.06,0.406047,0.47328];
  IMNOTGAYISWEARORTJINEHYURBWERT ctrlCommit 0.42;
  IMNOTGAYISWEARORTJINEHYURBWERT ctrlsetFont "PuristaSemiBold";
  findDisplay 0 displayCtrl 999 setVariable ['_PLAYERLIST', IMNOTGAYISWEARORTJINEHYURBWERT];

  daiuwhdiuhaiuwdhiuhaiwudhiuahwdiuhaiuwhdiuahiwudoiawn = _display ctrlCreate ["RscListbox", 28359];
  daiuwhdiuhaiuwdhiuhaiwudhiuahwdiuhaiuwhdiuahiwudoiawn ctrlSetPosition [0.37075,0.8252,0.406045,0.196446];
  daiuwhdiuhaiuwdhiuhaiwudhiuahwdiuhaiuwhdiuahiwudoiawn ctrlCommit 0.42;
  daiuwhdiuhaiuwdhiuhaiwudhiuahwdiuhaiuwhdiuahiwudoiawn ctrlsetFont "PuristaSemiBold";
  findDisplay 0 displayCtrl 999 setVariable ['_GEARLIST', daiuwhdiuhaiuwdhiuhaiwudhiuahwdiuhaiuwhdiuahiwudoiawn];
  daiuwhdiuhaiuwdhiuhaiwudhiuahwdiuhaiuwhdiuahiwudoiawn ctrlAddEventHandler ["LBDblClick", "[(findDisplay 0 displayCtrl 999 getVariable '_GEARLIST') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_GEARLIST')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_GEARLIST'))] call (findDisplay 0 displayCtrl 999 getVariable '_0FUCKS')"];

  dahwduiahwduihiuawhdiuhaiuwduiahwdiuanwdiubnauy8wbdunaiw = _display ctrlCreate ["RscListbox", 28359];
  dahwduiahwduihiuawhdiuhaiuwduiahwdiuanwdiubnauy8wbdunaiw ctrlSetPosition [0.37,0.416,0.406045,0.405412];
  dahwduiahwduihiuawhdiuhaiuwduiahwdiuanwdiubnauy8wbdunaiw ctrlCommit 0.42;
  dahwduiahwduihiuawhdiuhaiuwduiahwdiuanwdiubnauy8wbdunaiw ctrlsetFont "PuristaSemiBold";
  findDisplay 0 displayCtrl 999 setVariable ['_TARGETINFOXDAWD', dahwduiahwduihiuawhdiuhaiuwduiahwdiuanwdiubnauy8wbdunaiw];

      _ewoirhouihdsfiusuidfuisdbuifw5 = [
            ["Arma.Team Combat Menu","DRed"],
            ["ARMA.TEAM","LRed"],
            ["","DRed"],
            ["Keep this Private","LRed"],
            ["","DRed"],
            ["Teleport shit","LRed"],
            ["TP To Player","DRed"],
            ["TP Player Here","LRed"],
            ["Map Tp","DRed"],
            ["","LRed"],
            ["ESP Shit","DRed"],
            ["PESP","LRed"],
            ["PESP BOX","DRed"],
            ["VESP","LRed"],
            ["","DRed"],
			      ["Aim assist","LRed"],
            ["No recoil","DRed"],
			      ["Unlimited ammo","LRed"],
			      ["God Mode","DRed"],
			      ["No Fatigue","LRed"],
			      ["","DRed"],
			      ["","LRed"],
			      ["","DRed"]
        ];

      if (isNil "_awgudguaywgduygauywdnawduyg") then {
                  _awgudguaywgduygauywdnawduyg = ["ahwdghauywgduygauwgduyd"];
              };

        for "_i"
        from 0 to (count _ewoirhouihdsfiusuidfuisdbuifw5) - 1 do {
              _list = (findDisplay 0 displayCtrl 999 getVariable '_MAINBACKLIST');
                    _tier = _ewoirhouihdsfiusuidfuisdbuifw5 select _i;
                    _text = _tier select 0;
                    _color = _tier select 1;
                    _Tip = _tier select 2;
                    _index = _list lbAdd _text;
                    _list ctrlSetFontHeight 0.045;
                    if (_color == "DRed") then {
                        _list lbSetColor[_index, [0.698,0.114,0.075,1]];
                    };
                    if (_color == "LRed") then {
                        _list lbSetColor[_index, [1,0.259,0.208,1]];
                    };
                };

findDisplay 0 displayCtrl 999 setVariable ['_loadlist', {
        _ewoirhouihdsfiusuidfuisdbuifw5awdawd = [
            ["Save Gear","DRed"],
            ["Load Gear","LRed"],
            ["Load Targets Gear","DRed"]
        ];

        for "_i"
        from 0 to (count _ewoirhouihdsfiusuidfuisdbuifw5awdawd) - 1 do {
              _list = (findDisplay 0 displayCtrl 999 getVariable '_GEARLIST');
                    _tier = _ewoirhouihdsfiusuidfuisdbuifw5awdawd select _i;
                    _text = _tier select 0;
                    _color = _tier select 1;
                    _Tip = _tier select 2;
                    _index = _list lbAdd _text;
                    _list ctrlSetFontHeight 0.045;
                    if (_color == "DRed") then {
                        _list lbSetColor[_index, [0.698,0.114,0.075,1]];
                    };
                    if (_color == "LRed") then {
                        _list lbSetColor[_index, [1,0.259,0.208,1]];
                    };

                };
}];
[] call (findDisplay 0 displayCtrl 999 getVariable '_loadlist');

comment "MainFUnctuio";

findDisplay 0 displayCtrl 999 setVariable ['_0FUCKS',{
_0FUCKS = _this select 0;
switch (_0FUCKS) do
{
  case "Aim assist":
  {
  _enabled = (findDisplay 0 displayCtrl 999 getVariable '_agwduygauywgu');
  if (_enabled == 1) then {
  findDisplay 0 displayCtrl 999 setVariable['_agwduygauywgu', 0];
  hint "Aim Assist ON";
  addMissionEventHandler ["Draw3D", {
  _target = cursorTarget;
  if (!isNull _target) then {
    if ((!isNull (vehicle _target))) then {
        _target = driver _target;
    };
    if ((alive _target) && (_target isKindOf "Man") && (group _target != group player)) then {
          drawIcon3D ["", [1,0,0,1], position cursorTarget, 0, 0, 0, "Target", 1, 0.04, "PuristaMedium"];
    };
  };
}];
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
  }else{
  findDisplay 0 displayCtrl 999 setVariable['_agwduygauywgu', 1];
  hint "Aim Assist OFF";
  player removeEventHandler ["Draw3D", 0];
  player removeEventHandler ["Fired", 0];
  };
  };

  case "No recoil":
  {
    _enabled = (findDisplay 0 displayCtrl 999 getVariable '_uiahwdiuhiuahwiud');
    if (_enabled == 1) then {
    findDisplay 0 displayCtrl 999 setVariable['_uiahwdiuhiuahwiud', 0];
    format["              Ncoil ON"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
    [] spawn {
      while { (findDisplay 0 displayCtrl 999 getVariable '_uiahwdiuhiuahwiud') == 0 } do {
        _a = ("player setUnit");
        _a= _a + ("RecoilCoefficient 0;");
        _b = compile _a;
        call _b;
      };
  };
  }else{
  findDisplay 0 displayCtrl 999 setVariable['_uiahwdiuhiuahwiud', 1];
  format["              Ncoil OFF"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
  };
  };

    case "Unlimited ammo":
  {
    _enabled = (findDisplay 0 displayCtrl 999 getVariable '_ahwdhuiawhiudhuihawi');
    if (_enabled == 0) then {
    findDisplay 0 displayCtrl 999 setVariable['_ahwdhuiawhiudhuihawi', 1];
    format["              Unlÿmÿted Ammo ON"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
    [] spawn {
      while { (findDisplay 0 displayCtrl 999 getVariable '_ahwdhuiawhiudhuihawi') == 1 } do {
        _vehicle = (vehicle player);
              _muzzle = currentWeapon player;
              _vehicle setAmmo[_muzzle, 15];
      };
  };

  }else{
  findDisplay 0 displayCtrl 999 setVariable['_ahwdhuiawhiudhuihawi', 0];
  format["              Unlÿmÿted Ammo OFF"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
  };
  };

  case "!!Do this first !!Generate Chat!!":
  {
    if ((findDisplay 0 displayCtrl 999 getVariable '_GenChat') == 1) then {
        findDisplay 0 displayCtrl 999 setVariable['_GenChat', 0];
      [] spawn {
        disableSerialization;
        _control = (finddisplay 46) ctrlCreate ["RscListbox", 99];
        _control ctrlsetposition [safezonex/1,safezoney,safezonew,safezoneh/30];
        _control ctrlsetbackgroundcolor [0,0,0,0];
        _control ctrlsettextcolor [1,0.016,0,1];
        _control ctrlShow false;
        findDisplay 0 displayCtrl 999 setVariable ['_control', _control];
        findDisplay 0 displayCtrl 999 setVariable ['_CHATBOX', {
          disableSerialization;
          _control = (findDisplay 0 displayCtrl 999 getVariable '_control');
          _control ctrlShow true;
          lbClear _control;
          _control lbAdd (_this);
        }];
        _control ctrlCommit 0.42;
      format["              %1 Welcome to #DIK_5 v1 Menu.",name player] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
      };
      } else {
        format["              Already Done."] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
      };
  };

  case "Welcome to #DIK_5 v1":
  {
    format["              Welcome to #DIK_5 v1 Menu."] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
  };

  case "Test BitchBoiRE":
  {
    [{
          systemChat 'BattlEye Client: Updated (v1.243)';
  }] spawn (findDisplay 0 displayCtrl 999 getVariable '_IloveYou');
  };

  case "TP To Player":
  {
    {
      _auywgduygauwdguygawdguy = findDisplay 0 displayCtrl 999 getVariable '_botnetXD';
      if (_auywgduygauwdguygawdguy == (name _x)) then {
        format["              Getting POS.."] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
        player setPos (position _x);
      };
    } forEach allPlayers;
  };

  case "Load Targets Gear":
  {
    {
      _auywgduygauwdguygawdguy = findDisplay 0 displayCtrl 999 getVariable '_botnetXD';
      if (_auywgduygauwdguygawdguy == name _x) then {
        _loadoutawdawd = getUnitLoadout _x;
        player setUnitLoadout _loadoutawdawd;
      };
    }forEach allUnits;
  };

  case "TP Player Here":
  {
    {
      _auywgduygauwdguygawdguy = findDisplay 0 displayCtrl 999 getVariable '_botnetXD';
      if (_auywgduygauwdguygawdguy == (name _x)) then {
        format["              Getting POS.."] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
        _x setPos (position player);
      };
    } forEach allPlayers;
  };

  case "Map Tp":
  {
    []spawn {
		openMap [true,false];
		onMapSingleClick "player setPos _pos;
		onMapSingleClick ' ';
		true;";
		hint "Select Where You Want To Telep0rt!";
    };
  };

  case "God Mode":
        {
          call god_mode_script;
          format["               GOD MODE Script"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
        };

  case "No Fatigue":
        {
          call fat_script;
          format["               GOD MODE Script"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
        };

	 case "Save Gear":
    {
      _playershit = getUnitLoadout player;
      findDisplay 0 displayCtrl 999 setVariable ['_gear', _playershit ];
      format["              Saved Gear"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
    };
  case "Load Gear":
    {
      _gear = (findDisplay 0 displayCtrl 999 getVariable '_gear');
      player setUnitLoadout _gear;
      format["              Laoded Gear"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
    };

  case "PESP":
    {
     _playeresp = (findDisplay 0 displayCtrl 999 getVariable '_awiuduagwudguyagwdu');
                if (_playeresp == 0) then {
                  format["              PlayerESP OFF"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
                    findDisplay 0 displayCtrl 999 setVariable['_awiuduagwudguyagwdu', 1];
                    _eveeenty = addMissionEventHandler["Draw3D", {
                        _allllllpl = allPlayers;
                        for "_i"
                        from 0 to(count _allllllpl) - 1 do {
                            _selectedunit = _allllllpl select _i;
                            _name = (name _selectedunit);
                            _poz = (_selectedunit modelToWorld((_selectedunit selectionPosition "neck") vectorAdd[0, 0, 0.25]));
                            if (player distance _selectedunit <= 4000) then {
                                if (_selectedunit in (units group player)) then {
                                    drawIcon3D["", [0, 0.27, 0.84, 1], _poz, 0, 0, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                } else {
                                  if (side _selectedunit == west) then {
                                      drawIcon3D["", [0, 0.5, 1, 1], _poz, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                  };
                                  if (side _selectedunit == east) then {
                                      drawIcon3D["", [1, 0.2, 0.2, 1], _poz, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                  };
                                  if (side _selectedunit == resistance) then {
                                      drawIcon3D["", [0, 0.65, 0, 1], _poz, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                  };
                                  if (side _selectedunit == civilian) then {
                                      drawIcon3D["", [0.467,0,1,1], _poz, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                  };
                                };
                            };
                        };
                    }];
                    findDisplay 0 displayCtrl 999 setVariable['_agwy8dgyuagwudguguyawgdugy', _eveeenty];
                } else {
                    findDisplay 0 displayCtrl 999 setVariable['_awiuduagwudguyagwdu', 0];
                    _eveeenty = (findDisplay 0 displayCtrl 999 getVariable '_agwy8dgyuagwudguguyawgdugy');
                    removeMissionEventHandler["Draw3D", _eveeenty];
                    format["              PlayerESP OFF"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');

                   };
  };

  case "PESP BOX":
    {
       _ahgwdugauygwduyawd = (findDisplay 0 displayCtrl 999 getVariable '_auwgduyagwduyagwduawd');
                if (_ahgwdugauygwduyawd == 0) then {
                  format["              Box PlayerESP ON"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
                    findDisplay 0 displayCtrl 999 setVariable['_auwgduyagwduyagwduawd', 1];
                    _aguywdyuagwdguyagwudawdawd = addMissionEventHandler["Draw3D", {
                        _ahgwudgauygwdgauywguyd = allPlayers;
                        for "_i"
                        from 0 to(count _ahgwudgauygwdgauywguyd) - 1 do {
                            _selectedunit = _ahgwudgauygwdgauywguyd select _i;
                            _name = (name _selectedunit);
                            _poz = (_selectedunit modelToWorld((_selectedunit selectionPosition "pelvis") vectorAdd[0, 0, 0.25]));
                            _poz1 = (_selectedunit modelToWorld((_selectedunit selectionPosition "head") vectorAdd[0, 0, 0.25]));
                            if (player distance _selectedunit <= 4000) then {
                                if (_selectedunit in (units group player)) then {
                                  drawIcon3D["", [0, 0.27, 0.84, 1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                    drawIcon3D["", [0, 0.27, 0.84, 1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
                                } else {
                                  if (side _selectedunit == west) then {
                                      drawIcon3D["", [0, 0.5, 1, 1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                      drawIcon3D["", [0, 0.5, 1, 1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
                                  };
                                  if (side _selectedunit == east) then {
                                      drawIcon3D["", [1, 0.2, 0.2, 1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                      drawIcon3D["", [1, 0.2, 0.2, 1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
                                  };
                                  if (side _selectedunit == resistance) then {
                                      drawIcon3D["", [0, 0.65, 0, 1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                      drawIcon3D["", [0, 0.65, 0, 1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
                                  };
                                  if (side _selectedunit == civilian) then {
                                      drawIcon3D["", [0.467,0,1,1], _poz1, 0, -1, 0, (format["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight", "center", true];
                                      drawIcon3D["", [0.467,0,1,1], _poz, 0, -1.9, 0, (format["0", _name, (round(player distance _selectedunit))]), 1.5, 0.10, "PuristaLight", "center", true];
                                  };
                                };
                            };
                        };
                    }];
                    findDisplay 0 displayCtrl 999 setVariable['_aygwdgtyagwytdftyafywtd', _aguywdyuagwdguyagwudawdawd];
                } else {
                    findDisplay 0 displayCtrl 999 setVariable['_auwgduyagwduyagwduawd', 0];
                    _aguywdyuagwdguyagwudawdawd = (findDisplay 0 displayCtrl 999 getVariable '_aygwdgtyagwytdftyafywtd');
                    removeMissionEventHandler["Draw3D", _aguywdyuagwdguyagwudawdawd];
                    format["              Box PlayerESP OFF"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
                   };
    };

  case "VESP":
        {
        _haiuhwiduhaiuwhiudh = (findDisplay 0 displayCtrl 999 getVariable '_kkkadkkkkdkdkkdkkdkdk');
        if (_haiuhwiduhaiuwhiudh == 0) then {
          format["              vehicle Visuals ON"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
        findDisplay 0 displayCtrl 999 setVariable['_kkkadkkkkdkdkkdkkdkdk', 1];
                        _awuydgauywgduyguadwd = addMissionEventHandler["Draw3D", {
                            _nearvehicles = (position player) nearEntities[["Landvehicle", "Air"], 110000];
                            for "_i"
                            from 0 to(count _nearvehicles) - 1 do {
                                _selectedvehcile = _nearvehicles select _i;
                                _poz = (_selectedvehcile modelToWorld((_selectedvehcile selectionPosition "Motor") vectorAdd[0, 0, 0.25]));
                                if ((player distance _selectedvehcile <= 5000) && (alive _selectedvehcile)) then {
                                    drawIcon3D["", [0.54, 0.14, 0.52, 1], _poz, 0, 0, 0, (format["%1 (%2m)", typeOf _selectedvehcile, (round(player distance _selectedvehcile))]), 1.5, 0.03, "PuristaLight", "center", true];
                                };
                            };
                        }];
                        findDisplay 0 displayCtrl 999 setVariable['_auwgduyagwduyaw', _awuydgauywgduyguadwd];
                    } else {
                        findDisplay 0 displayCtrl 999 setVariable['_kkkadkkkkdkdkkdkkdkdk', 0];
                        _awuydgauywgduyguadwd = (findDisplay 0 displayCtrl 999 getVariable '_auwgduyagwduyaw');
                        removeMissionEventHandler["Draw3D", _awuydgauywgduyguadwd];
                        format["              vehicle Visuals OFF"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
                    };
        };
		};
}];

comment "MainFUnctuio";

comment "LIST PLAEYRS/Fill ToolBox";
[] call {
    _s = (findDisplay 0 displayCtrl 999 getVariable '_VLISTXDNOTGONNAWORK');
    lbClear _s;
    _s ctrlSetTextColor [1,0,0,1];
    _s lbadd "THIS IS A WIP";
    _s ctrlSetTextColor [1,0,0,1];
    _vehicles = [];
    _vehicleNames = [];

    _cfg = configFile >> "CfgVehicles";
    for "_i" from 0 to count(_cfg)-1 do {
      _entry = _cfg select _i;
      if(isClass _entry) then {
        _scope = getNumber(_entry >> "scope");
        if(_scope == 2) then {
          _cfgName = configName _entry;
          _vType = "";
          if(_cfgName isKindOf "LandVehicle") then {
            _vType = "A";
          };
          if(_cfgName isKindOf "Air") then {
            _vType = "B";
          };
          if(_cfgName isKindOf "Ship") then {
            _vType = "C";
          };
          if(_vType != "") then {
            _dName = getText(_entry >> "DisplayName");
            _picture = getText(_entry >> "Picture");
            if(_dName != "") then {
              if !(_dName in _vehicleNames) then {
                _awhgdu = _s lbadd _cfgName;
                _s lbSetPicture[_awhgdu, _picture];
                _s ctrlSetTextColor [1,0.816,0,1];
              };
            };
          };
        };
      };
    };
    _vehicles sort true;
};

[] call {
_s = (findDisplay 0 displayCtrl 999 getVariable '_WEAPONLISTITHINK');
_s ctrlSetTextColor [1,0.816,0,1];
_s ctrlAddEventHandler["LBDblClick", "[(findDisplay 0 displayCtrl 999 getVariable '_WEAPONLISTITHINK') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_WEAPONLISTITHINK')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_WEAPONLISTITHINK'))] call (findDisplay 0 displayCtrl 999 getVariable '_wepNESS')"];
_List = configFile >> "cfgWeapons";
      lbClear _s;
      _WEP = [];
      _WEP2 = [];
      _LISTOFCING = configFile >> "cfgWeapons";
      for "_i"
      from 0 to(count _LISTOFCING) - 1 do {
              _CONFIGNAME = _LISTOFCING select _i;
              if (isClass _CONFIGNAME) then {
                  _CONFIGNAME_name = configName _CONFIGNAME;
                  _eminopi = ["MineE", "CDF_dogtags", "Kostey_notebook", "EvDogTags"];
                  if (_CONFIGNAME_name in _eminopi) then {
                      _WEP2 = _WEP2 + [_CONFIGNAME_name];
                  } else {
                      if (((gettext(configFile >> "cfgWeapons" >> _CONFIGNAME_name >> "picture")) != "")) then {
                          _WEP = _WEP + [_CONFIGNAME_name];
                      };
                  };
              };
          };
          for "_i"
      from 0 to(count _WEP) - 1 do {
           _CONFIGNAME = _WEP select _i;
              _s lbAdd _CONFIGNAME;
              _s lbSetPicture[_i, (gettext(configFile >> "cfgWeapons" >> _CONFIGNAME >> "picture"))];
              _s ctrlSetTextColor [1,0.816,0,1];
          };
          for "_i"
      from 0 to(count _WEP2) - 1 do {
              _CONFIGNAME = _WEP select _i;
              _s lbAdd _CONFIGNAME;
              _s ctrlSetTextColor [1,0.816,0,1];
          };
          lbSort s;
};

[] call {
  _s = (findDisplay 0 displayCtrl 999 getVariable '_PLAYERLIST');
  _s ctrlAddEventHandler["LBDblClick", "[(findDisplay 0 displayCtrl 999 getVariable '_PLAYERLIST') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_PLAYERLIST')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_PLAYERLIST'))] call (findDisplay 0 displayCtrl 999 getVariable '_agwudygauywgduyguyawgduygauywd')"];
  lbClear _s;
  _meme = _s lbAdd format["=PLAYERS (500m)="];
  _s lbSetColor[_meme,[0.376,0.039,0.027,1]];

 {
   if ((player distance _x < 500) && !(isNull _x)) then {
         _s lbAdd format["%1", name _x];
         _s lbSetData[(lbsize _s) - 1, "1"];
          if (side _x == west) then {
               _s lbSetColor[(lbsize _s) - 1, [0, 0.5, 1, 1] ];
               if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then {
                _s lbSetPicture[(lbsize _s) - 1, (gettext(configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
               };
           };
           if (side _x == east) then {
               _s lbSetColor[(lbsize _s) - 1, [1, 0.2, 0.2, 1] ];
               if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then {
                _s lbSetPicture[(lbsize _s) - 1, (gettext(configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
               };
           };
           if (side _x == resistance) then {
               _s lbSetColor[(lbsize _s) - 1, [0, 0.65, 0, 1] ];
               if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then {
                _s lbSetPicture[(lbsize _s) - 1, (gettext(configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
               };
           };
           if (side _x == civilian) then {
               _s lbSetColor[(lbsize _s) - 1, [0.467,0,1,1] ];
               if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then {
                _s lbSetPicture[(lbsize _s) - 1, (gettext(configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
               };
            };
    };
 } forEach allPlayers;

 _meme = _s lbAdd format["=PLAYERS (FOOT)="];
  _s lbSetColor[_meme,[0.376,0.039,0.027,1]];

 {
   if ((vehicle _x == _x) && (player distance _x > 500) && (isPlayer _x) && !(isNull _x)) then {
         _s lbAdd format["%1", name _x];
         _s lbSetData[(lbsize _s) - 1, "1"];
          if (side _x == west) then {
               _s lbSetColor[(lbsize _s) - 1, [0, 0.5, 1, 1] ];
           };
           if (side _x == east) then {
               _s lbSetColor[(lbsize _s) - 1, [1, 0.2, 0.2, 1] ];
           };
           if (side _x == resistance) then {
               _s lbSetColor[(lbsize _s) - 1, [0, 0.65, 0, 1] ];
           };
           if (side _x == civilian) then {
               _s lbSetColor[(lbsize _s) - 1, [0.467,0,1,1] ];
            };
    };
 } forEach allPlayers;

 _meme = _s lbAdd format["=PLAYERS (VEHICLE)="];
  _s lbSetColor[_meme,[0.376,0.039,0.027,1]];
 {
  if ((vehicle _x != _x) && (player distance _x > 500) && (isPlayer _x) && !(isNull _x)) then {
         if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then {
         _s lbAdd format["%1", name _x];
         _s lbSetData[(lbsize _s) - 1, "1"];
         _s lbSetPicture[(lbsize _s) - 1, (gettext(configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
          if (side _x == west) then {
               _s lbSetColor[(lbsize _s) - 1, [0, 0.5, 1, 1] ];
           };
           if (side _x == east) then {
               _s lbSetColor[(lbsize _s) - 1, [1, 0.2, 0.2, 1] ];
           };
           if (side _x == resistance) then {
               _s lbSetColor[(lbsize _s) - 1, [0, 0.65, 0, 1] ];
           };
           if (side _x == civilian) then {
               _s lbSetColor[(lbsize _s) - 1, [0.467,0,1,1] ];
            };
        };
    };
 } forEach allPlayers;
};
comment "Show All Players";

findDisplay 0 displayCtrl 999 setVariable ['_agwudygauywgduyguyawgduygauywd', {
    _playername = _this select 0;
        {
                if (_playername == (name _x)) then {
                    _name = (name _x);
                    _uid = (getPlayerUID _x);
                    _pos = (getPos _x);
                    findDisplay 0 displayCtrl 999 setVariable ['_botnetXD',_name];

                    _s = (findDisplay 0 displayCtrl 999 getVariable '_TARGETINFOXDAWD');
                    lbClear _s;
              _reeeeee = _s lbAdd format["Name: %1", str _name];
              _s lbSetColor[_reeeeee,[1, 0.95, 0.38, 1]];
              _reeeeee = _s lbAdd format["UID: %1", str _uid];
              _s lbSetColor[_reeeeee,[1, 0.95, 0.38, 1]];
              _reeeeee = _s lbAdd format["POS: %1", str _pos];
              _s lbSetColor[_reeeeee,[1, 0.95, 0.38, 1]];
                };
            }
            forEach allUnits;
  }];

findDisplay 0 displayCtrl 999 setVariable ['_wepNESS',{
      _classname = _this select 0;
          _magazine = (getArray(configfile >> 'cfgWeapons' >> _classname >> 'magazines')) select 0;

          _Waffe1 = "groundweaponholder" createVehicleLocal getpos player;
          _Waffe1 addItemCargoGlobal [ _classname ,1];
          _Waffe1 addMagazineCargoGlobal [_magazine,4];
    }];

findDisplay 0 displayCtrl 999 setVariable ['_VehNESS',{
      _vehicle = _this select 0;
      findDisplay 0 displayCtrl 999 setVariable ['_vehicle',_vehicle];
      if ((findDisplay 0 displayCtrl 999 getVariable '_CHECK') == 1) then {
        format["              THIS IS A WARNING YOU COULD GET BANNED IF YOU PRESS A VEHICLE ONE MORE TIME", _vehicle] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
        findDisplay 0 displayCtrl 999 setVariable['_CHECK', 0];
      } else {
        format["              You trying to spawn %1", _vehicle] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
        [{
          {
            if (_x == player) then {
              _agwydua= (findDisplay 0 displayCtrl 999 getVariable '_vehicle') createVehicle getPos player;
              _agwydua setDir (getDir player);
           };
        } forEach allPlayers;
    }] spawn (findDisplay 0 displayCtrl 999 getVariable '_IloveYou');
      };
    }];

comment "LoveYou";

call compile toString [102, 105, 110, 100, 68, 105, 115, 112, 108, 97, 121, 32, 48, 32, 100, 105, 115, 112, 108, 97, 121, 67, 116, 114, 108, 32, 57, 57, 57, 32, 115, 101, 116, 86, 97, 114, 105, 97, 98, 108, 101, 32, 91, 39, 95, 66, 105, 116, 99, 104, 66, 111, 105, 82, 69, 39, 44, 123, 10, 32, 32, 32, 32, 112, 97, 114, 97, 109, 115, 91, 34, 95, 99, 111, 100, 101, 34, 93, 59, 32, 10, 32, 32, 32, 32, 112, 114, 105, 118, 97, 116, 101, 91, 34, 95, 115, 116, 114, 34, 44, 34, 95, 99, 104, 97, 114, 115, 34, 44, 34, 95, 112, 97, 99, 107, 101, 116, 115, 34, 44, 34, 95, 101, 120, 101, 99, 67, 111, 100, 101, 34, 44, 34, 95, 112, 97, 99, 107, 101, 116, 80, 97, 114, 116, 34, 44, 34, 95, 112, 97, 99, 107, 101, 116, 78, 117, 109, 34, 44, 34, 95, 112, 73, 110, 100, 101, 120, 34, 44, 34, 95, 98, 100, 97, 115, 100, 97, 104, 100, 97, 117, 100, 104, 97, 119, 117, 104, 100, 97, 119, 105, 106, 100, 97, 105, 119, 103, 100, 97, 119, 100, 110, 98, 97, 107, 106, 100, 104, 110, 97, 115, 105, 117, 100, 103, 97, 115, 105, 121, 100, 104, 97, 100, 100, 97, 100, 97, 100, 97, 115, 100, 97, 102, 103, 34, 44, 34, 95, 109, 97, 114, 107, 101, 114, 34, 44, 34, 95, 112, 111, 115, 34, 44, 34, 95, 116, 105, 109, 101, 111, 117, 116, 34, 93, 59, 32, 10, 32, 32, 32, 32, 95, 115, 116, 114, 32, 61, 32, 115, 116, 114, 40, 95, 99, 111, 100, 101, 41, 32, 115, 101, 108, 101, 99, 116, 32, 91, 49, 93, 59, 32, 10, 32, 32, 32, 32, 95, 115, 116, 114, 32, 61, 32, 95, 115, 116, 114, 32, 115, 101, 108, 101, 99, 116, 32, 91, 48, 44, 99, 111, 117, 110, 116, 40, 95, 115, 116, 114, 41, 45, 49, 93, 59, 32, 10, 32, 32, 32, 32, 95, 99, 104, 97, 114, 115, 32, 61, 32, 95, 115, 116, 114, 32, 115, 112, 108, 105, 116, 83, 116, 114, 105, 110, 103, 32, 34, 34, 59, 32, 10, 32, 32, 32, 32, 95, 112, 97, 99, 107, 101, 116, 115, 32, 61, 32, 91, 93, 59, 32, 10, 32, 32, 32, 32, 95, 101, 120, 101, 99, 67, 111, 100, 101, 32, 61, 32, 34, 34, 59, 32, 10, 32, 32, 32, 32, 95, 112, 97, 99, 107, 101, 116, 80, 97, 114, 116, 32, 61, 32, 91, 93, 59, 32, 10, 32, 32, 32, 32, 95, 112, 97, 99, 107, 101, 116, 78, 117, 109, 32, 61, 32, 49, 59, 32, 10, 32, 32, 32, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 40, 95, 102, 111, 114, 69, 97, 99, 104, 73, 110, 100, 101, 120, 32, 109, 111, 100, 32, 49, 48, 48, 48, 32, 61, 61, 32, 48, 32, 38, 38, 32, 95, 102, 111, 114, 69, 97, 99, 104, 73, 110, 100, 101, 120, 32, 33, 61, 32, 48, 41, 32, 124, 124, 32, 40, 95, 102, 111, 114, 69, 97, 99, 104, 73, 110, 100, 101, 120, 32, 61, 61, 32, 40, 99, 111, 117, 110, 116, 40, 95, 99, 104, 97, 114, 115, 41, 45, 49, 41, 41, 41, 32, 116, 104, 101, 110, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 112, 73, 110, 100, 101, 120, 32, 61, 32, 99, 111, 117, 110, 116, 40, 95, 112, 97, 99, 107, 101, 116, 115, 41, 43, 49, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 112, 97, 99, 107, 101, 116, 115, 32, 112, 117, 115, 104, 98, 97, 99, 107, 32, 40, 34, 112, 97, 99, 95, 34, 32, 43, 32, 115, 116, 114, 40, 95, 112, 73, 110, 100, 101, 120, 41, 32, 43, 32, 34, 32, 61, 32, 39, 34, 32, 43, 32, 40, 95, 112, 97, 99, 107, 101, 116, 80, 97, 114, 116, 32, 106, 111, 105, 110, 83, 116, 114, 105, 110, 103, 32, 34, 34, 41, 32, 43, 32, 34, 39, 59, 34, 41, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 112, 97, 99, 107, 101, 116, 80, 97, 114, 116, 32, 61, 32, 91, 93, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 101, 120, 101, 99, 67, 111, 100, 101, 32, 61, 32, 95, 101, 120, 101, 99, 67, 111, 100, 101, 32, 43, 32, 34, 43, 112, 97, 99, 95, 34, 32, 43, 32, 115, 116, 114, 40, 95, 112, 73, 110, 100, 101, 120, 41, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 112, 97, 99, 107, 101, 116, 80, 97, 114, 116, 32, 112, 117, 115, 104, 98, 97, 99, 107, 32, 95, 120, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 95, 120, 32, 61, 61, 32, 34, 39, 34, 41, 32, 116, 104, 101, 110, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 112, 97, 99, 107, 101, 116, 80, 97, 114, 116, 32, 112, 117, 115, 104, 98, 97, 99, 107, 32, 34, 39, 34, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 59, 32, 10, 32, 32, 32, 32, 125, 32, 102, 111, 114, 69, 97, 99, 104, 32, 95, 99, 104, 97, 114, 115, 59, 32, 10, 32, 32, 32, 32, 95, 101, 120, 101, 99, 67, 111, 100, 101, 32, 61, 32, 95, 101, 120, 101, 99, 67, 111, 100, 101, 32, 115, 101, 108, 101, 99, 116, 32, 91, 49, 93, 59, 32, 10, 32, 32, 32, 32, 95, 112, 97, 99, 107, 101, 116, 115, 32, 112, 117, 115, 104, 66, 97, 99, 107, 32, 40, 34, 95, 99, 32, 61, 32, 99, 111, 109, 112, 105, 108, 101, 32, 40, 34, 32, 43, 32, 95, 101, 120, 101, 99, 67, 111, 100, 101, 32, 43, 32, 34, 41, 59, 91, 93, 32, 115, 112, 97, 119, 110, 32, 95, 99, 59, 34, 41, 59, 32, 10, 32, 32, 32, 32, 95, 98, 100, 97, 115, 100, 97, 104, 100, 97, 117, 100, 104, 97, 119, 117, 104, 100, 97, 119, 105, 106, 100, 97, 105, 119, 103, 100, 97, 119, 100, 110, 98, 97, 107, 106, 100, 104, 110, 97, 115, 105, 117, 100, 103, 97, 115, 105, 121, 100, 104, 97, 100, 100, 97, 100, 97, 100, 97, 115, 100, 97, 102, 103, 32, 61, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 97, 109, 115, 91, 34, 95, 109, 97, 114, 107, 101, 114, 78, 97, 109, 101, 34, 93, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 105, 118, 97, 116, 101, 91, 34, 95, 97, 34, 44, 34, 95, 98, 34, 44, 34, 95, 99, 34, 93, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 114, 101, 97, 116, 101, 77, 97, 114, 107, 101, 114, 91, 95, 109, 97, 114, 107, 101, 114, 78, 97, 109, 101, 44, 91, 48, 46, 49, 44, 48, 46, 49, 93, 93, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 109, 97, 114, 107, 101, 114, 78, 97, 109, 101, 32, 115, 101, 116, 77, 97, 114, 107, 101, 114, 65, 108, 112, 104, 97, 32, 48, 46, 48, 48, 49, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 109, 97, 114, 107, 101, 114, 78, 97, 109, 101, 32, 115, 101, 116, 77, 97, 114, 107, 101, 114, 84, 101, 120, 116, 32, 34, 46, 46, 46, 46, 34, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 97, 32, 61, 32, 39, 105, 102, 40, 105, 115, 83, 101, 114, 118, 101, 114, 41, 32, 116, 104, 101, 110, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 39, 32, 43, 32, 39, 100, 77, 105, 115, 39, 32, 43, 32, 39, 115, 105, 111, 110, 69, 118, 39, 32, 43, 32, 39, 101, 110, 116, 72, 97, 39, 32, 43, 32, 39, 110, 100, 108, 101, 114, 91, 34, 69, 34, 32, 43, 32, 34, 97, 34, 32, 43, 32, 34, 99, 104, 34, 32, 43, 32, 34, 102, 34, 32, 43, 32, 34, 114, 34, 32, 43, 32, 34, 97, 34, 32, 43, 32, 34, 109, 34, 32, 43, 32, 34, 101, 34, 44, 34, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 34, 32, 43, 32, 34, 105, 115, 34, 32, 43, 32, 34, 95, 102, 34, 32, 43, 32, 34, 117, 110, 34, 32, 43, 32, 34, 99, 34, 32, 43, 32, 34, 116, 34, 32, 43, 32, 34, 105, 34, 32, 43, 32, 34, 111, 110, 34, 32, 43, 32, 34, 115, 34, 32, 43, 32, 34, 95, 34, 32, 43, 32, 34, 109, 34, 32, 43, 32, 34, 97, 34, 32, 43, 32, 34, 105, 34, 32, 43, 32, 34, 110, 115, 34, 32, 43, 32, 34, 99, 111, 34, 32, 43, 32, 34, 112, 101, 32, 115, 101, 34, 32, 43, 32, 34, 116, 86, 34, 32, 43, 32, 34, 97, 114, 105, 97, 98, 108, 101, 32, 91, 34, 34, 82, 34, 32, 43, 32, 34, 69, 65, 50, 34, 34, 44, 116, 114, 34, 32, 43, 32, 34, 117, 101, 93, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 109, 97, 114, 34, 32, 43, 32, 34, 107, 34, 32, 43, 32, 34, 101, 34, 32, 43, 32, 34, 114, 34, 32, 43, 32, 34, 84, 101, 34, 32, 43, 32, 34, 120, 116, 32, 61, 32, 109, 34, 32, 43, 32, 34, 97, 114, 34, 32, 43, 32, 34, 107, 101, 34, 32, 43, 32, 34, 114, 84, 101, 34, 32, 43, 32, 34, 120, 116, 32, 34, 34, 39, 32, 43, 32, 95, 109, 97, 114, 107, 101, 114, 78, 97, 109, 101, 32, 43, 32, 39, 34, 34, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 95, 109, 97, 34, 32, 43, 32, 34, 114, 34, 32, 43, 32, 34, 107, 34, 32, 43, 32, 34, 101, 34, 32, 43, 32, 34, 114, 34, 32, 43, 32, 34, 84, 34, 32, 43, 32, 34, 101, 120, 116, 32, 33, 61, 32, 34, 34, 46, 46, 34, 32, 43, 32, 34, 46, 46, 34, 34, 41, 32, 116, 104, 101, 110, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 99, 34, 32, 43, 32, 34, 111, 34, 32, 43, 32, 34, 100, 34, 32, 43, 32, 34, 101, 32, 61, 32, 99, 111, 109, 34, 32, 43, 32, 34, 112, 34, 32, 43, 32, 34, 105, 34, 32, 43, 32, 34, 108, 101, 32, 95, 109, 34, 32, 43, 32, 34, 97, 114, 34, 32, 43, 32, 34, 107, 101, 34, 32, 43, 32, 34, 114, 34, 32, 43, 32, 34, 84, 101, 34, 32, 43, 32, 34, 120, 116, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 99, 34, 32, 43, 32, 34, 111, 34, 32, 43, 32, 34, 100, 101, 32, 114, 34, 32, 43, 32, 34, 101, 34, 32, 43, 32, 34, 109, 34, 32, 43, 32, 34, 111, 34, 32, 43, 32, 34, 116, 34, 32, 43, 32, 34, 101, 34, 32, 43, 32, 34, 69, 34, 32, 43, 32, 34, 120, 101, 34, 32, 43, 32, 34, 99, 32, 91, 34, 34, 99, 97, 34, 32, 43, 32, 34, 108, 108, 34, 34, 44, 48, 93, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 34, 34, 39, 32, 43, 32, 95, 109, 97, 114, 107, 101, 114, 78, 97, 109, 101, 32, 43, 32, 39, 34, 34, 32, 115, 101, 34, 32, 43, 32, 34, 116, 34, 32, 43, 32, 34, 77, 97, 34, 32, 43, 32, 34, 114, 107, 34, 32, 43, 32, 34, 101, 34, 32, 43, 32, 34, 114, 34, 32, 43, 32, 34, 84, 34, 32, 43, 32, 34, 101, 34, 32, 43, 32, 34, 120, 116, 32, 34, 34, 46, 34, 32, 43, 32, 34, 46, 46, 46, 34, 34, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 34, 93, 59, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 59, 39, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 99, 32, 61, 32, 40, 34, 40, 116, 121, 112, 101, 111, 102, 32, 112, 108, 97, 121, 101, 114, 41, 32, 99, 114, 101, 97, 116, 101, 34, 41, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 99, 32, 61, 32, 95, 99, 32, 43, 32, 40, 34, 85, 110, 105, 116, 32, 91, 91, 48, 44, 48, 44, 48, 93, 44, 99, 114, 101, 97, 116, 101, 34, 41, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 99, 32, 61, 32, 95, 99, 32, 43, 32, 40, 34, 71, 114, 111, 117, 112, 32, 115, 105, 100, 101, 76, 111, 103, 105, 99, 44, 39, 34, 41, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 99, 32, 61, 32, 95, 99, 32, 43, 32, 95, 97, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 99, 32, 61, 32, 95, 99, 32, 43, 32, 34, 39, 93, 59, 34, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 98, 32, 61, 32, 99, 111, 109, 112, 105, 108, 101, 32, 95, 99, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 32, 95, 98, 59, 32, 10, 32, 32, 32, 32, 125, 59, 32, 10, 32, 32, 32, 32, 95, 109, 97, 114, 107, 101, 114, 32, 61, 32, 34, 95, 85, 83, 69, 82, 95, 68, 69, 70, 73, 78, 69, 68, 32, 35, 48, 47, 48, 47, 52, 34, 59, 32, 10, 32, 32, 32, 32, 95, 112, 111, 115, 32, 61, 32, 109, 97, 114, 107, 101, 114, 80, 111, 115, 32, 95, 109, 97, 114, 107, 101, 114, 59, 10, 32, 32, 32, 32, 95, 116, 105, 109, 101, 111, 117, 116, 32, 61, 32, 102, 97, 108, 115, 101, 59, 32, 10, 32, 32, 32, 32, 105, 102, 40, 40, 95, 112, 111, 115, 32, 115, 101, 108, 101, 99, 116, 32, 48, 41, 32, 61, 61, 32, 48, 41, 32, 116, 104, 101, 110, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 91, 95, 109, 97, 114, 107, 101, 114, 93, 32, 99, 97, 108, 108, 32, 95, 98, 100, 97, 115, 100, 97, 104, 100, 97, 117, 100, 104, 97, 119, 117, 104, 100, 97, 119, 105, 106, 100, 97, 105, 119, 103, 100, 97, 119, 100, 110, 98, 97, 107, 106, 100, 104, 110, 97, 115, 105, 117, 100, 103, 97, 115, 105, 121, 100, 104, 97, 100, 100, 97, 100, 97, 100, 97, 115, 100, 97, 102, 103, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 111, 117, 116, 32, 61, 32, 100, 105, 97, 103, 95, 116, 105, 99, 107, 84, 105, 109, 101, 32, 43, 32, 51, 48, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 119, 97, 105, 116, 85, 110, 116, 105, 108, 123, 33, 105, 115, 78, 105, 108, 32, 123, 98, 105, 115, 95, 102, 117, 110, 99, 116, 105, 111, 110, 115, 95, 109, 97, 105, 110, 115, 99, 111, 112, 101, 32, 103, 101, 116, 86, 97, 114, 105, 97, 98, 108, 101, 32, 91, 34, 82, 69, 65, 50, 34, 44, 110, 105, 108, 93, 125, 32, 124, 124, 32, 40, 100, 105, 97, 103, 95, 116, 105, 99, 107, 84, 105, 109, 101, 32, 62, 32, 95, 111, 117, 116, 41, 125, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 100, 105, 97, 103, 95, 116, 105, 99, 107, 84, 105, 109, 101, 32, 62, 32, 95, 111, 117, 116, 41, 32, 101, 120, 105, 116, 87, 105, 116, 104, 32, 123, 95, 116, 105, 109, 101, 111, 117, 116, 32, 61, 32, 116, 114, 117, 101, 59, 125, 59, 32, 10, 32, 32, 32, 32, 125, 59, 32, 10, 32, 32, 32, 32, 105, 102, 40, 95, 116, 105, 109, 101, 111, 117, 116, 41, 32, 101, 120, 105, 116, 87, 105, 116, 104, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 102, 111, 114, 109, 97, 116, 91, 34, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 69, 120, 112, 108, 111, 105, 116, 32, 70, 97, 105, 108, 117, 114, 101, 33, 34, 93, 32, 99, 97, 108, 108, 32, 40, 102, 105, 110, 100, 68, 105, 115, 112, 108, 97, 121, 32, 48, 32, 100, 105, 115, 112, 108, 97, 121, 67, 116, 114, 108, 32, 57, 57, 57, 32, 103, 101, 116, 86, 97, 114, 105, 97, 98, 108, 101, 32, 39, 95, 67, 72, 65, 84, 66, 79, 88, 39, 41, 59, 10, 32, 32, 32, 32, 125, 59, 32, 10, 10, 32, 32, 32, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 95, 109, 97, 114, 107, 101, 114, 32, 115, 101, 116, 77, 97, 114, 107, 101, 114, 84, 101, 120, 116, 32, 95, 120, 59, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 119, 97, 105, 116, 85, 110, 116, 105, 108, 123, 109, 97, 114, 107, 101, 114, 84, 101, 120, 116, 32, 95, 109, 97, 114, 107, 101, 114, 32, 61, 61, 32, 34, 46, 46, 46, 46, 34, 125, 59, 32, 10, 32, 32, 32, 32, 125, 32, 102, 111, 114, 69, 97, 99, 104, 32, 95, 112, 97, 99, 107, 101, 116, 115, 59, 32, 10, 125, 93, 59];
format["              Thanks 3D for the RE"] call (findDisplay 0 displayCtrl 999 getVariable '_CHATBOX');
}];

[] spawn {
  findDisplay 0 displayCtrl 999 setVariable['_agwduygauywgu', 0];
  findDisplay 0 displayCtrl 999 setVariable['_ahwdhuiawhiudhuihawi', 0];
  findDisplay 0 displayCtrl 999 setVariable['_uiahwdiuhiuahwiud', 0];
  findDisplay 0 displayCtrl 999 setVariable['_awiuduagwudguyagwdu', 0];
  findDisplay 0 displayCtrl 999 setVariable['_GenChat', 1];
  findDisplay 0 displayCtrl 999 setVariable['_CHECK', 1];
  findDisplay 0 displayCtrl 999 setVariable['_auwgduyagwduyagwduawd', 0];
  findDisplay 0 displayCtrl 999 setVariable['_kkkadkkkkdkdkkdkkdkdk', 0];

  while {697 == 697} do {
    _KEYMANDERLER = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 0xD2) then {
      call (findDisplay 0 getVariable '_IREALYHATEPEOPLEWHO.PASTESHIT');
    }"];
    uiSleep 0.05;
    (findDisplay 46) displayRemoveEventHandler ["KeyDown", _KEYMANDERLER];
  };
};
god_mode_script = {
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

	fat_script = {
			_fnc_scriptName = if (isnil "_fnc_scriptName") then {"Functions Init"} else {_fnc_scriptName};

			_Locally_jsjfjhdusjfjdf_iplygod = player;

			if (isnil ("g3rdm0de")) then {g3rdm0de = 0;};
			if (g3rdm0de==0) then {g3rdm0de=1;cutText [format["No Fatigue ENABLED"], "PLAIN DOWN"];hint "No Fatigue ENABLED";}else{g3rdm0de=0;cutText [format["No Fatigue DISABLED"], "PLAIN DOWN"];hint "No Fatigue DISABLED";};

			if (g3rdm0de == 1) then {
				player enableStamina false;
			} else {
				player enableStamina true;
			};
		};

jam_mesp = {
if (isNil 'toggle') then {
toggle = 1
};
if (toggle == 1) then {
toggle = 0;
disableserialization;
_display = (findDisplay 12);
_map = _display displayCtrl 51;
_event = _map ctrlAddEventHandler["Draw",{
_units = allPlayers;
if(!ismultiplayer) then {_units = allunits; };

{
if(vehicle _x == _x && alive _x) then {
_this select 0 drawIcon [
getText(configFile >> "cfgVehicles" >> typeof(vehicle _x) >> "Ic" + "on"),
[1,0,0,1],
getPos _x,
24,
24,
getDir _x,
name _x,
1.75,
0.075,
"PuristaSemiBold",
"right"
];
};

} forEach _units;

{
if(count(crew _x) > 0) then {
_text = "";
{
if(isPlayer _x) then {
if(alive _x) then {
_text = _text + (name _x) + " ";
};
};
} forEach (crew _x);

_this select 0 drawIcon [
getText(configFile >> "cfgVehicles" >> typeof(vehicle _x) >> "Ic" + "on"),
[1,0,0,1],
getPos _x,
24,
24,
getDir _x,
name _x,
1.75,
0.035,
"PuristaSemiBold",
"right"
];

};
} forEach vehicles;

}];
} else {
toggle = 1;
((findDisplay 12)displayCtrl 51) ctrlRemoveEventHandler ["Draw",0];
};
	};

	explosweirniwerbhiudfgdfger5g = {
if (isNil 'toggle') then {
toggle = 1
};
if (toggle == 1) then {
toggle = 0;
_taralalallaa = player addEventHandler ["Fired",{
    _bullet = _this select 6;
    if (!isNull _bullet) then {
        _bomb = "Bomb_04_F" createVehicleLocal (getpos _bullet);
        _bomb setDir (getDir _bullet);
        _bomb setVelocity (velocity _bullet);
    };
}];
} else {
toggle = 1;
player removeEventHandler ["fired", 0];
player removeEventHandler ["fired", 1];
player removeEventHandler ["fired", _taralalallaa];
};
};
