
if screen_pause(){exit;}

///chuyen dong len xuong cua sung
floatDir+=floatSpd;
y=ystart+dsin(floatDir)*2;





///người chơi đã có một trong những vu khi này chưa
var _playerHas=false;
var _weaponPos=0;
var _size = array_length(global.PlayerWeapons);
for(var i = 0; i < _size ;i++)
{
	///kiểm tra xem vũ khí đã có trong danh sách vũ khí
	if weapon == global.PlayerWeapons[i]
{
	///xoa
	//instance_destroy();
	_weaponPos=i;
	_playerHas=true;
	
	i+=99;
}
}

///thêm vũ khí vào danh sách người chơi
if place_meeting(x,y,obj_player)
{
	
if !_playerHas 
{
/// them vao danh sach vu khi	
array_push(global.PlayerWeapons, weapon);
array_push(global.PlayerAmmo,0);
}

// them so dan
global.PlayerAmmo[array_length(global.PlayerAmmo)-1]+=ammoAdd;

///đặt làm vũ khí của người chơi
obj_player.selectedWeapon = array_length(global.PlayerWeapons)-1;



///xoa khi nhat vu khi
instance_destroy();
}