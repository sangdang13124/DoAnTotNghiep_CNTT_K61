
///vẽ tự lật ngay lập tức

draw_sprite_ext(sprite_index,image_index, x , y ,image_xscale, image_yscale,image_angle,image_blend,image_alpha);


/// ve hp
var _healthPercent = hp/maxHp;
var _hpImage = _healthPercent *(sprite_get_number(sHpenemyDragonBoss)-1);
draw_sprite_ext(sHpenemyDragonBoss,_hpImage,x+30,y - sprite_height-1+40,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

