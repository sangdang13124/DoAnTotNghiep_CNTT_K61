// lay chieu rong va chieu cao
var _camW = camera_get_view_width(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);

///tập trung vào người chơi
if instance_exists(obj_player)
{
	x= obj_player.x -_camW/2;
	y= obj_player.centerY  -_camH/2;
}

	

///camera shaking
//if global.swapKeyPressed{
//screen_shake(4);
//};
//x shake
if xShakeAmount > 0
{
	xShakeDir += xShakeDirSpd;
	xShakeAmount -= xShakeAmountSpd;
}else{
	xShakeAmount=0;
	xShakeDir =0;
}
xShake=dsin(xShakeDir)*xShakeAmount;
//thêm vào rung máy ảnh


//y shake
if yShakeAmount > 0
{
	yShakeDir += yShakeDirSpd;
	yShakeAmount -= yShakeAmountSpd;
}else{
	yShakeAmount=0;
	yShakeDir =0;
}
yShake=dsin(yShakeDir)*yShakeAmount;
//thêm vào rung máy ảnh
x+=xShake;
y+=yShake;




///kẹp vị trí camera vào viền phòng
x= clamp(x,0,room_width-_camW);
y= clamp(y,0,room_height-_camH);
///đặt vị trí máy ảnh
camera_set_view_pos(view_camera[0],x,y);

