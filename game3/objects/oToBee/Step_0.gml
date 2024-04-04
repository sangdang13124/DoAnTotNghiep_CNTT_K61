get_damaged(oDamageParent);
///xem sat thuong
 var _healthPercent = 1-(hp/maxHp);
 image_index = _healthPercent*(image_number -1);


if hp<=0{
	// tao ra vu no
	var _boomInst = instance_create_depth(x+8,y+8,-3000,oBee);
	with(_boomInst)
	{
		image_xscale=1;
        image_yscale=1;
	}
	//dung man hinh 1 khoang thoi gian nho
create_screen_pause();
///rung man hinh
screen_shake(8);
	
	//bien mat

instance_destroy()
}
