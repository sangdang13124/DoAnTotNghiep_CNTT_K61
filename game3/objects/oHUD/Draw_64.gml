/// @description Insert description here
// You can write your code in this editor
if (room == Room4){
var _ammoX = 80; // Tọa độ x để vẽ số đạn
var _ammoY = 170; // Tọa độ y để vẽ số đạn

draw_text_transformed(_ammoX, _ammoY, string(global.PlayerAmmo[obj_player.selectedWeapon]), 2.5, 2.5, 0);

  
//var _ammoX1 = 100; // Tọa độ x để vẽ số đạn
//var _ammoY1 = 200; // Tọa độ y để vẽ số đạn

//draw_text_transformed(_ammoX1, _ammoY1, string(global.PlayerAmmo[obj_player.selectedWeapon]), 0.5, 0.5, 0);
}

// Vẽ tiền ở góc phải của GUI
var money_icon_x = display_get_gui_width() - 200; // Tọa độ x để vẽ biểu tượng tiền
var money_icon_y = 40; // Tọa độ y để vẽ biểu tượng tiền
var money_text_x = money_icon_x + 25; // Tọa độ x để vẽ số tiền (bên cạnh biểu tượng)
var money_text_y = money_icon_y; // Tọa độ y để vẽ số tiền

// Vẽ sprite tiền với animation
draw_sprite(spr_money_icon, -1, money_icon_x, money_icon_y);
image_speed = 0.2;
// Thiết lập font và vẽ số tiền với kích thước lớn hơn
draw_set_font(fnt_large); // Đảm bảo bạn đã tạo font 'fnt_large' trước
draw_text(money_text_x, money_text_y, string(global.money));



// Vẽ sprite của level
var sprite_x = 400; // Tọa độ x để vẽ sprite
var sprite_y = 70;  // Tọa độ y để vẽ sprite

draw_sprite(spr_level, 0, sprite_x, sprite_y);

// Tính toán tọa độ trung tâm của sprite
var spr_width = sprite_get_width(spr_level);
var spr_height = sprite_get_height(spr_level);

var text_x = sprite_x + spr_width / 2;
var text_y = sprite_y + spr_height / 2;

// Vẽ số level vào giữa sprite
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(text_x, text_y, string(global.level));

// Reset lại căn chỉnh văn bản nếu cần
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Vẽ XP và cấp độ
var xp_text_x = 500; // Tọa độ x để vẽ XP
var xp_text_y = 100; // Tọa độ y để vẽ XP

draw_text(xp_text_x, xp_text_y, "XP: " + string(global.xp) + "/" + string(global.next_level_xp));



