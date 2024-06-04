
if room == Room3{
draw_self();

}

if room == Room5{
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

//if room == Room4 || room == Room3 || room == Room5{
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


//}
var weaponX = 100; // Tọa độ x để vẽ vũ khí
var weaponY = 100; // Tọa độ y để vẽ vũ khí

// Vẽ sprite của vũ khí tại vị trí cố định trên màn hình
draw_sprite(weapon.sprite, 0, weaponX, weaponY);
