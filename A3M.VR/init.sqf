StartProgress = false;

if (hasInterface) then {
    [] execVM "briefing.sqf"; //Charge le briefing
};

StartProgress = true;
[] spawn A3M_fnc_adminMenuOpen;
