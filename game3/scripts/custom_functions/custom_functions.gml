



function draw_my_weapon(){
///draw the weapon
///lấy vũ khí ra khỏi người chơi là cơ thể
var _xOffset = lengthdir_x(	weaponOffsetDist, aimDir);
var _yOffset = lengthdir_y( weaponOffsetDist, aimDir);
///lật vũ khí lên bên phải
var _weaponYscl = 1;
if aimDir > 90 && aimDir < 270
{
_weaponYscl	= -1 ;
}
draw_sprite_ext(weapon.sprite,0,x+_xOffset	,centerY+_yOffset,1,_weaponYscl,aimDir,c_white,image_alpha);
}



	
	///vfx
	function screen_pause()
{
	if instance_exists(oScreenPause)
  {
	image_speed = 0;
	path_end();
	return true ;
  }else{
	image_speed = 1;
	return false;
	
  }
}
	function create_screen_pause(_time=3)
	{
		with( instance_create_depth(0,0,0,oScreenPauseTimed))
		{
			timer=_time;
		}
		
	}
	function screen_shake(_amount=4)
	{
		with(oCamera)
		{
			xShakeAmount=_amount;
			yShakeAmount=_amount;
		}
	}
	
	
	function create_animated_vfx(_sprite,_x,_y,_depth,_rot=0)
	{
		with(instance_create_depth(_x,_y,_depth,oAnimatedVFX))
		{
			sprite_index = _sprite;
			image_angle =_rot;
		}
	}
	
	
	

	///tính toán thiệt hại
	///sự kiện tạo thiệt hại
	function get_damaged_create(_hp = 10 , _iframes=false)
	{
	 maxHp=_hp;
     hp = _hp ;
	 ///get the iframes
	 if _iframes == true
	 {
		 iframeTimer =0;
		 iframesNumber=90;
	 }
	 
	  

/////tạo danh sách thiệt hại
if _iframes == false
{
damageList = ds_list_create();
}
	}
	
	
	///sự kiện giải phóng thiệt hại
	function get_damaged_leanup()
	{
		
	
		///KHONG cần nếu chúng tôi đang sử dụng iframe
		
		///xóa cấu trúc dữ liệu danh sách thiệt hại để giải phóng bộ nhớ
    ds_list_destroy(damageList);
	}
	
	
	///cac buoc thiet hai
function get_damaged( _damageObj ,_iframes = false)
{
	///thoát đặc biệt cho iframeTime
	if _iframes == true && iframeTimer > 0
	{
		
		iframeTimer--;
		
		if iframeTimer mod 5 == 0
	{
		if image_alpha ==1
		{
			image_alpha=0;
		}else{
			image_alpha=1;
		}
	}
	 //clamp hp
       hp = clamp(hp,0,maxHp);
	////thoát bằng cách trả về hàm sai
	return false;
		
	}
	///đảm bảo iframe nháy  dừng lại
	if _iframes = true
	{
	image_alpha=1;
	}

	////nhận thiệt hại
	var _hitConfirm=false;
if place_meeting(x,y,_damageObj)||(_damageObj != oDamageParent&&place_meeting(x,y,oDamageAll))
{

	
	///	lấy danh sách các trường hợp thiệt hại
	    ////tạo danh sách ds và sao chép thể hiện vào danh sách
	
     var _instList = ds_list_create();
	 
	 instance_place_list(x,y,_damageObj,_instList,false);
	 if _damageObj != oDamageParent
	 {
	 instance_place_list(x,y,oDamageAll,_instList,false);
	 }
	 
	 ///lấy kích thước của danh sách ra
	 var _List_size=ds_list_size( _instList);
	 ///lặp qua danh sách
	
	 for(var i=0 ; i < _List_size ; i++ )
	 {
		 
        ///lấy đối tượng thiệt hại từ danh sách
		 var _inst = ds_list_find_value (_instList , i );
		 
		 
	
		 
		 
		 
		 
		 
		 
		 
		 ////kiểm tra xem phiên bản này đã có trong danh sách thiệt hại chưa
if  _iframes=true ||  ds_list_find_index(damageList,_inst)==-1
{
	///thêm trường hợp thiệt hại mới vào danh sách thiệt hại
	if _iframes == false
	{
		
	ds_list_add(damageList, _inst);
	
	}
	
		 ///nhận thiệt hại từ trường hợp cụ thể
	  hp-= _inst.damage;
	  _hitConfirm = true;
	///cho biết mức độ thiệt hại mà nó đã tác động
      _inst.hitConfirm = true;
	  
	  instance_create_depth(x,y,depth-50,oBoomBulet);
	  
          }
		 	 
	 }
	 ///đặt iframe nếu bị tấn công
	 
	 if _iframes == true && _hitConfirm
	 {
		 iframeTimer = iframesNumber;
	 }
	 
	 ///giải phóng bộ nhớ bằng cách hủy danh sách ds
	 
	ds_list_destroy( _instList );
	
	


}
///xóa danh sách thiệt hại của đối tượng không tồn tại nữa hoặc không chạm vào nữa


if _iframes == false {
var _damageListSize = ds_list_size(damageList);
for( var i = 0 ; i < _damageListSize; i++)
{
///nếu không chạm vào trường hợp thiệt hại nữa, hãy xóa nó khỏi danh sách và đặt vòng lặp trở lại 1 vị trí
   var _inst = ds_list_find_value(damageList,i);
   if !instance_exists(_inst)|| !place_meeting(x,y,_inst)
   {
	   ds_list_delete(damageList , i);
	   i--;
	   _damageListSize--;
   }
  }		
 }
 //clamp hp
 hp = clamp(hp,0,maxHp);
 ///tra ve hit confirm gia tri hop le 
 return _hitConfirm;
 
}



