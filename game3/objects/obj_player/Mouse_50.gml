
if Item != noone{
	if alarm[11] == -1{
		switch(Item){
			case obj_axe:
			ItemPrevSprite=ItemSprite;
			ItemSprite = spr_axe_attack;
			image_index = 0;
			alarm[11] = sprite_get_number(spr_axe_attack)*4;
			break;
		}
	}
}

		