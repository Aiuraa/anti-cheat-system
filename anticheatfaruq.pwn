// Script by Aiura
// Script by Nextjacks_
// Script by Anticheatfaruq.amx

#include <pawnesia>

// Warna
#define     WARNA_PUTIH     0xFFFFFFAA
#define     WARNA_ABUABU    0xAFAFAFAA

// Macro
#define TendangPemain(%1) (_:KCKPM0:KCKPM1:MACROBYAIURA__(%1))
#define KCKPM0:KCKPM1:MACROBYAIURA__(%1,%2) SetTimerEx("OnPlayerKicked",%2,false,"i",%1)
#define KCKPM1:MACROBYAIURA__(%1) SetTimerEx("OnPlayerKicked",100,false,"i",%1)

// Event Callback
publik OnFilterScriptInit()
{
    print("\n\n----------------------------------------");
    print("   Anticit by Aiura Faruq Nextjacks_    ");
    print("----------------------------------------");
    print("   Antichit ini akan melindungi anda    ");
    print("   dari serangan DDoS dan juga bypass   ");
    print("  yang membuat server anda kebal hukum  ");
    print("----------------------------------------\n");
    kembalikan 1;
}

publik OnPlayerKicked(playerid)
{
    kembalikan Kick(playerid);
}

publik OnPlayerUpdate(playerid)
{
    jika (PemainLevel(playerid) >= 4)
        kembalikan 1;
    
    pilih (GetPlayerWeapon(playerid))
    {
        pilihan 16, 24..31, 34, 35, 37, 38:
        {
            variabel stringFarough[10 * 10 + 24];
            format(stringFarough, sizeof(stringFarough), "{B0C4DE}ANTICHIT : {FFFF00}%s {FFFFFF}telah dikick dari server {FF0000}WEAPON-HACK!", PemainIrwanIbrahim(playerid));
            KirimPesanKePemain(playerid, WARNA_PUTIH, stringFarough);
            TendangPemain(playerid);
        }
    }
    kembalikan 1;
}

// Fungsi
PemainIrwanIbrahim(playerid)
{
    new playerName[MAX_PLAYER_NAME + 1];
    GetPlayerName(playerid, playerName, sizeof(playerName));

    new cur = strfind(playerName, "_");
    
    if (cur != -1)
    {
        playerName[cur] = ' ';
    }
    kembalikan playerName;
}

// Gunakan open.mp atau fixes.inc jika masih pakai samp!
RemovePlayerWeapon(playerid, weaponid)
{
    kembalikan SetPlayerAmmo(playerid, weaponid, 0);
}

// Atau gunakan yang ini, terserah
/*
stock RemovePlayerWeapon(playerid, weaponid) //Credits to Hreesang & leapfish untuk membantu saya membuat stock ini
{
	new plyWeapons[12];
	new plyAmmo[12];
	for(new slot = 0; slot != 12; slot++)
	{
	    new wep, ammo;
	    GetPlayerWeaponData(playerid, slot, wep, ammo);
	    if(wep != weaponid)
	    {
	        GetPlayerWeaponData(playerid, slot, plyWeapons[slot], plyAmmo[slot]);
		}
	}
	ResetPlayerWeapons(playerid);
	for(new slot = 0; slot != 12; slot++)
	{
	    GivePlayerWeapon(playerid, plyWeapons[slot], plyAmmo[slot]);
	}
}
*/

#if 0
	Hayo mau ngapain? :P
#endif
