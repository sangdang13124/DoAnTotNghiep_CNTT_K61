function loadCowData() {
    var file_name = "cow_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập
    var cow_buffer = buffer_load(file_name);

    // Kiểm tra nếu buffer tồn tại
    if (cow_buffer != -1) {
        // Đọc số lượng con bò
        var num_cows = buffer_read(cow_buffer, buffer_s32);
        
        // Đọc trạng thái và vị trí của từng con bò và tạo mới chúng
        for (var i = 0; i < num_cows; i++) {
            var cow_x = buffer_read(cow_buffer, buffer_f32);
            var cow_y = buffer_read(cow_buffer, buffer_f32);
            var cow_state = buffer_read(cow_buffer, buffer_string);
            var new_cow = instance_create_layer(cow_x, cow_y, "Instances", obj_cow);
            new_cow.state = cow_state;
        }
        
        // Xóa buffer sau khi sử dụng
        buffer_delete(cow_buffer);
    }
}