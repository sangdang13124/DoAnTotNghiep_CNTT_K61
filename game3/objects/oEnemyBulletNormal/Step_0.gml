// dung
if screen_pause() {exit;};

///
switch( state)
{
	 case 0:
	 ///trạng thá đợi kẻ thù bắn 
	 if instance_exists(oPlayer)
	 {
		 dir = point_direction(x,y,oPlayer.x,oPlayer.y);
	 }
	 
	 //đặt độ sâu để làm cho bản thân tôi rõ hơn
	 depth=-y-50 ;
  
	 break;
	 ///ban 
	 case 1:
	 
	 xspd = lengthdir_x(spd  , dir);
	 yspd = lengthdir_y(spd  , dir);
	 x += xspd;
	 y += yspd;
	 
	  //cap nhat do sau
	  depth =-y;
	 break;
	 
}
/// xoa
/// gioi han phong
var _pad = 16;
if bbox_right < -_pad || bbox_left > room_width + _pad || bbox_bottom < - _pad || bbox_top > room_height + _pad
{
	destroy = true;
}


///va chạm người chơi
if hitConfirm ==true && playerDestroy == true {destroy=true;};

//phá hủy chính mình
if destroy == true {instance_destroy();};

/// va cham voi tuong
if place_meeting(x,y, oSolidwall){destroy=true;};
