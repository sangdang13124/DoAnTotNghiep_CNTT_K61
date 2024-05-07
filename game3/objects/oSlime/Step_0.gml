

if screen_pause() {exit;};


//menh lenh
var _wallCollisions = true;
var _getDamage = true ;

///trang thai
switch(state)
{
	///sinh ra từ lăng mộ
	case -1:
	///mờ dần 
	if image_alpha <1
	{
		///không bước đi trong khi mờ dần 
		spd=0;
		image_alpha += fadeSpd;
	}
	/// di ra ngoai
	_wallCollisions=false;
	_getDamage=false;
	
	
	
	
	
	
	
	
	/// trang thai ruot duoi
	case 0:
	
	if instance_exists(obj_player)
{
dir = point_direction(x,y,obj_player.x,obj_player.y);
}
////đặt đúng tốc độ
spd = chaseSpd;

///chuyển sang trạng thái chụp




    break;
	
////trạng thái tạm dừng và bắn
case 1:
#region
	if instance_exists(obj_player)
{
dir = point_direction(x,y,obj_player.x,obj_player.y);
}
///đặt đúng tốc độ
spd=0;
///dừng hoạt hình
///đặt chỉ mục hình ảnh theo cách thủ công
image_index=0;

// ban 1 vien dan 


#endregion
break;
}



//đuổi theo người chơi


///nhận được tốc độ
xspd = lengthdir_x(spd  ,dir);
yspd = lengthdir_y(spd ,dir);

/// chuyen doi mat theo huong nhin

if dir>90 && dir<270
{
	face=-1;
}else { 
	face =1;
}



///va cham
/// va cham voi tuong 
if _wallCollisions == true
{
	
if place_meeting(x + xspd , y, oWall) {xspd = 0;}
if place_meeting(x , y + yspd , oWall) {yspd = 0;}

		check_for_playerSlime();
	
//check_for_playerSlime()


///quai vat va cham voi nhau
if place_meeting(x + xspd , y, oEnemyParent) {xspd=0;}
if place_meeting(x , y + yspd , oEnemyParent) {yspd=0;}
}


/// di chuyen
 //x += xspd;
// y += yspd;
 ///đặt độ sâu
 depth=-y;

// nhận sát thương và chết
if _getDamage == true
{
event_inherited();
}
