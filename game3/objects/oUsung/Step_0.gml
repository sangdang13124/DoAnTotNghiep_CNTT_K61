/// tạm dừng bản thân
if screen_pause() {exit;};




//menh lenh
var _wallCollisions = true;
var _getDamage = true ;

///trang thai
switch(state)
{
	
	
	
	
	
	
	
	/// trang thai ruot duoi
	case 0:	

///chuyển sang trạng thái chụp
var _camLeft = camera_get_view_x(view_camera[0]);
var _camRight = _camLeft + camera_get_view_width(view_camera[0]);
var _camTop = camera_get_view_y(view_camera[0]);
var _camBottom = _camTop + camera_get_view_height(view_camera[0]);
//chỉ thêm vào bộ đếm thời gian nếu trên màn hình (khi enemy khong co tren man hinh thi se khong ban nguoi choi)
if bbox_right > _camLeft && bbox_left < _camRight && bbox_bottom>_camTop && bbox_top< _camBottom
{
shootTimer++;
}

if shootTimer > cooldowmTime
{
	////đi đến trạng thái bắn
	state=1;
	///đặt lại bộ đếm thời gian để chụp cũng có thể sử dụng nó
	shootTimer=0;
}
    break;
	
////trạng thái tạm dừng và bắn
case 1:
#region
	if instance_exists(oPlayer)
{
dir = point_direction(x,y,oPlayer.x,oPlayer.y);
}
///đặt đúng tốc độ
spd=0;
///dừng hoạt hình
///đặt chỉ mục hình ảnh theo cách thủ công
image_index=5;

// ban 1 vien dan 
shootTimer++;
//tao vien dan
if shootTimer==1
{
	bulletInst = instance_create_depth(x+bulletXoff*face,y,depth+bulletYoff,oEnemybullet39);
}

///giữ viên đạn trong tay quái vật
if shootTimer<= windupTimer && instance_exists(bulletInst)
{
	bulletInst.x = x + bulletXoff*face;
	bulletInst.y = y + bulletYoff;
}

///bắn viên đạn sau khi thời gian hen gio kết thúc
if shootTimer == windupTimer && instance_exists(bulletInst)
{
	bulletInst.state=1;
}

///phục hồi và quay lại đuổi theo người chơi
if shootTimer > windupTimer + recoverTimer
{
	// duoi theo nguoi choi
	state = 0;
	///đặt lại bộ đếm thời gian để chúng tôi có thể sử dụng lại
	shootTimer=0;
}
#endregion
break;
}












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
///quai vat va cham voi nhau
if place_meeting(x + xspd , y, oEnemyParent) {xspd=0;}
if place_meeting(x , y + yspd , oEnemyParent) {yspd=0;}
}

/// di chuyen
 x += xspd;
 y += yspd;
 ///đặt độ sâu
 depth=-y;

// nhận sát thương và chết
if _getDamage == true
{
event_inherited();
}
