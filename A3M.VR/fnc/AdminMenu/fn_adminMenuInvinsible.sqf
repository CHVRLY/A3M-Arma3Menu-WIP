/*
  File: fn_adminMenuInvinsible.sqf
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

invinsibleName = player addAction ["<t color='#5386CE' size='1.5'>Invinsibilité<t>", {}];

spacerInvinsible = player addAction ["<t size='0.5'> </t>",{}];

invinsibleOn = player addAction ["<t>> Activer<t>", {
  hint parseText format ["<t size='1.5' color='#5386CE'>Arma 3 Menu</t><br/><br/><t>• Invinsibilité</t> [<t color='#59CE53'> ACTIVÉE </t><t>]</t>"];
  player allowDamage false; [] spawn Scripts_fnc_adminMenu;}];


invinsibleOff = player addAction ["<t>> Desactiver<t>", {
  hint parseText format ["<t size='1.5' color='#5386CE'>Arma 3 Menu</t><br/><br/><t>• Invinsibilité</t> [<t color='#CE5353'> DESACTIVÉE </t><t>]</t>"];
  player allowDamage true; [] spawn Scripts_fnc_adminMenu;}];
