_lifecash = {
    _unit = {
        systemchat("Y" + "ou mu" + "st b" + "e i" + "n Al" + "tis Lif" + "e t" + "o us" + "e th" + "is f" + "un" + "ction");
    };
    _fnc = missionNamespace getVariable["li" + "fefnc" + "receive" + "Money", _unit];
    [player, str(10000 + floor(random(200000))), vehicles select 0] call _fnc;
    systemchat("Ca" + "sh ad" + "ded");
};