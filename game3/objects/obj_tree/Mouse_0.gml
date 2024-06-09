if distance_to_object(obj_player) <= 10 {
    if obj_player.Item == obj_axe {
        if obj_player.image_index >= 0 && obj_player.image_index <= 5 {
            health1 -= 1;
            if health1 <= 0 {
                // Phá hủy cây và tạo hiệu ứng phá hủy
                instance_destroy();
               
                instance_create_depth(x, y, 0, obj_destroy_effect); // Tạo hiệu ứng phá hủy
                 instance_create_depth(x, y, 0, obj_log); // Tạo obj_log để biểu diễn gỗ
            }
        }
    }
}
