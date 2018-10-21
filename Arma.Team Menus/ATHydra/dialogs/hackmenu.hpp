/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class hackmenu {
   idd = 385300;
   name = "hackmenu";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
   };
   class controls
   {
       class BG : Life_RscText
       {
           idc = 2200;
           x = 0.248994 * safezoneW + safezoneX;
           y = 0.11302 * safezoneH + safezoneY;
           w = 0.524479 * safezoneW;
           h = 0.82181 * safezoneH;
           colorbackground[] = {0,0,0,1};
       };
       class RscButtonMenu_2401 : AT_RscButton88
       {
           idc = 2401;
           onbuttonclick = "endmission'memes';";
           text = "EndMisison";
           colorHover[] = {1,1,1,1};
           x = 0.639631 * safezoneW + safezoneX;
           y = 0.20234 * safezoneH + safezoneY;
           w = 0.127083 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class ColorBar : Life_RscBackground
       {
           idc = 1002;
           style = 512;
           shadow = 0;
           x = 0.248994 * safezoneW + safezoneX;
           y = 0.11302 * safezoneH + safezoneY;
           w = 0.524479 * safezoneW;
           h = 0.0340798 * safezoneH;
           colortext[] = {"0.02,0.518,1,1"};
           colorbackground[] = {0.945,0.937,1,1};
       };
       class RscButtonMenu0 : AT_RscButton88
       {
           idc = 1001;
           text = "Kill Selected Player";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.25008 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
           colorHover[] = {1,1,1,1};
       };
       class MiddelColorBar : Life_RscBackground
       {
           idc = 1023;
           style = 512;
           shadow = 0;
           x = 0.341703 * safezoneW + safezoneX;
           y = 0.214 * safezoneH + safezoneY;
           w = 0.00833333 * safezoneW;
           h = 0.653492 * safezoneH;
           colorbackground[] = {0.945,0.937,1,1};
       };
       class VestList : AT_RscButton88
       {
           idc = 665;
           text = "Vest List";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.343779513145083 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class Vlist0 : AT_RscButton88
       {
           idc = 1008;
           text = "Weapon List";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.25008 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class Cars : RscListBox
       {
           idc = 2222;
           x = 0.646354166666667 * safezoneW + safezoneX;
           y = 0.25008 * safezoneH + safezoneY;
           w = 0.120359833333333 * safezoneW;
           h = 0.60483723466407 * safezoneH;
           colortext[] = {0.02,0.518,1,1};
       };
       class Spawner : AT_RscButton88
       {
           idc = 7321;
           text = "Execute";
           x = 0.542694 * safezoneW + safezoneX;
           y = 0.87422 * safezoneH + safezoneY;
           w = 0.0541667 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class Executor : Life_RscEdit
       {
           idc = 420;
           x = 0.354181 * safezoneW + safezoneX;
           y = 0.87422 * safezoneH + safezoneY;
           w = 0.188021 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class WeaponSpawner : AT_RscButton88
       {
           idc = 1004;
           text = "Spawn Selected Item";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.539774995131451 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class Title : Life_RscStructuredText
       {
           idc = 10435400;
           text = "Arma.Team Hydra Menu";
           x = 0.248994 * safezoneW + safezoneX;
           y = 0.15394 * safezoneH + safezoneY;
           w = 0.136979 * safezoneW;
           h = 0.0392161 * safezoneH;
           colortext[] = {0.02,0.518,1,1};
       };
       class Vlist : AT_RscButton88
       {
           idc = 1009;
           text = "Vehicle List";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.280382901655307 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class UniformList : AT_RscButton88
       {
           idc = 661;
           text = "Uniform List";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.312319513145083 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class HeadList : AT_RscButton88
       {
           idc = 662;
           text = "HeadGear List";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.36998 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class Baglist : AT_RscButton88
       {
           idc = 663;
           text = "Backpack List";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.40584 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class GlassesList : AT_RscButton88
       {
           idc = 664;
           text = "Glasses List";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.44412 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class Itemlist : AT_RscButton88
       {
           idc = 666;
           text = "Item List";
           x = 0.5536315 * safezoneW + safezoneX;
           y = 0.471285803310613 * safezoneH + safezoneY;
           w = 0.0854167 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class RscButtonMenu00 : AT_RscButton88
       {
           idc = 1003;
           text = "GodMode";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.29012 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu000 : AT_RscButton88
       {
           idc = 1005;
           text = "MapTeleport";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.33082 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu0000 : AT_RscButton88
       {
           idc = 1006;
           text = "HealSelf";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.36998 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu00000 : AT_RscButton88
       {
           idc = 1007;
           text = "ClonePlayerGear";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.40584 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu000000 : AT_RscButton88
       {
           idc = 1010;
           text = "NoRecoil";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.44412 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu0000000 : AT_RscButton88
       {
           idc = 1011;
           text = "NoSway";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.48196 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu00000000 : AT_RscButton88
       {
           idc = 1012;
           text = "NoStamina";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.51914 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu000000000 : AT_RscButton88
       {
           idc = 1013;
           text = "AimbotYIKES";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.55676 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu0000000000 : AT_RscButton88
       {
           idc = 1014;
           text = "HealPlayer";
           x = 0.354181 * safezoneW + safezoneX;
           y = 0.25646 * safezoneH + safezoneY;
           w = 0.0791406 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu00000000000 : AT_RscButton88
       {
           idc = 1015;
           text = "CloneGearOnTarget";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.59284 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu000000000000 : AT_RscButton88
       {
           idc = 1016;
           text = "TeleportToTarget";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.6298 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu0000000000000 : AT_RscButton88
       {
           idc = 1017;
           text = "TeleportToMe";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.66984 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu00000000000000 : AT_RscButton88
       {
           idc = 1018;
           text = "CrashPlayerGame";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.7057 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu000000000000000 : AT_RscButton88
       {
           idc = 1019;
           text = "CrashEveryoneGame";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.75256 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class RscButtonMenu0000000000000000 : AT_RscButton88
       {
           idc = 1020;
           text = "StripTarget";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.78556 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class TrollPlayer : AT_RscButton88
       {
           idc = 1021;
           text = "GiveDeathWheel";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.82362 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class NoDieMorexd : AT_RscButton88
       {
           idc = 1022;
           text = "Name/DistanceView";
           x = 0.254666 * safezoneW + safezoneX;
           y = 0.214 * safezoneH + safezoneY;
           w = 0.0828125 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class NoDieMorexd0 : AT_RscButton88
       {
           idc = 231;
           text = "ReviveTarget";
           x = 0.354181 * safezoneW + safezoneX;
           y = 0.214 * safezoneH + safezoneY;
           w = 0.0786198 * safezoneW;
           h = 0.0392161 * safezoneH;
       };
       class Title0 : Life_RscStructuredText
       {
           idc = 1024;
           text = "Last Updated: July 6, 2018";
           x = 0.385944 * safezoneW + safezoneX;
           y = 0.15394 * safezoneH + safezoneY;
           w = 0.136979 * safezoneW;
           h = 0.0392161 * safezoneH;
           colortext[] = {0.02,0.518,1,1};
       };
       class Title00 : Life_RscStructuredText
       {
           idc = 100034;
           x = 0.537239666666667 * safezoneW + safezoneX;
           y = 0.15394 * safezoneH + safezoneY;
           w = 0.223697833333333 * safezoneW;
           h = 0.0392161 * safezoneH;
           colortext[] = {0.02,0.518,1,1};
       };
       class PlayerListbox : RscListBox
       {
           idc = 9110;
           x = 0.438541666666667 * safezoneW + safezoneX;
           y = 0.25008 * safezoneH + safezoneY;
           w = 0.112553833333333 * safezoneW;
           h = 0.600942395326193 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
