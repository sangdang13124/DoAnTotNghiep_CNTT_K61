/// @description Insert description here
// You can write your code in this editor
// Trong sự kiện Mouse Leave của obj_inventory_cell
 image_xscale = 1; // Phóng to chiều rộng
image_yscale = 1; // Phóng to chiều cao
image_alpha = 1;

/// Mouse Leave Event for obj_inventory_cell


// Ẩn tooltip nếu nó tồn tại
if (instance_exists(obj_tooltip)) {
    with (obj_tooltip) {
        visible = false;
   }
}