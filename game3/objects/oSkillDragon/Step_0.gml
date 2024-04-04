if delay  > 0
{
	delay--;
	image_index=0;
	exit;
}


if floor(image_index) == attackFrame && !instance_exists(damageObj)

{
	damageObj =instance_create_depth(x,y,depth,oDamagePlayer);
	with(damageObj)
	{
		mask_index = other.sprite_index;
		damage=other.damage;
		visible=false;
	}
}
if floor(image_index) == holdFrame
{
	holdTime--;
	if holdTime >0
	{
	image_index = holdFrame;
	}
	
}

if floor(image_index) > holdFrame && instance_exists(damageObj){instance_destroy(damageObj);};
