waitUntil {!isNull player};
systemChat "aim assist on";
player addEventHandler ["Fired", {
  {
      player reveal _x;
  } forEach allPlayers;
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
}];
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