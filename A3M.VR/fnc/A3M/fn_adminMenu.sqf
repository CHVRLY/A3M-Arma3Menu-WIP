/*
  File: fn_adminMenu.sqf
  Author: S.M.Z
  Usage: You can use and modify this script, but please don"t remove this banner.
*/

// removing the 'open menu' action
player removeAction adminMenu;
player removeAction spacer2;
player removeAction spacer1;
player removeAction menuName;
player removeAction invinsibleOn;
player removeAction invinsibleOff;
player removeAction invinsibleName;
player removeAction spacerInvinsible;
player removeAction puissanceOn;
player removeAction puissanceOff;
player removeAction puissanceName;
player removeAction spacerPuissance;

// adding commands
menuName = player addAction ["<t color='#5386CE' size='1.5' shadow='false'>    • Arma 3 Menu •<t>", {hint parseText Format["<t size='1.3' color='#5386CE'>Arma 3 Menu</t><br/><br/><t>Author: </t><t color='#59CE53'>S.M.Z</t><br/><t>version: </t><t color='#59CE53'>0.1</t>"]}];

spacer1 = player addAction ["<t size='0.5'> </t>",{}];

destructTheTarget = player addAction ["<t>> Détruire la cible<t>", {cursorTarget setDamage 1; hint parseText format ["<t size='1.5' color='#5386CE'>Arma 3 Menu</t><br/><br/><t>La cible a été détruite.</t> "]}];
deleteTheTarget = player addAction ["<t>> Supprimer la cible<t>", {deleteVehicle cursorTarget; hint parseText format ["<t size='1.5' color='#5386CE'>Arma 3 Menu</t><br/><br/><t>La cible a été supprimée.</t> "]}];
openArsenal = player addAction ["<t>> Ouvrir l'arsenal<t>", {["Open",true ] spawn BIS_fnc_arsenal; hint parseText format ["<t size='1.5' color='#5386CE'>Arma 3 Menu</t><br/><br/><t>Vous avez ouvert l'arsenal.</t> "]}];
healSelf = player addAction ["<t>> Se soigner<t>", {player setDamage 0; hint parseText format ["<t size='1.5' color='#5386CE'>Arma 3 Menu</t><br/><br/><t>Vous avez été soigné.</t> "];}];
console = player addAction ["<t>> Ouvrir la console<t>", {(finddisplay 46) createdisplay 'RscDisplayDebugPublic'; hint parseText format ["<t size='1.5' color='#5386CE'>Arma 3 Menu</t><br/><br/><t>Vous avez ouvert la console.</t> "]}];
invinsibleChoose = player addAction ["<t color='#DFE542'>> Menu Invinsibilité<t>", A3M_fnc_adminMenuInvinsible];
puissanceChoose = player addAction ["<t color='#DFE542'>> Menu Puissance<t>", A3M_fnc_adminMenuPuissance];
armeChoose = player addAction ["<t color='#DFE542'>> Menu Arme<t>", A3M_fnc_adminMenuArme];
vehiculeChoose = player addAction ["<t color='#DFE542'>> Menu Vehicule<t>", A3M_fnc_adminMenuVehicule];
lifeChoose = player addAction ["<t color='#DFE542'>> Menu Life<t>", A3M_fnc_adminMenuLife];

spacer2 = player addAction ["<t size='0.5'> </t>",{}];

// close the menu
CloseAdminMenu = player addAction ["<t color='#5386CE' size='1.5' shadow='false'>   • Fermer le menu •<t>", A3M_fnc_adminMenuOpen];
