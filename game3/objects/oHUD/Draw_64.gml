/// @description Insert description here
// You can write your code in this editor
if (room != Room6){
var _ammoX = 80; // Tọa độ x để vẽ số đạn
var _ammoY = 170; // Tọa độ y để vẽ số đạn

draw_text_transformed(_ammoX, _ammoY, string(global.PlayerAmmo[obj_player.selectedWeapon]), 2.5, 2.5, 0);
}

// Sự kiện Draw GUI của obj_controller:
draw_text(30, 300, "Money: " + string(global.money));