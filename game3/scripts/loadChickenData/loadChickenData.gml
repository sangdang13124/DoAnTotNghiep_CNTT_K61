function loadChickenData() {
    var file_name = "chicken_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập
    var chicken_buffer = buffer_load(file_name);

    // Kiểm tra nếu buffer tồn tại
    if (chicken_buffer != -1) {
        // Đọc số lượng con gà
        var num_chickens = buffer_read(chicken_buffer, buffer_s32);
        
        // Đọc trạng thái và vị trí của từng con gà và tạo mới chúng
        for (var i = 0; i < num_chickens; i++) {
            var chicken_x = buffer_read(chicken_buffer, buffer_f32);
            var chicken_y = buffer_read(chicken_buffer, buffer_f32);
            var chicken_state = buffer_read(chicken_buffer, buffer_string);
            var new_chicken = instance_create_layer(chicken_x, chicken_y, "Instances", obj_chicken);
            new_chicken.state = chicken_state;
        }
        
        // Xóa buffer sau khi sử dụng
        buffer_delete(chicken_buffer);
    }
}
