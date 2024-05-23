/// @description Insert description here
// You can write your code in this editor
// Xử lý nhập liệu
if (keyboard_lastkey == vk_backspace) {
    // Xóa ký tự cuối cùng
    if (input_mode == "username" && string_length(username) > 0) {
        username = string_delete(username, string_length(username), 1);
    } else if (input_mode == "password" && string_length(password) > 0) {
        password = string_delete(password, string_length(password), 1);
    }
} else if (keyboard_lastkey == vk_tab) {
    // Chuyển đổi chế độ nhập liệu
    if (input_mode == "username") {
        input_mode = "password";
    } else {
        input_mode = "username";
    }
} else if (keyboard_lastkey == vk_enter) {
    // Kiểm tra nếu đã nhập đủ cả tên người dùng và mật khẩu
    if (string_length(username) > 0 && string_length(password) > 0) {
        // Xử lý đăng nhập hoặc đăng ký
        if (login_mode) {
            check_login();
        } else {
            register_account();
        }
    } else {
        message = "Please enter both username and password!";
    }
} else {
    // Thêm ký tự vào chuỗi, đảm bảo đó là ký tự hợp lệ
    var keychar = chr(keyboard_lastkey);
    if (input_mode == "username") {
        if (string_length(username) < 20) { // Giới hạn độ dài của username
            username += keychar;
        }
    } else if (input_mode == "password") {
        if (string_length(password) < 20) { // Giới hạn độ dài của password
            password += keychar;
        }
    }
}
