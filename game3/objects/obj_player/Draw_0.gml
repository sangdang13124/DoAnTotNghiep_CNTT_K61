
if room == RoomShop{
draw_self();

}



if room ==Room6 {
draw_self();

if (Item != noone && sprite_exists(ItemSprite)) {
    if (moveDir != 0) {
		

        draw_sprite_ext(ItemSprite, image_index, x+8 * sign(moveDir), y , 1 * sign(moveDir), 1, 0, c_white, 1);
    } else {
        	draw_sprite_ext(ItemSprite, image_index, x+8 , y , 1, 1, 0, c_white, 1);
//	 draw_sprite_ext(ItemSprite, image_index, x+8 * sign(moveDir), y , 1 * sign(moveDir), 1, 0, c_white, 1);
   }
}

}

if room ==Room4{
//rút vũ khí phía sau người chơi
if aimDir >=0 && aimDir<180
{
draw_my_weapon();
}

//draw the player
draw_self();
 
 
///draw the weapon
if aimDir >=180 && aimDir<360
{
draw_my_weapon();
}

///vẽ hp như một số

}

