if Parent == "Player"{
// Lấy các giá trị của chế độ xem hiện tại từ camera
var vx = camera_get_view_x(view_camera[view_current]);
var vw = camera_get_view_width(view_camera[view_current]);
var vy = camera_get_view_y(view_camera[view_current]);
var vh = camera_get_view_height(view_camera[view_current]);

 
// Tính toán tọa độ x cho đối tượng
x =(CELLSIZE /2)) + (vx + vw / 2) - (Cells / 2)*CELLSIZE)+CELLSIZE)*Number ;
y = (vy + vh) - CELLSIZE);


if (IsLastCell) {
        draw_set_color(c_red); // Thay đổi màu fill thành màu đỏ


draw_sprite(spr_use, 0, x, y);

    }
// Vẽ đối tượng

}


draw_self();

/// Draw Event for obj_inventory_cell
//... (code vẽ hiện tại)

if (Object != noone) {
    draw_set_font(fo_text);
    draw_sprite(object_get_sprite(Object), 0, x, y);
    draw_text(x + 5, y + 3, Count);
    
    // Nếu Object là obj_tomato và tooltip tồn tại, cập nhật vị trí tooltip
    if (Object == obj_tomato && instance_exists(obj_tooltip)) {
        with (obj_tooltip) {
            x = mouse_x;
            y = mouse_y;
        }
    }
}

