///dung man hinh
if screen_pause() {exit;};

if createDamageObjects == false
{
 damageInst = instance_create_depth(x,y,oDamageAll);
with(damageInst)
{
	damage = other.damage;
mask_index=other.sprite_index;
image_xscale=other.image_xscale;
image_yscale=other.image_yscale;

}

createDamageObjects= true;	


}
///loại bỏ các đối tượng thiệt hại sau khi chúng được thực hiện
if floor(image_index)>=1
{
	//xoa
	if instance_exists(damageInst)
	{
		instance_destroy(damageInst);
		
	}
	
}