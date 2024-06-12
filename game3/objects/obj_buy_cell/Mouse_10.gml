/// Mouse Enter Event for obj_inventory_cell

// Phóng to hình ảnh
image_xscale = 1.2;
image_yscale = 1.2;
image_alpha = 0.7;

// Tạo một biến để lưu độ sâu cao nhất
var highestDepth = -1000; // Đặt một giá trị rất lớn cho depth


        // Kiểm tra depth của tooltip
        if (!instance_exists(obj_tooltip126)) {
            var tooltip = instance_create_depth(mouse_x, mouse_y, highestDepth, obj_tooltip126);
            tooltip.sprite_index = spr_tooltip177;
            tooltip.visible = true;
        } else {
            // Nếu tooltip đã tồn tại, cập nhật vị trí và hiển thị nó
            with (obj_tooltip126) {
                x = mouse_x;
                y = mouse_y;
                sprite_index = spr_tooltip177;
                visible = true;
                depth = highestDepth; // Đặt depth cho tooltip
            }
        }
    

