/// @description Tải dữ liệu của tiền
function loadMoneyData() {
    var file_name = "money_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập

    if (file_exists(file_name)) {
        var money_buffer = buffer_load(file_name);

        // Đọc số tiền hiện tại
        global.money = buffer_read(money_buffer, buffer_s32);

        // Xóa buffer sau khi tải
        buffer_delete(money_buffer);
    } else {
        global.money = 0; // Nếu không có file, khởi tạo số tiền là 0
    }
}
