/// @description Lưu dữ liệu của tiền
function saveMoneyData() {
    var file_name = "money_data_" + global.logged_in_user + ".bin"; // Sử dụng tên tệp dựa trên tên đăng nhập
    var money_buffer = buffer_create(1024, buffer_grow, 1);

    // Lưu số tiền hiện tại
    buffer_write(money_buffer, buffer_s32, global.money);

    // Lưu buffer vào file
    buffer_save(money_buffer, file_name);

    // Xóa buffer sau khi lưu
    buffer_delete(money_buffer);
}
