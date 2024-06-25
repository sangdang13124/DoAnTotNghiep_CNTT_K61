function saveBeeData(bees) {
    var file_name = "bee_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập
    var bee_buffer = buffer_create(1024, buffer_grow, 1);

    // Lưu số lượng con ong
    buffer_write(bee_buffer, buffer_s32, array_length(bees));

    // Lưu trạng thái và vị trí của từng con ong
    for (var i = 0; i < array_length(bees); i++) {
        var bee = bees[i];
        buffer_write(bee_buffer, buffer_f32, bee.x);
        buffer_write(bee_buffer, buffer_f32, bee.y);
        buffer_write(bee_buffer, buffer_string, bee.state);
    }

    // Lưu buffer vào file
    buffer_save(bee_buffer, file_name);

    // Xóa buffer sau khi lưu
    buffer_delete(bee_buffer);
}
