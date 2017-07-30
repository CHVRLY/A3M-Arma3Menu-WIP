/*
  File: fn_adminMenuPuissance.sqf
  Author: S.M.Z
  Usage: You can use and modify this script, but please don"t remove this banner.
*/

player removeAction destructTheTarget;
player removeAction deleteTheTarget;
player removeAction openArsenal;
player removeAction healSelf;
player removeAction invinsibleChoose;
player removeAction puissanceChoose;
player removeAction CloseAdminMenu;
player removeAction spacer2;
player removeAction spacer1;
player removeAction menuName;
player removeAction console;
player removeAction armeChoose;
player removeAction vehiculeChoose;
player removeAction lifeChoose;

puissanceName = player addAction ["<t color='#5386CE' size='1.5'>Puissance<t>", {}];

spacerPuissance = player addAction ["<t size='0.5'> </t>",{}];

puissanceOn = player addAction ["<t>> Activer<t>", {
  hint parseText format ["<t size='1.5' color='#5386CE'>ADMIN MENU</t><br/><br/><t>• Puissance</t> [<t color='#59CE53'> ACTIVÉE </t><t>]</t>"];
  player enableFatigue false; player setUnitRecoilCoefficient 0; player setAnimSpeedCoef 1.25; [] spawn Scripts_fnc_adminMenu;}];


puissanceOff = player addAction ["<t>> Desactiver<t>", {
  hint parseText format ["<t size='1.5' color='#5386CE'>ADMIN MENU</t><br/><br/><t>• Puissance</t> [<t color='#CE5353'> DESACTIVÉE </t><t>]</t>"];
  player enableFatigue true; player setUnitRecoilCoefficient 1; player setAnimSpeedCoef 1; [] spawn Scripts_fnc_adminMenu;}];
