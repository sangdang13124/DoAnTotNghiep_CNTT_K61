
// Trong sự kiện Mouse Leave của obj_inventory_cell
 image_xscale = 1; // Phóng to chiều rộng
image_yscale = 1; // Phóng to chiều cao
image_alpha = 1;

/// Mouse Leave Event for obj_inventory_cell


// Ẩn tooltip nếu nó tồn tại
if (instance_exists(obj_tooltip126)) {
    with (obj_tooltip126) {
        visible = false;
   }
}