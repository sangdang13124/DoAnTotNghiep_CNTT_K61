
///nhận đầu vào
rightKey = global.rightKey;
leftKey = global.leftKey;
upKey = global.upKey;
downKey = global.downKey;
shootKey= global.shootKey;
swapKeyPressed=global.swapKeyPressed;
startKeyPressed=global.startKeyPressed;




///menu dung man hinh
if startKeyPressed
{
	if !instance_exists(oPauseMenu)
	{
		instance_create_depth(0,0,0,oPauseMenu);
	}else{
		instance_destroy(oPauseMenu);
	}	
}
//cap nhat hinh anh cho phong



//dung man hinh
if screen_pause() {exit;};

///chuyển động của người chơi

///nhận thiệt hại
if get_damaged(oDamagePlayer,true)
{
	instance_create_depth(0,0,0,oHitCreen);
	///man hinh dung lai 1 khong thoi gian nho khi ban dan
create_screen_pause(25);
//rung  man hinh
screen_shake(4);
}


///chet / thua game
if hp<=0 
{
	//game over
	instance_create_depth(0,0,-10000,oGamerOverScreen);

	create_animated_vfx(oAnimatedVFX,x,y,0,0);
	//ban than tieu diet
	instance_destroy();
	
}
#region

var _horizkey = rightKey - leftKey;
var _vertKey = downKey - upKey;
moveDir = point_direction(0,0, _horizkey,_vertKey);

// them x y 2 bien toa do
var _spd = 0;
var _inputLevel = point_distance(0,0, _horizkey, _vertKey);
_inputLevel = clamp(_inputLevel,0,1);
_spd = moveSpd * _inputLevel;
xspd = lengthdir_x(_spd, moveDir);
yspd = lengthdir_y(_spd, moveDir);
///va cham
if place_meeting(x+xspd,y,oWall){
	xspd=0;
}
if place_meeting(x,y+yspd,oWall){
	yspd=0;
}

///di chuyển người chơi
x += xspd;
y += yspd;
//depth
depth=-bbox_bottom;
#endregion

///trao đổi vũ khí



//sprite control
#region
///player aiming
centerY = y + centerYOffset;
aimDir=point_direction(x, centerY,mouse_x,mouse_y);
///đảm bảo người chơi đang đi đúng hướng
face=round(aimDir/90);
if face == 4 { face = 0; };
///animate
if xspd == 0 && yspd == 0
{
	image_index = 0;
}

///set the player sprite
mask_index=sprite[3]
sprite_index = sprite[face];
#endregion
#region
var _playerWeapons = global.PlayerWeapons;
if swapKeyPressed
{
	///thay đổi lựa chọn và trao đổi vòng
	selectedWeapon++;
	if selectedWeapon >= array_length( _playerWeapons ) { selectedWeapon=0; };

}
	///đặt vũ khí mới
	weapon = _playerWeapons[selectedWeapon];

#endregion
///shoot the weapon
if shootTimer>0{shootTimer--;};
if shootKey && shootTimer<=0 && (global.PlayerAmmo[selectedWeapon]>0||weapon==global.WeaponList.black)
{
	//tru di so dan
	if weapon  !=global.WeaponList.black
	{
	global.PlayerAmmo[selectedWeapon]--;
	}
	//lap lai
	shootTimer=weapon.cooldowm;
	
	///rung man hinh khi ban
	screen_shake(1);
	
	//them dan va thay doi huong
	var _xOffset = lengthdir_x(weapon.length+weaponOffsetDist , aimDir );
	var _yOffset = lengthdir_y(weapon.length+weaponOffsetDist , aimDir );
	
	var _spread = weapon.spread;
	var _spreadDiv = _spread /(max(weapon.bulletNum-1,1));
	
	
	var _weaponTipX = x +_xOffset;
	var _weaponTipY = centerY+_yOffset;
	
	/// them hieu ung flash o dau sung
	create_animated_vfx(sPlash,_weaponTipX,_weaponTipY,depth-10,aimDir);
	audio_play_sound(Sound1,10,false);
		 ///tạo đúng số lượng đạn
	 for(var i=0;  i < weapon.bulletNum;i++){

	
	var _bulletInst = instance_create_depth(_weaponTipX+i*3 , _weaponTipY ,depth-100,weapon.bulletObj);
	
	
	
	with (_bulletInst)
	{
		dir=other.aimDir - _spread / 2 + _spreadDiv*i;
	}
}


}