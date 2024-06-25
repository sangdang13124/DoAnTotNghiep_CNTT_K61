function loadBeeData() {
    var file_name = "bee_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập
    var bee_buffer = buffer_load(file_name);

    // Kiểm tra nếu buffer tồn tại
    if (bee_buffer != -1) {
        // Đọc số lượng con ong
        var num_bees = buffer_read(bee_buffer, buffer_s32);
        
        // Đọc trạng thái và vị trí của từng con ong và tạo mới chúng
        for (var i = 0; i < num_bees; i++) {
            var bee_x = buffer_read(bee_buffer, buffer_f32);
            var bee_y = buffer_read(bee_buffer, buffer_f32);
            var bee_state = buffer_read(bee_buffer, buffer_string);
            var new_bee = instance_create_layer(bee_x, bee_y, "Instances", obj_bee);
            new_bee.state = bee_state;
        }
        
        // Xóa buffer sau khi sử dụng
        buffer_delete(bee_buffer);
    }
}
