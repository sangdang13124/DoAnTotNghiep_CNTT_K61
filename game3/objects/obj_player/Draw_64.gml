/// @description Insert description here
// You can write your code in this editor
if(room !=rm_login && room = Room6){
var size = 0.5;
draw_sprite_part_ext(spr_health,0,0,0,Health1,sprite_get_height(spr_health),-150,300*size,size,size,c_white,1);
draw_sprite_part_ext(spr_hunger,0,0,0,Hunger,sprite_get_height(spr_hunger),-150,350*size,size,size,c_white,1);
draw_sprite_part_ext(spr_thirst,0,0,0,Thirst,sprite_get_height(spr_thirst),-150,400*size,size,size,c_white,1);
}

if(room !=rm_login && room = Room4){

var weaponX = 50; // Tọa độ x để vẽ vũ khí
var weaponY = 150; // Tọa độ y để vẽ vũ khí
var weaponScale = 4; // Tỉ lệ tỷ lệ kích thước của vũ khí

// Vẽ sprite của vũ khí vào GUI với kích thước được tăng
draw_sprite_ext(weapon.sprite, 0, weaponX, weaponY, weaponScale, weaponScale, 0, c_white, 1);



}
