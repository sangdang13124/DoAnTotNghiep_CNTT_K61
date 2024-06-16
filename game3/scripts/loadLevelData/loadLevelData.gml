/// @description Tải dữ liệu của level
function loadLevelData() {
    var file_name = "level_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập

    if (file_exists(file_name)) {
        var level_buffer = buffer_load(file_name);

        // Đọc level, xp và next_level_xp
        global.level = buffer_read(level_buffer, buffer_s32);
        global.xp = buffer_read(level_buffer, buffer_s32);
        global.next_level_xp = buffer_read(level_buffer, buffer_s32);

        // Xóa buffer sau khi tải
        buffer_delete(level_buffer);
    } else {
        global.level = 1; // Khởi tạo level là 1 nếu không có file
        global.xp = 0; // Khởi tạo xp là 0
        global.next_level_xp = 6; // Khởi tạo next_level_xp là 6
    }
}
