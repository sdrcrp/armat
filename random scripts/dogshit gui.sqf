[] spawn {
    waitUntil {sleep 0.0000001; !isNull (findDisplay 46)};
    wewewewewewewewownwewewewewe1 = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 210) then {
    [] spawn wewewewewewewewownwewewewewe2;
    };"];

 wewewewewewewewownwewewewewe2 = {

  _display = findDisplay 46 createDisplay "RscDisplayEmpty";


  _wewewewewewewewewewewewe = _display ctrlCreate ["IGUIBack", -1];
  _wewewewewewewewewewewewe ctrlSetPosition [1, 1, 0.7375, 0.5];
  _wewewewewewewewewewewewe ctrlSetBackgroundColor [0.403922,0.545098,0.607843,1];
  _wewewewewewewewewewewewe ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "       Warowns GUI Menu v1.0.0";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0, 0.7125, 0.08];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1.35, 0.08, 0.05, 0.36];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "        Note : This Menu was created  for Public Use by Warown";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.44, 0.725, 0.06];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "      Player Scripts";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.08, 0.35, 0.06];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "   Some Nice Stuff";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1.4, 0.08, 0.3125, 0.06];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "    God Mode";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call godmode_1;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.14, 0.35, 0.06];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "    Speed Hack";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call speedhack_2;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.2, 0.35, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "   Unlimmited Ammo";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call unlimammo_3;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.24, 0.35, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "   No Recoil";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call norecoil_4;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.28, 0.35, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "    Visuals";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.32, 0.35, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "   Name ESP";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call namesp_5;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.36, 0.35, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "    BoxESP";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call boxesp_6;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1, 0.4, 0.35, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "   Script Executor";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call executer_7;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1.4, 0.14, 0.3125, 0.06];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "   Variable Scanner";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call variable_8;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1.4, 0.2, 0.3125, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "    Bombing Script";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1.4, 0.24, 0.3125, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "    Fuck Em Up";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call bumbum_9;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1.4, 0.28, 0.3125, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "   News Banner";
  _chrisisgaychrisisgaychrisisgaylikepeeky buttonSetAction "call news_10;";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0.5,0.5,0.5,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1.4, 0.32, 0.3125, 0.04];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;

  _chrisisgaychrisisgaychrisisgaylikepeeky = _display ctrlCreate ["RscButton", -1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetText "  MPGH.NET";
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetBackgroundColor [0,0,1,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetTextColor [0,0,0,1];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlSetPosition [1.4, 0.36, 0.3125, 0.08];
  _chrisisgaychrisisgaychrisisgaylikepeeky ctrlCommit 0;


  godmode_1 = {
  player allowDamage false;
  hint "God Mode ON";

  };

  speedhack_2 = {
  player setAnimSpeedCoef 10;
  hint "Speed Hack ON";

  };

  unlimammo_3 = {
  player addEventHandler ["Fired", {
            (_this select 0) setVehicleAmmo 1;
        }];
  };

  norecoil_4 = {
  player setUnitRecoilCoefficient 0;
  hint "No Recoil ON";
  };

  namesp_5 = ["Open",true ] spawn
{
_a = "addMission";
    _a = _a + "EventHandler [""Draw3D"",{";
    _a = _a + "
     _ordered = [];
     {
      if(player distance _x <= 1000) then {
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
};

  boxesp_6 = {};

  executer_7 = {
  private ["_key","_shift","_ctrl","_alt"];
    if (dialog) exitWith {false};

    _key = _this select 1;
    _shift = _this select 2;
    _ctrl = _this select 3;
    _alt = _this select 4;

    if(_key == 59 && _shift && !_ctrl && !_alt) then {
        closeDialog 0;
        [] spawn xwarownripo;
    };
    false
};

[] spawn
{
    waitUntil {sleep 0.5; !isNull (findDisplay 46)};
    hint "Executor Loaded";
    []spawn xwarownripo;
    (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 210 )call xkefediepapa"];

}; xwarownripo =
{
    hint "WarownSD";
    _display = {findDisplay 24};
    createDialog "RscDisplayChat";

    warownplanstoputhistongueinsideofchris_Function = {
        _warownplanstoputhistongueinsideofchris_textField = "";
        _warownplanstoputhistongueinsideofchris_textField = ctrlText warownplanstoputhistongueinsideofchris_TextBox;
        for "_i" from 1 to 1 do compile _warownplanstoputhistongueinsideofchris_textField;
    };
    _warownplanstoputhistongueinsideofchris_GuiBack = (call _display) ctrlCreate ["IGUIBack", 2200];
    _warownplanstoputhistongueinsideofchris_GuiBack ctrlSetPosition [0.417492 * safezoneW + safezoneX,0.224899 * safezoneH + safezoneY,0.149531 * safezoneW,0.132 * safezoneH];
    _warownplanstoputhistongueinsideofchris_GuiBack ctrlSetBackgroundColor [0.22,0.208,0.208,1];
    _warownplanstoputhistongueinsideofchris_GuiBack ctrlCommit 0;
    _warownplanstoputhistongueinsideofchris_Button = (call _display) ctrlCreate ["RscButton", 1600];
    _warownplanstoputhistongueinsideofchris_Button ctrlSetText "Execute";
    _warownplanstoputhistongueinsideofchris_Button ctrlSetPosition [0.417492 * safezoneW + safezoneX, 0.224899 * safezoneH + safezoneY, 0.149546 * safezoneW, 0.0330121 * safezoneH];
    _warownplanstoputhistongueinsideofchris_Button ctrlSetTextColor [1,0.816,0,1];
    _warownplanstoputhistongueinsideofchris_Button ctrlCommit 0;
    warownplanstoputhistongueinsideofchris_TextBox = (call _display) ctrlCreate ["RscEdit", 1400];
    warownplanstoputhistongueinsideofchris_TextBox ctrlSetPosition [0.422648 * safezoneW + safezoneX, 0.279919 * safezoneH + safezoneY, 0.139233 * safezoneW, 0.0330121 * safezoneH];
 warownplanstoputhistongueinsideofchris_TextBox ctrlCommit 0;
    _warownplanstoputhistongueinsideofchris_ButtonTwo = (call _display) ctrlCreate ["RscButton", 1601];
    _warownplanstoputhistongueinsideofchris_ButtonTwo ctrlSetText "WarownScriptExecuter";
    _warownplanstoputhistongueinsideofchris_ButtonTwo ctrlSetPosition [0.422648 * safezoneW + safezoneX, 0.312931 * safezoneH + safezoneY, 0.139233 * safezoneW, 0.0330121 * safezoneH];
    _warownplanstoputhistongueinsideofchris_ButtonTwo ctrlSetTextColor [1,0.816,0,1];
    _warownplanstoputhistongueinsideofchris_ButtonTwo buttonSetAction "[]spawn warownplanstoputhistongueinsideofchris_Function;";
    _warownplanstoputhistongueinsideofchris_ButtonTwo ctrlCommit 0;
};

  variable_8 = {
  player addAction ["Variable Scanner",{_Dialog = [  [1100,"",[1,"WarownisAwesome",[0.371093 * safezoneW + safezoneX,0.225 * safezoneH + safezoneY,0.257813 * safezoneW,0.022 * safezoneH],[1,1,1,1],[0.769,0.102,0.102,1],[-1,-1,-1,-1],",-1"],[]], [2200,"",[1,"",[0.371095 * safezoneW + safezoneX,0.247 * safezoneH + safezoneY,0.257813 * safezoneW,0.396 * safezoneH],[-1,-1,-1,-1],[0,0,0,0.5],[-1,-1,-1,-1],",-1"],[]],  [1402,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.769,0.102,0.102,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],    [1500,"",[1,"",[0.37625 * safezoneW + safezoneX,0.39 * safezoneH + safezoneY,0.2475 * safezoneW,0.154 * safezoneH],[0.769,0.102,0.102,1],[-1,-1,-1,-1],[0,0,0,0],",-1"],[]],    [1400,"",[1,"//Current Variable Value",[0.37625 * safezoneW + safezoneX,0.258 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.769,0.102,0.102,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],   [2100,"",[1,"",[0.37625 * safezoneW + safezoneX,0.302 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[1,1,1,1],[0,0,0,0],[0,0,0,0],",-1"],[]],   [1600,"",[1,"Search for this value",[0.37625 * safezoneW + safezoneX,0.346 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.769,0.102,0.102,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]],  [1601,"",[1,"Edit Value",[0.37625 * safezoneW + safezoneX,0.599 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.769,0.102,0.102,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]], [1401,"",[1,"//New Variable Value",[0.37625 * safezoneW + safezoneX,0.555 * safezoneH + safezoneY,0.2475 * safezoneW,0.033 * safezoneH],[0.769,0.102,0.102,1],[-1,-1,-1,-1],[-1,-1,-1,-1],",-1"],[]]];(finddisplay 46) createDisplay "RscDisplayChat";{ private["_ctrl","_buttonaction","_text","_secondarray","_activecolor","_textcolor","_backcolor","_pos","_idc","_classname","_ctrltype"];    _idc = _x select 0; _classname = _x select 1;   _secondarray = (_x select 2);   _text = _secondarray select 1;  _pos = _secondarray select 2;   _textcolor = _secondarray select 3; _backcolor = _secondarray select 4; _activecolor = _secondarray select 5;   _buttonaction = _secondarray select 6;  _ctrltype = (format["%1",_idc] select [0,2]);   _ctrltype = call compile _ctrltype; _ctrltype = switch(_ctrltype) do {      case 11: {"RscStructuredText"};     case 12: {"RscPicture"};        case 14: {"RscEdit"};       case 15: {"RscListBox"};        case 16: {"RscButton"};     case 21: {"RscCombo"};      case 22: {"RscBackground"}; };  _ctrl = (finddisplay 24) ctrlCreate [_ctrltype, _idc];  _ctrl ctrlSetPosition _pos; if(_ctrltype != "RscTree") then {       _ctrl ctrlSetTextColor _textcolor;      _ctrl ctrlSetBackgroundColor _backcolor;        _ctrl ctrlSetActiveColor _activecolor;      _ctrl ctrlSetText _text;    };  if!(_buttonaction == "") then {     _ctrl buttonsetAction _buttonaction;    };  _ctrl ctrlCommit 0.3;   player setVariable ["MLRN_ALLCTRLS",(player getVariable "MLRN_ALLCTRLS") + [_ctrl]];}forEach _Dialog;((finddisplay 24) displayCtrl 2100) lbAdd "STRING"; ((finddisplay 24) displayCtrl 2100) lbAdd "CODE"; ((finddisplay 24) displayCtrl 2100) lbAdd "SCALAR"; ((finddisplay 24) displayCtrl 2100) lbAdd "BOOLEAN"; ((finddisplay 24) displayCtrl 2100) lbSetCurSel 0;((finddisplay 24) displayCtrl 1600) buttonSetAction ' if(ctrlText((finddisplay 24) displayCtrl 1400) == "") exitWith {hint "You have to enter a value"};  private["_vars"];   _vars = []; {       _type = ((finddisplay 24) displayCtrl 2100) lbText lbCurSel ((finddisplay 24) displayCtrl 2100);        _value = ctrlText((finddisplay 24) displayCtrl 1400);           if(typeName(missionNamespace getVariable _x) == _type) then {if(format["%1",(missionNamespace getVariable _x)] == _value) then {_vars pushBack [_x,missionNamespace getVariable _x]}};  }   forEach allVariables missionNamespace;  if(count _vars == 0) exitWith {hint "[FAILED] No Variables with this value..."};    lbClear ((finddisplay 24) displayCtrl 1500);    {       ((finddisplay 24) displayCtrl 1500) lbAdd format["%1 | %2",_x select 0,format["%1",_x select 1]];       ((finddisplay 24) displayCtrl 1500) lbSetData [(lbSize((finddisplay 24) displayCtrl 1500))-1,_x select 0];  }   forEach _vars;  hint "[SUCCESS] Variables found...";    ((finddisplay 24) displayCtrl 1500) lbSetCurSel 0;';((finddisplay 24) displayCtrl 1601) buttonSetAction '   _newvalue = ctrlText((finddisplay 24) displayCtrl 1401);    _currvar = ((finddisplay 24) displayCtrl 1500) lbData lbCurSel ((finddisplay 24) displayCtrl 1500); call compile format["%1 = %2;",_currvar,_newvalue]; hint "[SUCCESS] Changed Variable Value";    (finddisplay 24) closeDisplay 0;'}];
  hint "Variable scanner On";
  };

  bumbum_9 = {
  systemChat "dont want to add this use the executer god dammit";
  };

  news_10 = {
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
 };
};
