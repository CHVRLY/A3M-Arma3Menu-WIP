StartProgress = false;

if (hasInterface) then {
    [] execVM "briefing.sqf"; //Charge le briefing
};

StartProgress = true;
[] spawn Scripts_fnc_adminMenuOpen;
