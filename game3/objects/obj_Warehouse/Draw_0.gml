/// @description Insert description here
// You can write your code in this editor


if Parent == "Player"{
// Lấy các giá trị của chế độ xem hiện tại từ camera
var vx = camera_get_view_x(view_camera[view_current]);
var vw = camera_get_view_width(view_camera[view_current]);
var vy = camera_get_view_y(view_camera[view_current]);
var vh = camera_get_view_height(view_camera[view_current]);

 
// Tính toán tọa độ x cho đối tượng
x = (vx + vw ) -600;
y = (vy + vh) - 30;



}

// Vẽ đối tượng
draw_self();
