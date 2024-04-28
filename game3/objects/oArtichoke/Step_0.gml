// dung man hinh
if screen_pause() {exit;};

///chuyen dong len xuong cua trai tim
floatDir+=floatSpd;
y=ystart+dsin(floatDir)*2;



if place_meeting(x,y,oPlayer)
{
	// hoi mau
	oPlayer.hp+=heal;
	///bien mat khi nguoi choi an mau
	instance_destroy();
}
