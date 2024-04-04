
///vẽ tự lật ngay lập tức

draw_sprite_ext(sprite_index,image_index, x , y ,face, image_yscale,image_angle,image_blend,image_alpha);


/// ve hp
var _healthPercent = hp/maxHp;
var _hpImage = _healthPercent *(sprite_get_number(sHpenemyZbBoss)-1);
draw_sprite_ext(sHpenemyZbBoss,_hpImage,x+10,y - sprite_height-1+20,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

