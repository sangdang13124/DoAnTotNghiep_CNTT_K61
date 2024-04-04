/// cac mau vu khi
function create_waepon(_sprite = sBlack,_weaponLength = 0,_bulletObj = oBlackbuller,_cooldowm = 1,_bulletNum = 1,_spread = 0,_pickupSpirte=sBlackPickup,_ammo=0)  constructor
{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldowm = _cooldowm;
	bulletNum=_bulletNum;
	spread = _spread;
	pickupSpirite= _pickupSpirte;
	ammo=_ammo;
}
///người chơi là nhà phát minh vũ khí


global.PlayerWeapons = array_create(0);
global.PlayerAmmo = array_create(0);

global.WeaponList =
{


     black : new create_waepon(
	
	 sBlack,
	 sprite_get_bbox_right(sBlack) - sprite_get_xoffset(sBlack),
	 oBlackbuller,
	 30,
	 1,
	 0,
	 sBlackPickup
	),
	
	yellow : new create_waepon(
	
	 sBlackYellow,
     sprite_get_bbox_right(sBlackYellow) + sprite_get_xoffset(sBlackYellow) ,
	 oYellowbullet,
	 10,
	 2,
	 0,
	 sBlackYellowPickup
	 	),
		
	 red : new create_waepon(
	 sRed,
     sprite_get_bbox_right(sRed) + sprite_get_xoffset(sRed) ,
	 oRedbullet,
	 50,
	 7,
	 60,
     sRedpickup
	),
	
	 bazoka : new create_waepon(
	 sBazoka,
     sprite_get_bbox_right(sBazoka) - sprite_get_xoffset(sBazoka) ,
	 oBazoka,
	 70,
	 1,
	 0,
     sBazokaPickup
	),
	suriken : new create_waepon(
	 sSuriken,
     sprite_get_bbox_right(sSuriken) - sprite_get_xoffset(sSuriken) ,
	 oSurikenBullet,
	 15,
	 1,
	 0,
     sSurikenPickup
	),
	BoomHa : new create_waepon(
	 sBoomHa,
     sprite_get_bbox_right(sSuriken) - sprite_get_xoffset(sSuriken) ,
	 oBoomHaBullet,
	 40,
	 1,
	 0,
     sBoomHaPickup
	),
}