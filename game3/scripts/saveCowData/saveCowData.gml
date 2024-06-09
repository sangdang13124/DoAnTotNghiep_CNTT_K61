/// @description Lưu dữ liệu của bò
/// @param cows - danh sách các con bò
function saveCowData(cows) {
    var file_name = "cow_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập
    var cow_buffer = buffer_create(1024, buffer_grow, 1);

    // Lưu số lượng con bò
    buffer_write(cow_buffer, buffer_s32, array_length(cows));

    // Lưu trạng thái và vị trí của từng con bò
    for (var i = 0; i < array_length(cows); i++) {
        var cow = cows[i];
        buffer_write(cow_buffer, buffer_f32, cow.x);
        buffer_write(cow_buffer, buffer_f32, cow.y);
        buffer_write(cow_buffer, buffer_string, cow.state);
    }

    // Lưu buffer vào file
    buffer_save(cow_buffer, file_name);

    // Xóa buffer sau khi lưu
    buffer_delete(cow_buffer);
}