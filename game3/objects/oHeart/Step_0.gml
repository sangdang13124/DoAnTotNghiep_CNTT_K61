// dung man hinh
if screen_pause() {exit;};

///chuyen dong len xuong cua trai tim
floatDir+=floatSpd;
y=ystart+dsin(floatDir)*5;



if place_meeting(x,y,obj_player)
{
	// hoi mau
	obj_player.hp+=heal;
	///bien mat khi nguoi choi an mau
	instance_destroy();
}
