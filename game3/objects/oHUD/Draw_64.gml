/// @description Insert description here
// You can write your code in this editor
if (room == Room4){
var _ammoX = 80; // Tọa độ x để vẽ số đạn
var _ammoY = 170; // Tọa độ y để vẽ số đạn

draw_text_transformed(_ammoX, _ammoY, string(global.PlayerAmmo[obj_player.selectedWeapon]), 2.5, 2.5, 0);
}

// Vẽ tiền ở góc phải của GUI
var money_icon_x = display_get_gui_width() - 150; // Tọa độ x để vẽ biểu tượng tiền
var money_icon_y = 40; // Tọa độ y để vẽ biểu tượng tiền
var money_text_x = money_icon_x + 40; // Tọa độ x để vẽ số tiền (bên cạnh biểu tượng)
var money_text_y = money_icon_y; // Tọa độ y để vẽ số tiền

// Vẽ sprite tiền với animation
draw_sprite(spr_money_icon, -1, money_icon_x, money_icon_y);
image_speed = 0.2;
// Thiết lập font và vẽ số tiền với kích thước lớn hơn
draw_set_font(fnt_large); // Đảm bảo bạn đã tạo font 'fnt_large' trước
draw_text(money_text_x, money_text_y, string(global.money));