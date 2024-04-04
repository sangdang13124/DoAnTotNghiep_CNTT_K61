z += zspd;
zspd-= grav;
depth = -y;
//no tung
 if z <=0
 {
	 var _boomInst = instance_create_depth(x+8,y+8,-3000,oBigBoom);
	with(_boomInst)
	{
		image_xscale=1.5;
        image_yscale=1.5;
	}
	 instance_destroy();
	 
 }
 
