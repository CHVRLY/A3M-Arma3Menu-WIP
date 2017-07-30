/*
  File: fn_adminMenuOpen.sqf
  Author: S.M.Z
  Usage: You can use and modify this script, but please don"t remove this banner.
*/

player removeAction destructTheTarget;
player removeAction deleteTheTarget;
player removeAction CloseAdminMenu;
player removeAction openArsenal;
player removeAction menuName;
player removeAction spacer1;
player removeAction spacer2;
player removeAction healSelf;
player removeAction invinsibleChoose;
player removeAction puissanceChoose;
player removeAction invinsibleOn;
player removeAction invinsibleOff;
player removeAction puissanceOn;
player removeAction puissanceOff;
player removeAction console;
player removeAction armeChoose;
player removeAction vehiculeChoose;
player removeAction lifeChoose;

AdminMenu = player addAction ["<t color='#5386CE' size='1.2'>• Ouvrir le Menu •<t>", Scripts_fnc_adminMenu];
