/// @description Lưu dữ liệu của gà
/// @param chickens - danh sách các con gà
function saveChickenData(chickens) {
    var file_name = "chicken_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập
    var chicken_buffer = buffer_create(1024, buffer_grow, 1);

    // Lưu số lượng con gà
    buffer_write(chicken_buffer, buffer_s32, array_length(chickens));

    // Lưu trạng thái và vị trí của từng con gà
    for (var i = 0; i < array_length(chickens); i++) {
        var chicken = chickens[i];
        buffer_write(chicken_buffer, buffer_f32, chicken.x);
        buffer_write(chicken_buffer, buffer_f32, chicken.y);
        buffer_write(chicken_buffer, buffer_string, chicken.state);
    }

    // Lưu buffer vào file
    buffer_save(chicken_buffer, file_name);

    // Xóa buffer sau khi lưu
    buffer_delete(chicken_buffer);
}
