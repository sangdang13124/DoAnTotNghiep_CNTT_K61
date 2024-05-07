/// tạm dừng bản thân
if screen_pause() {exit;};

//menh lenh
var _wallCollisions = true;
var _getDamage = true ;
var _autoSprites = true;

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
	
	if image_alpha >= 1
	{
///đặt hướng kết thúc tốc độ phù hợp
	spd=emergeSpd;
	dir=270
	}
	
	///chuyển sang trạng thái rượt đuổi sau khi da ra khoi hang sinh quai vat
	if !place_meeting(x,y,oWall)
	{
		state=0;
	}
	break;
	
	
	
	
	
	
	/// trang thai ruot duoi
	case 0:
	
	if instance_exists(obj_player)
{
dir = point_direction(x,y,obj_player.x,obj_player.y);
}
////đặt đúng tốc độ
spd = chaseSpd;

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
	if instance_exists(obj_player)
{
dir = point_direction(x,y,obj_player.x,obj_player.y);
}
///đặt đúng tốc độ
spd=0;
///bat dau hoat anh tan cong
_autoSprites =false;
if sprite_index !=sDragonMonsterAtack
{
	sprite_index = sDragonMonsterAtack;
	image_index =0;
}
if sprite_index==sDragonMonsterAtack && floor(image_index)== attackFrame && !attackTriggered
{
	attackTriggered=true;
	var _attackDist =300;
	var _attackSep =50 ;
	var _attackNum= round(_attackDist/_attackSep);
	var _attackDirSep = 0;
	
	for(var ds=0;ds<1;ds++)
	{
	var _dir =dir -_attackDirSep+_attackDirSep*ds;
	for(var i=1;i< _attackNum;i++)
	{
		
		var _xx = x+lengthdir_x(_attackSep*i,_dir);
		var _yy = y+lengthdir_y(_attackSep*i,_dir);
		if !position_meeting(_xx,_yy,oWall)
		{
	var _inst =	instance_create_depth(_xx,_yy,depth,oSkillDragon);
	_inst.delay =i;
	}else{
		i+=99;
		//ds +=1;
	}
  }
	}
}
///giu hoat anh
if sprite_index == sDragonMonsterAtack && floor(image_index) == holdFrame
{
	holdTimer --;
	if holdTimer > 0
	{
		image_index=holdFrame;
	}
}

#endregion
break;
}
//đặt lại biến tấn công
if sprite_index != sDragonMonsterAtack{attackTriggered=false;holdTimer=holdTime};


//đuổi theo người chơi


///nhận được tốc độ
xspd = lengthdir_x(spd  ,dir);
yspd = lengthdir_y(spd ,dir);

/// chuyen doi mat theo huong nhin
if  _autoSprites
{	
face = round(dir/90);
if face == 4 {face =0;};
sprite_index=sprite[face];
mask_index =sprite[3];
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
