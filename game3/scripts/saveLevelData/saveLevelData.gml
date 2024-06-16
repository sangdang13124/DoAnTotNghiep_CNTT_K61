/// @description Lưu dữ liệu của level
function saveLevelData() {
    var file_name = "level_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập
    var level_buffer = buffer_create(1024, buffer_grow, 1);

    // Lưu level, xp và next_level_xp
    buffer_write(level_buffer, buffer_s32, global.level);
    buffer_write(level_buffer, buffer_s32, global.xp);
    buffer_write(level_buffer, buffer_s32, global.next_level_xp);

    // Lưu buffer vào file
    buffer_save(level_buffer, file_name);

    // Xóa buffer sau khi lưu
    buffer_delete(level_buffer);
}
