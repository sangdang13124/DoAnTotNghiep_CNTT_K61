/// @description Insert description here
// You can write your code in this editor
// Sự kiện Draw của obj_bee

draw_self();

// Vẽ biểu tượng trạng thái
if (state == "full") {
    draw_sprite(spr_heart_full, 0, x, y - sprite_height / 2 - 10);
} else if (state == "hungry") {
    draw_sprite(spr_heart_broken, 0, x, y - sprite_height / 2 - 10);
} else if (state == "honey") {
    draw_sprite(spr_heart_milk, 0, x, y - sprite_height / 2 - 10);
}
