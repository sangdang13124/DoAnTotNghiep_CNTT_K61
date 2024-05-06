if Parent == "Player"{
// Lấy các giá trị của chế độ xem hiện tại từ camera
var vx = camera_get_view_x(view_camera[view_current]);
var vw = camera_get_view_width(view_camera[view_current]);
var vy = camera_get_view_y(view_camera[view_current]);
var vh = camera_get_view_height(view_camera[view_current]);

// Tính toán tọa độ x cho đối tượng
x =(CELLSIZE /2)) + (vx + vw / 2) - (Cells / 2)*CELLSIZE)+CELLSIZE) *Number;
y = (vy + vh) -100;
}
// Vẽ đối tượng
draw_self();


if Object != noone{
	
draw_sprite(object_get_sprite(Object),0,x,y);
draw_text(x+2,y+2,Count);
}