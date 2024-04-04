
depth=100;
//weapon style




floatDir=0;
floatSpd=6;
ammoAdd=10;


///đặt vũ khí dựa trên chỉ số hình ảnh trong trình chỉnh sửa phòng

if image_index == 0
{
weapon= global.WeaponList.black;
}
if image_index == 1
{
	weapon= global.WeaponList.yellow;
	ammoAdd=1000;
}
if image_index == 2
{
	weapon= global.WeaponList.red;
	ammoAdd=1000;
}
if image_index == 3
{
	weapon= global.WeaponList.bazoka;
	ammoAdd=1000;
}
if image_index == 4
{
	weapon= global.WeaponList.suriken;
	ammoAdd=1000;
}
if image_index == 5
{
	weapon= global.WeaponList.BoomHa;
	ammoAdd=1000;

}
// dat dung trang thai

sprite_index=weapon.pickupSpirite;
image_index = 0;







/*var _size = array_length(global.PlayerWeapons);
for(var i=0 ; i< _size;i++)
if weapon == global.PlayerWeapons[i]
{
	instance_destroy();
}



